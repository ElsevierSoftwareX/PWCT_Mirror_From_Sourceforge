PARAMETERS pmyfile
PUBLIC myfiletoopen
IF PCOUNT() = 1
myfiletoopen = pmyfile
ELSE
myfiletoopen = JUSTPATH(application.ServerName)+"\StartApp\Start.SSF"
ENDIF
application.DefaultFilePath = JUSTPATH(application.ServerName)
DECLARE INTEGER ShellExecute IN shell32.dll ; 
  INTEGER hndWin, STRING cAction, STRING cFileName, ; 
  STRING cParams, STRING cDir, INTEGER nShowWin
_screen.visible = .f.
ON SHUTDOWN quit
SET ESCAPE OFF
SET CENTURY on
SET SYSMENU to
_screen.visible = .F.
_screen.Caption = "Programming Without Coding Technology"
_SCREEN.Icon = '\BMP\SUN.ICO'
IF SYSMETRIC(2) = 480 .and. SYSMETRIC(1) = 640
MESSAGEBOX("Sorry the application can't work in resoultion 640*480",0,"DoubleS")
CANCEL
ENDIF
SET MEMOWIDTH TO 200
SET SAFETY OFF 
SET CPDIALOG OFF 
SET RESOURCE OFF 
SET BELL off
SET LOGERRORS OFF
SET TYPEAHEAD TO 50
SET TALK OFF
SET ECHO OFF 
SET CONSOLE OFF
IF FILE(APPLICATION.DefaultFilePath+"\langpath.txt")
sys_lp = FILETOSTR(APPLICATION.DefaultFilePath+"\langpath.txt")
ELSE
sys_lp = "\syslang.txt"
ENDIF
IF FILE(APPLICATION.DefaultFilePath+sys_lp)
sys_msg = FILETOSTR(APPLICATION.DefaultFilePath+sys_lp)
ENDIF
PUBLIC FS_ID,FS_TD,FS_SW
FS_ID = 0
FS_TD = 0
FS_SW = 0
PUBLIC s_mem3
s_mem3 = .f.
ON KEY label F1 S_MENU = "DoubleS Framework"

PUBLIC s_lastactivewindow && used to help file-open,save,save as & close to know that active window
			 s_lastactivewindow = 1 && Server Units Window
PUBLIC Sys_selsercaller && 1 = goal designer 2 =  form designer
Sys_selsercaller = 1

PUBLIC Sys_ShowDoubleS

IF FILE(application.DefaultFilePath + "\chpath.txt")

Sys_ShowDoubleS = .f.
ELSE

Sys_ShowDoubleS = .T.
ENDIF

IF .not. FILE(application.DefaultFilePath + "\logo.off")
DO FORM welcome 
ELSE
do form DoubleS
ENDIF

read events
CANCEL

