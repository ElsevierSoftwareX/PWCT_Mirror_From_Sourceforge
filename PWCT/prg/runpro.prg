*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\RUNPRO.PRG
*:
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	Mahmoud Fayed
*:	Programming without coding technology 1.8 (Smart)
*:	Free - Open Source
*:	
*:	Programming without coding technology 1.8 (Smart)
*:
*: Documented using Visual FoxPro Formatting wizard version  .05
*:******************************************************************************
*:   runpro
PARAMETERS myruncmd,cshowwindow

mypath = JUSTPATH(myruncmd)
myapppath = APPLICATION.DEFAULTFILEPATH
APPLICATION.DEFAULTFILEPATH = mypath

oprocess = CREATEOBJECT("Process")
IF TYPE("oProcess") # 'O'
	MESSAGEBOX( "Cannot create Process object.",0,"Error")
	RETURN
ENDIF

oprocess.ccommandline = myruncmd
oprocess.cshowwindow = cshowwindow

LOCAL lnret
IF !oprocess.START()
	MESSAGEBOX( oprocess.cerror,0,"Error")
ELSE
	lnret = oprocess.waitforexit(13333000)
	IF lnret # 0
		MESSAGEBOX(oprocess.cerror,0,"Error")
	ENDIF
	*	? "Wait is finished.", lnRet
	*	? "Exit code: ", oProcess.GetExitCode()
ENDIF

oprocess = NULL
SET LIBRARY TO
APPLICATION.DEFAULTFILEPATH = myapppath

RETURN


*:******************************************************************************
*:
*: Class:process  BaseClass: CUSTOM
*:
*:******************************************************************************
DEFINE CLASS PROCESS AS CUSTOM
	cerror = ""
	capplicationname = NULL
	ccommandline = NULL
	oprocessattributes = NULL
	othreadattributes = NULL
	binherithandles = .T.
	ncreationflags = 0
	oenvironment = NULL
	ccurrentdirectory = NULL
	*	oStartupInfo = NULL
	oprocessinformation = NULL
	cshowwindow = "1"

	PROCEDURE INIT
		LOCAL llret
		THIS.oprocessinformation  = CREATEOBJECT("Struct", "PROCESS_INFORMATION",;
			"HANDLE hProcess,"+ ;
			"HANDLE hThread,"+ ;
			"DWORD dwProcessId,"+ ;
			"DWORD dwThreadId")
		llret = IIF(TYPE("THIS.oProcessInformation")='O',.T.,.F.)
		RETURN llret


	PROCEDURE DESTROY
		THIS.CLOSE()

	PROCEDURE CLOSE
		DECLARE INTEGER CloseHandle IN Kernel32 INTEGER
		closehandle( THIS.oprocessinformation.hthread.VAL )
		closehandle( THIS.oprocessinformation.hprocess.VAL )
		THIS.oprocessinformation = NULL


	PROCEDURE START
		LPARAMETERS tostartupinfo
		LOCAL llret

		llret = .F.
		IF PCOUNT() = 0
			tostartupinfo = CREATEOBJECT("Struct", "STARTUPINFO",;
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
				THIS.cerror = "Cannot create structure. Unknown data type."
			ENDIF
		ENDIF

		IF TYPE("toStartupInfo") # 'O'
			IF EMPTY(THIS.cerror)
				THIS.cerror = "First parameter is not object."
			ENDIF
			RETURN llret
		ENDIF

		IF THIS.oprocessinformation.hprocess.VAL # 0
			THIS.CLOSE()
		ENDIF

		DECLARE INTEGER GetLastError IN Kernel32
		DECLARE INTEGER CreateProcess IN Kernel32 ;
			STRING @, STRING @, STRING @, STRING @, INTEGER, INTEGER, STRING @, STRING @, STRING @, STRING @

		LOCAL lnret, lcstart, lcinfo
		lcstart = tostartupinfo.getbuffer()
		lcinfo = THIS.oprocessinformation.getbuffer()

		lnret = createprocess(	THIS.capplicationname, ;
			THIS.ccommandline, ;
			THIS.oprocessattributes, ;
			THIS.othreadattributes, ;
			THIS.binherithandles, ;
			THIS.ncreationflags, ;
			THIS.oenvironment, ;
			THIS.ccurrentdirectory, ;
			@lcstart, ;
			@lcinfo )
		IF lnret # 0
			llret = .T.
			tostartupinfo.setbuffer(lcstart)
			THIS.oprocessinformation.setbuffer(lcinfo)
		ELSE
			THIS.cerror = ALLTRIM(STR(getlasterror()))
		ENDIF

		RETURN llret


	PROCEDURE waitforexit
		LPARAMETERS lntimeout
		LOCAL lnret
		DECLARE INTEGER GetLastError IN Kernel32
		DECLARE INTEGER WaitForSingleObject IN Kernel32 INTEGER, INTEGER
		IF PCOUNT() = 0
			lntimeout = 0xffff
		ENDIF
		lnret = waitforsingleobject(THIS.oprocessinformation.hprocess.VAL,lntimeout)
		IF lnret = 0xffffffff
			lnret = getlasterror()
		ENDIF

		RETURN lnret


	PROCEDURE istimeout
		LPARAMETERS tnretcode
		RETURN (tnretcode = 258)


	PROCEDURE isstill_running
		LPARAMETERS tnexitcode
		RETURN (tnexitcode = 259)


	PROCEDURE getexitcode
		LOCAL lnret
		lnret = -1
		DECLARE INTEGER GetExitCodeProcess IN Kernel32 INTEGER, INTEGER @
		getexitcodeprocess(THIS.oprocessinformation.hprocess.VAL, @lnret)

		RETURN lnret


	PROCEDURE kill
		LOCAL lnret
		DECLARE INTEGER GetLastError IN Kernel32
		DECLARE INTEGER TerminateProcess IN Kernel32 INTEGER, INTEGER

		lnret = terminateprocess(THIS.oprocessinformation.hprocess.VAL, 1)
		IF lnret = 0
			THIS.cerror = ALLTRIM(STR(getlasterror()))
		ENDIF

		RETURN	(lnret # 0)

	PROCEDURE closemainwindow
		LOCAL lnret, lhwnd
		llret = .F.
		DECLARE INTEGER SendMessage IN User32 INTEGER, INTEGER, INTEGER, INTEGER
		lhwnd = THIS.findprocesswindow(THIS.oprocessinformation.dwprocessid.VAL)
		IF lhwnd # 0
			sendmessage(lhwnd, 0x0010,0,0)
			llret = .T.
		ENDIF
		RETURN llret

	PROCEDURE findprocesswindow
		LPARAMETERS thprocess
		LOCAL lnprocessid, lhwnd, llfound, lnret
		lnprocessid = 0
		lnret = 0
		DECLARE INTEGER GetWindow IN User32 INTEGER, INTEGER
		DECLARE INTEGER GetWindowThreadProcessId IN User32 INTEGER, INTEGER @
		DECLARE INTEGER GetTopWindow IN User32 INTEGER

		llfound = .F.
		lhwnd = gettopwindow(0)
		DO WHILE lhwnd != 0
			getwindowthreadprocessid(lhwnd, @lnprocessid)
			IF lnprocessid = thprocess
				llfound = .T.
				lnret = lhwnd
				EXIT
			ENDIF
			lhwnd = getwindow(lhwnd, 2) && next window
		ENDDO

		RETURN lnret

ENDDEFINE


*:******************************************************************************
*:
*: Class:struct  BaseClass: CUSTOM
*:
*:******************************************************************************
DEFINE CLASS STRUCT AS CUSTOM
	clistobjects = ""

	PROCEDURE INIT
		LPARAMETERS tcname, tcstruct
		LOCAL lcbuffrow, loparser, lorowparser
		LOCAL lctype, lcfield, llret, lcclasstype, lnsize

		llret = .T.
		THIS.NAME = tcname
		lcbuffrow = ""
		lctype = ""
		lcfield = ""

		loparser = CREATEOBJECT("Parser",tcstruct,",")

		DO WHILE loparser.GETNEXT(@lcbuffrow)
			lorowparser = CREATEOBJECT("Parser",lcbuffrow, " ")
			lorowparser.GETNEXT(@lctype)
			lorowparser.GETNEXT(@lcfield)
			lorowparser = NULL
			THIS.clistobjects = THIS.clistobjects + lcfield + " "
			DO CASE
			CASE INLIST(lctype, "LPCTSTR", "LPTSTR", "LPSECURITY_ATTRIBUTES", "LPVOID", "LPSTARTUPINFO",;
					"LPPROCESS_INFORMATION", "LPBYTE")
				lcclasstype = "p"
				lnsize = 4

			CASE INLIST(lctype, "DWORD", "HANDLE")
				lcclasstype = "u"
				lnsize = 4

			CASE INLIST(lctype, "WORD")
				lcclasstype = "u"
				lnsize = 2

			OTHERWISE
				llret = .F.
				EXIT
			ENDCASE
			THIS.ADDOBJECT(lcfield, "struct_element", lcclasstype, lnsize)
		ENDDO
		loparser = NULL

		LOCAL i
		lnsize = 0
		FOR i = 1 TO THIS.CONTROLCOUNT
			lnsize = lnsize + THIS.CONTROLS(i).getsize()
		ENDFOR
		THIS.WIDTH = lnsize

		RETURN llret


	PROCEDURE DESTROY
		LOCAL loparser, lcname
		lcname=""
		loparser = CREATEOBJECT("Parser",THIS.clistobjects, " ")
		DO WHILE loparser.GETNEXT(@lcname)
			IF !EMPTY(lcname)
				THIS.REMOVEOBJECT(lcname)
			ENDIF
		ENDDO


	PROCEDURE getbuffer
		LOCAL i, lcret
		lcret = ""
		FOR i = 1 TO THIS.CONTROLCOUNT
			lcret = lcret + THIS.CONTROLS(i).getbuffer()
		ENDFOR

		RETURN lcret


	PROCEDURE setbuffer
		LPARAMETERS tcbuffer
		LOCAL i
		FOR i = 1 TO THIS.CONTROLCOUNT
			THIS.CONTROLS(i).setbuffer(tcbuffer)
			tcbuffer = SUBSTR(tcbuffer, THIS.CONTROLS(i).WIDTH+1)
		ENDFOR


ENDDEFINE


*:******************************************************************************
*:
*: Class:parser  BaseClass: CUSTOM
*:
*:******************************************************************************
DEFINE CLASS parser AS CUSTOM
	del = " "
	offset = 1

	PROCEDURE INIT
		LPARAMETERS tcbuffer, tcdel
		IF PCOUNT() > 1
			THIS.del = tcdel
		ENDIF
		THIS.TAG = tcbuffer

	PROCEDURE GETNEXT
		LPARAMETERS tcdata
		LOCAL llret, lnnext, lcbuff
		llret = .F.
		IF LEN(THIS.TAG) > THIS.offset
			llret = .T.
			lcbuff = SUBSTR(THIS.TAG,THIS.offset)
			lnnext = AT(THIS.del,lcbuff)
			IF lnnext > 0
				THIS.offset = THIS.offset + lnnext
				tcdata = LEFT(lcbuff, lnnext -1)
			ELSE
				THIS.offset = LEN(THIS.TAG)
				tcdata = lcbuff
			ENDIF
		ELSE
			tcdata = ""
		ENDIF
		RETURN llret

	PROCEDURE getfirst
		LPARAMETERS tcdata
		THIS.offset = 1
		RETURN THIS.GETNEXT(@tcdata)

ENDDEFINE



*:******************************************************************************
*:
*: Class:struct_element  BaseClass: CUSTOM
*:
*:******************************************************************************
DEFINE CLASS struct_element AS CUSTOM
	VAL = 0
	pointer = 0
	WIDTH = 0
	ctype = ""

	PROCEDURE INIT
		LPARAMETERS tctype, tnsize
		THIS.ctype=tctype
		THIS.WIDTH = tnsize

	PROCEDURE allocateelement
		LPARAMETERS tnsize
		DECLARE INTEGER GlobalAlloc IN Kernel32 INTEGER, INTEGER
		DECLARE RtlZeroMemory IN Kernel32 STRING @, INTEGER
		THIS.pointer = globalalloc(0, tnsize)
		IF THIS.pointer # 0
			rtlzeromemory(THIS.pointer, tnsize)
		ENDIF

	PROCEDURE freeelement
		IF THIS.pointer # 0
			DECLARE INTEGER GlobalFree IN Kernel32 INTEGER
			=globalfree(THIS.pointer)
			THIS.pointer=0
		ENDIF

	PROCEDURE DESTROY
		THIS.freeelement()

	PROCEDURE getsize
		LOCAL lnret
		lnret = 0
		IF THIS.pointer # 0
			DECLARE INTEGER GlobalSize IN Kernel32 INTEGER
			lnret = globalsize(THIS.pointer)
		ELSE
			lnret = THIS.WIDTH
		ENDIF
		RETURN lnret



	PROCEDURE getbuffer()
		LOCAL lcret, i, lntmp
		lcret = ""
		DO CASE
		CASE INLIST(THIS.ctype, "p", "u")
			lntmp = THIS.VAL
			FOR i = 1 TO THIS.WIDTH
				lcret = lcret +CHR(INT(lntmp/(256^(THIS.WIDTH-1))))
				lntmp = MOD(lntmp,(256^(THIS.WIDTH-1)))
			ENDFOR

		CASE INLIST(THIS.ctype, "s")
			lcret = BINTOC(THIS.VAL, ALLTRIM(STR(THIS.WIDTH))+"SR")

		OTHERWISE
			lcret = REPLICATE(CHR(0),THIS.WIDTH)
		ENDCASE

		RETURN lcret


	PROCEDURE setbuffer
		LPARAMETERS lcbuffer
		LOCAL llret, i, lntmp
		llret = .T.
		DO CASE
			*		CASE THIS.cType = "p"
			*			THIS.Pointer = THIS.NumFromStr(lcBuffer,THIS.Width)

		CASE THIS.ctype = "u"
			THIS.VAL = THIS.numfromstr(lcbuffer,THIS.WIDTH)

		CASE INLIST(THIS.ctype, "s")
			THIS.VAL = CTOBIN(LEFT(lcbuffer,THIS.WIDTH), ALLTRIM(STR(THIS.WIDTH))+"SR")

		OTHERWISE
			llret = .F.
		ENDCASE

		RETURN llret


	PROCEDURE numfromstr
		LPARAMETERS tcval, tnsize
		LOCAL lnret, i
		lnret = 0
		FOR i = 1 TO tnsize
			lnret = lnret + 256^(i-1)*ASC(SUBSTR(tcval,i))
		ENDFOR

		RETURN lnret


	PROCEDURE datafrompointer
		LPARAMETERS tnpointer, tnsize
		LOCAL lcret
		lcret = REPLICATE(CHR(0), tnsize)
		DECLARE RtlCopyMemory IN Kernel32 INTEGER, STRING @, INTEGER
		rtlcopymemory(@lcret, tnpointer, tnsize)

		RETURN lcret

ENDDEFINE


