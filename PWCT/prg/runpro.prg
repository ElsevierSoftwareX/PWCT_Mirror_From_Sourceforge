PARAMETERS myruncmd,cshowwindow

mypath = JUSTPATH(myruncmd)
myapppath = application.DefaultFilePath 
application.DefaultFilePath = mypath

oProcess = CREATEOBJECT("Process")
IF TYPE("oProcess") # 'O'
	MESSAGEBOX( "Cannot create Process object.",0,"Error")
	return
ENDIF

oProcess.cCommandLine = myruncmd
oProcess.cshowwindow = cshowwindow

LOCAL lnRet
IF !oProcess.Start() 
	MESSAGEBOX( oProcess.cError,0,"Error")
ELSE
	lnRet = oProcess.WaitForExit(13333000)
	IF lnRet # 0
	MESSAGEBOX(oProcess.cError,0,"Error")
	ENDIF
*	? "Wait is finished.", lnRet
*	? "Exit code: ", oProcess.GetExitCode()
ENDIF

oProcess = NULL
SET LIBRARY TO
application.DefaultFilePath = myapppath

RETURN


DEFINE CLASS Process AS Custom
	cError = ""
	cApplicationName = NULL
	cCommandLine = NULL
	oProcessAttributes = NULL
	oThreadAttributes = NULL
	bInheritHandles = .T.
	nCreationFlags = 0
	oEnvironment = NULL
	cCurrentDirectory = NULL
*	oStartupInfo = NULL
	oProcessInformation = NULL
  cShowWindow = "1"
 
	PROCEDURE Init
	LOCAL llRet
	THIS.oProcessInformation  = CREATEOBJECT("Struct", "PROCESS_INFORMATION",;
														"HANDLE hProcess,"+ ;
														"HANDLE hThread,"+ ;
														"DWORD dwProcessId,"+ ;
														"DWORD dwThreadId")
	llRet = IIF(TYPE("THIS.oProcessInformation")='O',.T.,.F.)
	RETURN llRet


	PROCEDURE Destroy
	THIS.Close()
	
	PROCEDURE Close
	DECLARE INTEGER CloseHandle IN Kernel32 INTEGER
	CloseHandle( THIS.oProcessInformation.hThread.Val )
	CloseHandle( THIS.oProcessInformation.hProcess.Val )
	THIS.oProcessInformation = NULL
	
	
	PROCEDURE Start
	LPARAMETERS toStartupInfo
	LOCAL llRet
	
	llRet = .F.
	IF PCOUNT() = 0
		toStartupInfo = CREATEOBJECT("Struct", "STARTUPINFO",;
												"DWORD cb,"+ ;
												"LPTSTR lpReserved,"+ ;
												"LPTSTR lpDesktop,"+ ;
												"LPTSTR lpTitle,"+ ;
												"DWORD dwX,"+ ;
												"DWORD dwY,"+ ;
												"DWORD dwXSize,"+ ;
												"DWORD dwYSize,"+ ;
												"DWORD dwXCountChars,"+ ;
												"DWORD dwYCountChars,"+ ;
												"DWORD dwFillAttribute,"+ ;
												"DWORD dwFlags,"+ ;
												"WORD wShowWindow,"+ ;
												"WORD cbReserved2,"+ ;
												"LPBYTE lpReserved2,"+ ;
												"HANDLE hStdInput,"+ ;
												"HANDLE hStdOutput,"+ ;
												"HANDLE hStdError")
		IF TYPE("toStartupInfo") # 'O'
			THIS.cError = "Cannot create structure. Unknown data type."
		ENDIF
	ENDIF
	
	IF TYPE("toStartupInfo") # 'O'
		IF EMPTY(THIS.cError)
			THIS.cError = "First parameter is not object."
		ENDIF
		RETURN llRet
	ENDIF
	
	IF THIS.oProcessInformation.hProcess.Val # 0
		THIS.Close()
	ENDIF
	
	DECLARE INTEGER GetLastError IN Kernel32
	DECLARE INTEGER CreateProcess IN Kernel32 ;
	STRING @, STRING @, STRING @, STRING @, INTEGER, INTEGER, STRING @, STRING @, STRING @, STRING @
	
	LOCAL lnRet, lcStart, lcInfo
	lcStart = toStartupInfo.GetBuffer()
	lcInfo = THIS.oProcessInformation.GetBuffer()

	lnRet = CreateProcess(	THIS.cApplicationName, ;
							THIS.cCommandLine, ;
							THIS.oProcessAttributes, ;
							THIS.oThreadAttributes, ;
							THIS.bInheritHandles, ;
							THIS.nCreationFlags, ;
							THIS.oEnvironment, ;
							THIS.cCurrentDirectory, ;
							@lcStart, ;
							@lcInfo )
	IF lnRet # 0
		llRet = .T.
		toStartupInfo.SetBuffer(lcStart)
		THIS.oProcessInformation.SetBuffer(lcInfo)
	ELSE
		THIS.cError = ALLTRIM(STR(GetLastError()))
	ENDIF
	
	RETURN llRet
	
	
	PROCEDURE WaitForExit
	LPARAMETERS lnTimeout
	LOCAL lnRet
	DECLARE INTEGER GetLastError IN Kernel32
	DECLARE INTEGER WaitForSingleObject IN Kernel32 INTEGER, INTEGER
	IF PCOUNT() = 0
		lnTimeout = 0xFFFF
	ENDIF
	lnRet = WaitForSingleObject(THIS.oProcessInformation.hProcess.Val,lnTimeout)
	IF lnRet = 0xFFFFFFFF
		lnRet = GetLastError()
	ENDIF

	RETURN lnRet

	
	PROCEDURE IsTimeout
	LPARAMETERS tnRetCode
	RETURN (tnRetCode = 258)


	PROCEDURE IsStill_Running
	LPARAMETERS tnExitCode
	RETURN (tnExitCode = 259)


	PROCEDURE GetExitCode
	LOCAL lnRet
	lnRet = -1
	DECLARE INTEGER GetExitCodeProcess IN Kernel32 INTEGER, INTEGER @
	GetExitCodeProcess(THIS.oProcessInformation.hProcess.Val, @lnRet)
	
	RETURN lnRet


	PROCEDURE Kill
	LOCAL lnRet
	DECLARE INTEGER GetLastError IN Kernel32
	DECLARE INTEGER TerminateProcess IN Kernel32 INTEGER, INTEGER
	
	lnRet = TerminateProcess(THIS.oProcessInformation.hProcess.Val, 1)
	IF lnRet = 0
		THIS.cError = ALLTRIM(STR(GetLastError()))
	ENDIF
	
	RETURN	(lnRet # 0)

	PROCEDURE CloseMainWindow
	LOCAL lnRet, lhWnd
	llRet = .F.
	DECLARE INTEGER SendMessage IN User32 INTEGER, INTEGER, INTEGER, INTEGER
	lhWnd = THIS.FindProcessWindow(THIS.oProcessInformation.dwProcessId.Val)
	IF lhWnd # 0
		SendMessage(lhWnd, 0x0010,0,0)
		llRet = .T.
	ENDIF
	RETURN llRet

	PROCEDURE FindProcessWindow
	LPARAMETERS thProcess
	LOCAL lnProcessId, lhWnd, llFound, lnRet
	lnProcessId = 0
	lnRet = 0
	DECLARE INTEGER GetWindow IN User32 INTEGER, INTEGER
	DECLARE INTEGER GetWindowThreadProcessId IN User32 INTEGER, INTEGER @
	DECLARE INTEGER GetTopWindow IN User32 INTEGER

	llFound = .F.
	lhWnd = GetTopWindow(0)
	DO WHILE lhWnd != 0
		GetWindowThreadProcessId(lhWnd, @lnProcessId)
		IF lnProcessId = thProcess
			llFound = .T.
			lnRet = lhWnd
			EXIT
		ENDIF
		lhWnd = GetWindow(lhWnd, 2) && next window
	ENDDO
	
	RETURN lnRet

ENDDEFINE


DEFINE CLASS Struct AS custom 
	cListObjects = ""

	PROCEDURE Init
	LPARAMETERS tcName, tcStruct
	LOCAL lcBuffRow, loParser, loRowParser
	LOCAL lcType, lcField, llRet, lcClassType, lnSize
	
	llRet = .T.
	THIS.Name = tcName
	lcBuffRow = ""
	lcType = ""
	lcField = ""
	
	loParser = CREATEOBJECT("Parser",tcStruct,",")
	
	DO WHILE loParser.GetNext(@lcBuffRow)
		loRowParser = CREATEOBJECT("Parser",lcBuffRow, " ")
		loRowParser.GetNext(@lcType)
		loRowParser.GetNext(@lcField)
		loRowParser = NULL
		THIS.cListObjects = THIS.cListObjects + lcField + " "
		DO CASE
			CASE INLIST(lcType, "LPCTSTR", "LPTSTR", "LPSECURITY_ATTRIBUTES", "LPVOID", "LPSTARTUPINFO",;
				"LPPROCESS_INFORMATION", "LPBYTE")
				lcClassType = "p"
				lnSize = 4
				
			CASE INLIST(lcType, "DWORD", "HANDLE")
				lcClassType = "u"
				lnSize = 4
				
			CASE INLIST(lcType, "WORD")
				lcClassType = "u"
				lnSize = 2
				
			OTHERWISE
				llRet = .F.
				EXIT
		ENDCASE
		THIS.AddObject(lcField, "struct_element", lcClassType, lnSize)
	ENDDO 
	loParser = NULL
	
	LOCAL i
	lnSize = 0
	FOR i = 1 TO THIS.ControlCount
		lnSize = lnSize + THIS.Controls(i).GetSize()
	ENDFOR
	THIS.Width = lnSize
	
	RETURN llRet
	

	PROCEDURE Destroy
	LOCAL loParser, lcName
	lcName=""
	loParser = CREATEOBJECT("Parser",THIS.cListObjects, " ")
	DO WHILE loParser.GetNext(@lcName)
		IF !EMPTY(lcName)
			THIS.RemoveObject(lcName)
		ENDIF
	ENDDO	
 
 
	PROCEDURE GetBuffer
 	LOCAL i, lcRet
	lcRet = ""
	FOR i = 1 TO THIS.ControlCount
				lcRet = lcRet + THIS.Controls(i).GetBuffer()
	ENDFOR

	RETURN lcRet
	

	PROCEDURE SetBuffer
	LPARAMETERS tcBuffer
 	LOCAL i
	FOR i = 1 TO THIS.ControlCount
		THIS.Controls(i).SetBuffer(tcBuffer)
		tcBuffer = SUBSTR(tcBuffer, THIS.Controls(i).Width+1)
	ENDFOR


ENDDEFINE


DEFINE CLASS Parser AS Custom
	Del = " "
	Offset = 1
	
	PROCEDURE Init
	LPARAMETERS tcBuffer, tcDel
	IF PCOUNT() > 1
		THIS.Del = tcDel
	ENDIF
	THIS.Tag = tcBuffer
	 
	PROCEDURE GetNext
	LPARAMETERS tcData
	LOCAL llRet, lnNext, lcBuff
	llRet = .F.
	IF LEN(THIS.Tag) > THIS.Offset
		llRet = .T.
		lcBuff = SUBSTR(THIS.Tag,THIS.Offset)
		lnNext = AT(THIS.Del,lcBuff)
		IF lnNext > 0
			THIS.Offset = THIS.Offset + lnNext
			tcData = LEFT(lcBuff, lnNext -1)
		ELSE		
			THIS.Offset = LEN(THIS.Tag)
			tcData = lcBuff
		ENDIF
	ELSE
		tcData = ""
	ENDIF
	RETURN llRet
	
	PROCEDURE GetFirst
	LPARAMETERS tcData
	THIS.Offset = 1
	RETURN THIS.GetNext(@tcData)
	
ENDDEFINE


 
DEFINE CLASS struct_element AS custom
	Val = 0
	Pointer = 0
	Width = 0
	cType = ""
	
	PROCEDURE Init
	LPARAMETERS tcType, tnSize
	THIS.cType=tcType
	THIS.Width = tnSize
	
	PROCEDURE AllocateElement
	LPARAMETERS tnSize
	DECLARE INTEGER GlobalAlloc IN Kernel32 INTEGER, INTEGER
	DECLARE RtlZeroMemory IN Kernel32 STRING @, INTEGER
	THIS.Pointer = GlobalAlloc(0, tnSize)
	IF THIS.Pointer # 0
		RtlZeroMemory(THIS.Pointer, tnSize)
	ENDIF
	
	PROCEDURE FreeElement
	IF THIS.Pointer # 0
		DECLARE INTEGER GlobalFree IN Kernel32 INTEGER
		=GlobalFree(THIS.Pointer)
		THIS.Pointer=0
	ENDIF
	
	PROCEDURE Destroy
	THIS.FreeElement()
	
	PROCEDURE GetSize
	LOCAL lnRet
	lnRet = 0
	IF THIS.Pointer # 0
		DECLARE INTEGER GlobalSize IN Kernel32 INTEGER
		lnRet = GlobalSize(THIS.Pointer)
	ELSE
		lnRet = THIS.Width
	ENDIF
	RETURN lnRet
	
*!*		PROCEDURE SetVal
*!*		LPARAMETERS tcVal
*!*		DECLARE RtlMoveMemory IN Kernel32 INTEGER, STRING @, INTEGER
*!*		IF THIS.Pointer # 0
*!*			RtlMoveMemory(THIS.Pointer, @tcVal, LEN(tcVal))
*!*		ELSE
*!*			RtlMoveMemory(THIS.Val, @tcVal, THIS.Width)
*!*		ENDIF
*!*	*	THIS.Val = tcVal

*!*		PROCEDURE GetVal
*!*		LOCAL lcVal, lnSize
*!*		IF THIS.Pointer # 0
*!*			DECLARE RtlMoveMemory IN Kernel32 INTEGER, STRING @, INTEGER
*!*			lnSize = THIS.GetSize()
*!*			lcVal=REPLICATE(CHR(0),lnSize)
*!*			RtlMoveMemory(@tcVal, THIS.Pointer, lnSize)
*!*			THIS.Val = tcVal
*!*		ENDIF
*!*		RETURN THIS.Val

	PROCEDURE GetBuffer()
	LOCAL lcRet, i, lnTmp
	lcRet = ""
	DO CASE
		CASE INLIST(THIS.cType, "p", "u")
			lnTmp = THIS.Val
			FOR i = 1 TO THIS.Width
				lcRet = lcRet +CHR(INT(lnTmp/(256^(THIS.Width-1))))
				lnTmp = MOD(lnTmp,(256^(THIS.Width-1)))
			ENDFOR
			
		CASE INLIST(THIS.cType, "s")
			lcRet = BINTOC(THIS.Val, ALLTRIM(STR(THIS.Width))+"SR")
			
		OTHERWISE
			lcRet = REPLICATE(CHR(0),THIS.Width)
	ENDCASE
	
	RETURN lcRet


	PROCEDURE SetBuffer
	LPARAMETERS lcBuffer
	LOCAL llRet, i, lnTmp
	llRet = .T.
	DO CASE
*		CASE THIS.cType = "p"
*			THIS.Pointer = THIS.NumFromStr(lcBuffer,THIS.Width)
			
		CASE THIS.cType = "u"
			THIS.Val = THIS.NumFromStr(lcBuffer,THIS.Width)
			
		CASE INLIST(THIS.cType, "s")
			THIS.Val = CTOBIN(LEFT(lcBuffer,THIS.Width), ALLTRIM(STR(THIS.Width))+"SR")
			
		OTHERWISE
			llRet = .F.
	ENDCASE
	
	RETURN llRet


	PROCEDURE NumFromStr
	LPARAMETERS tcVal, tnSize
	LOCAL lnRet, i
	lnRet = 0
	FOR i = 1 TO tnSize
		lnRet = lnRet + 256^(i-1)*ASC(SUBSTR(tcVal,i))
	ENDFOR
	
	RETURN lnRet


	PROCEDURE DataFromPointer
	LPARAMETERS tnPointer, tnSize
	LOCAL lcRet
	lcRet = REPLICATE(CHR(0), tnSize)
	DECLARE RtlCopyMemory IN Kernel32 INTEGER, STRING @, INTEGER
	RtlCopyMemory(@lcRet, tnPointer, tnSize)
	
	RETURN lcRet
	
ENDDEFINE
 
