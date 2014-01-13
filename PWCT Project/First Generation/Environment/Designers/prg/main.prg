*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\MAIN.PRG
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
*:	Programming without coding technology 1.9 (Art)
*:	Free - Open Source
*:	
*:	Programming without coding technology 1.9 (Art)
*:
*: Documented using Visual FoxPro Formatting wizard version  .05
*:******************************************************************************
*:   main
*:   myquit
PARAMETERS pmyfile
LOCAL cExtCheck

PUBLIC myfiletoopen
myfiletoopen = ""

PUBLIC cIDFFileOpenNow
cIDFFileOpenNow = ""

PUBLIC cTRFFileOpenNow
cTRFFileOpenNow = ""


PUBLIC cISFFileOpenNow
cISFFileOpenNow = ""


IF PCOUNT() = 1

  pmyfile = LOWER(ALLTRIM(pmyfile))
  
  IF LEN(pmyfile) > 4
  
    cExtCheck = RIGHT(pmyfile,4)
    
    DO CASE 
    
		  	CASE cExtCheck = ".ssf"
		      	 myfiletoopen = pmyfile
		      	
		    CASE cExtCheck = ".trf"
		      	 cTRFFileOpenNow = pmyfile
		      	
		    CASE cExtCheck = ".idf"
		      	 cIDFFileOpenNow = pmyfile

	    	CASE cExtCheck = ".isf"
	    	 		cISFFileOpenNow = pmyfile
      	
    ENDCASE       
    
  ENDIF  
  
ENDIF

sys_vfp_debug = .F.

IF sys_vfp_debug = .F.
	APPLICATION.DEFAULTFILEPATH = JUSTPATH(APPLICATION.SERVERNAME)
ENDIF

DECLARE INTEGER ShellExecute IN shell32.DLL ;
	INTEGER hndWin, STRING cAction, STRING cFileName, ;
	STRING cParams, STRING cDir, INTEGER nShowWin

ON SHUTDOWN myquit()

SET ESCAPE OFF
SET CENTURY ON
SET SYSMENU TO

IF sys_vfp_debug = .F.
	_SCREEN.VISIBLE = .F.
	_SCREEN.CAPTION = "Programming Without Coding Technology"
	_SCREEN.ICON = '\BMP\SUN.ICO'
	
	
ON ERROR DO errHandler WITH ;
   ERROR( ), MESSAGE( ), MESSAGE(1), PROGRAM( ), LINENO( )

	
ENDIF

IF SYSMETRIC(2) = 480 .AND. SYSMETRIC(1) = 640
	MESSAGEBOX("Sorry the application can't work in resoultion 640*480",0,"DoubleS")
	Quit
ENDIF
SET MEMOWIDTH TO 300
SET SAFETY OFF
SET CPDIALOG OFF
SET RESOURCE OFF
SET BELL OFF
SET LOGERRORS OFF
SET TYPEAHEAD TO 50
SET TALK OFF
SET ECHO OFF
SET CONSOLE OFF
IF FILE(APPLICATION.DEFAULTFILEPATH+"\langpath.txt")
	sys_lp = FILETOSTR(APPLICATION.DEFAULTFILEPATH+"\langpath.txt")
ELSE
	sys_lp = "\syslang.txt"
ENDIF
IF FILE(APPLICATION.DEFAULTFILEPATH+sys_lp)
	sys_msg = FILETOSTR(APPLICATION.DEFAULTFILEPATH+sys_lp)
ENDIF
PUBLIC fs_id,fs_td,fs_sw
fs_id = 0
fs_td = 0
fs_sw = 0
PUBLIC s_mem3
s_mem3 = .F.
ON KEY LABEL f1 s_menu = "DoubleS Framework"

PUBLIC s_lastactivewindow && used to help file-open,save,save as & close to know that active window
s_lastactivewindow = 1 && Server Units Window
PUBLIC sys_selsercaller && 1 = goal designer 2 =  form designer
sys_selsercaller = 1

PUBLIC sys_showdoubles
PUBLIC sys_soundobject
PUBLIC sys_goalstimeframe
PUBLIC sys_rpwionlygenonly && rpwi only - generate source code only
sys_rpwionlygenonly = .F.

PUBLIC sys_tmusesound
sys_tmusesound = .T.


DIMENSION sys_goalstimeframe(1,2)
sys_goalstimeframe(1,1) = "" && Goal Name
sys_goalstimeframe(1,2) = 0  && Interaction ID - The Time Machine



PUBLIC sys_filetopasstoanothervpl
sys_filetopasstoanothervpl = ""


IF FILE(APPLICATION.DEFAULTFILEPATH + "\chpath.txt")

	sys_showdoubles = .F.
	
ELSE

	sys_showdoubles = .T.

	IF EMPTY(ALLTRIM(myfiletoopen))
		myfiletoopen = JUSTPATH(APPLICATION.SERVERNAME)+"\StartApp\Start.SSF"
	ENDIF

ENDIF

PUBLIC s_tool
s_tool = ""

PUBLIC obj_avoiderrors

SET PROCEDURE TO avoiderrors.prg,stepscolors.prg,VPLCompiler.prg,intellisense.prg

obj_avoiderrors = CREATEOBJECT("GD_AvoidErrors")

obj_stepscolors = CREATEOBJECT("GD_StepsColors")

PUBLIC obj_VPLCompiler 

obj_VPLCompiler = CREATEOBJECT("GD_VPLCompiler")




PUBLIC sys_pwctversion
sys_pwctversion = "PWCT 1.9 (Art) 2014.01.13"



PUBLIC pwct_statusmsgs
DIMENSION pwct_statusmsgs(1)
pwct_statusmsgs(1) = "Start PWCT Environment"

PUBLIC aFilesData

DIMENSION aFilesData(1,2)
	
aFilesData(1,1) = "File Name"
aFilesData(1,2) = "File Content"

PUBLIC aGeneratedFiles
DIMENSION aGeneratedFiles(1)

PUBLIC obj_intellisense

obj_intellisense = CREATEOBJECT("IntellisenseClass")

obj_intellisense.start()
obj_intellisense.loadintellisensedata()

	IF PWCT_IsAdmin()
	
		IF .NOT. FILE(fixfolderpath("C:\SSBUILD\PWCT19\"+ PWCT_GETUSERNAME() + "_regcom2.off") )
		
			cComFileToReg = "Regsvr32 /s " + fixfolderpath("C:\SSBUILD\PWCT19\COMCTL32.OCX")
			RUN /N &cComFileToReg

			cComFileToReg = "Regsvr32 /s " + fixfolderpath("C:\SSBUILD\PWCT19\MSCOMCTL.OCX") && VERSION 2.0 THAT WE USES IN PWCT
			RUN /N &cComFileToReg

	
	  	tempv1_myhandle = FCREATE(fixfolderpath("C:\SSBUILD\PWCT19\") + PWCT_GETUSERNAME() + "_regcom2.off")
			FCLOSE(tempv1_myhandle)
		ENDIF
		
	ELSE
	
		IF .NOT. FILE(fixfolderpath("C:\SSBUILD\PWCT19\"+ PWCT_GETUSERNAME() + "_regcom.off") )
					MESSAGEBOX("You need to run PWCT as Admin (for one time) to register the Treeview ActiveX control",0,"Sorry")
					tempv2_myhandle = FCREATE(fixfolderpath("C:\SSBUILD\PWCT19\"+ PWCT_GETUSERNAME() + "_regcom.off"))
					FCLOSE(tempv2_myhandle)
					myquit()
		ENDIF
		
	ENDIF
	




IF .NOT. FILE(APPLICATION.DEFAULTFILEPATH + "\logo.off")
	DO FORM welcome
ELSE
	DO FORM doubles
ENDIF




READ EVENTS
ON SHUTDOWN 
CLEAR EVENTS

QUIT


FUNCTION PWCT_IsAdmin()
LOCAL loAPI, lcVal

DECLARE INTEGER IsUserAnAdmin IN Shell32
TRY
    lnResult = IsUserAnAdmin()
CATCH
    *** OLD OLD Version of Windows assume .T.
    lnResult = 1
ENDTRY
IF lnResult = 0
   RETURN .F.
ENDIF

RETURN .T.  
ENDFUNC

FUNCTION PWCT_GETUSERNAME()


DECLARE INTEGER GetUserName IN advapi32;
    STRING @lpBuffer,;
    INTEGER @nSize
    
    nSize = 250
		cBuffer = REPLICATE(Chr(0), nSize)
 
  	GetUserName(@cBuffer, @nSize)
    
    cBuffer = STRTRAN(cBuffer, CHR(0), "")

RETURN ALLTRIM(cBuffer)
*!******************************************************************************
*!
*! Procedure MYQUIT
*!
*!  Calls
*!      cpnums
*!      errormsg
*!      myquit
*!
*!******************************************************************************
FUNCTION myquit
	LOCAL mymsg

	IF fs_sw = 1
		mymsg = MESSAGEBOX("Save Changes ? ",4+4096,"Question",150000)
		IF mymsg = 6
			s_tool = "SAVE"
			serverbrain()
		ENDIF
	ENDIF
	
	ON SHUTDOWN 
  CLEAR EVENTS
	
 	QUIT

	RETURN


PROCEDURE errHandler

   PARAMETER merror, mess, mess1, mprog, mlineno
   
   syslogmsg( 'Error number: ' + LTRIM(STR(merror)) )
   syslogmsg( 'Error message: ' + mess )
   syslogmsg( 'Line of code with error: ' + mess1 )
   syslogmsg( 'Line number of error: ' + LTRIM(STR(mlineno)) )
   syslogmsg( 'Program with error: ' + mprog )
   
   writelog()
   
   DO FORM pwcterror.scx
   
 
   
ENDPROC



