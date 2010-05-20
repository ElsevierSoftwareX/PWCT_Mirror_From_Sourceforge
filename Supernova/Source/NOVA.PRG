*---------------------------------------------------------------------------*
* Time : 12:08:41    Date : 05/15/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8


	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_NOVA_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOVA_15speed1() code
Set Procedure to "Details.PRG"
Set Procedure to "Scanner.PRG"
Set Procedure to "Syntax.PRG"
Set Procedure to "CodeGen.PRG"
Set Procedure to "Runtime.PRG"
Set Procedure to "Urgent.PRG"
Set Procedure to "GUI.PRG"
Set Procedure to "DATA.PRG"
Set Procedure to "CONTROLSTRUCTURE.PRG"
Set Procedure to "novaERR.PRG"
Public SysSwitch,WinsCount,WinShow,FilesList
Public srccodefile,srccodeline,myChar,myStack,myRealStack,myRule,mydataflag,mydatachar
Public myTokens,mySwitches,myRules,myTransform,myTransform2,myOperations,myExecutable,myCmd,myCmdRule,myData
Public ProgramCounter,myopcode,myopdata,myopproc,myoplevel,myactiveproc,myactivelevel,myopobjsmap,myopwinname,myopprocstack
Public ObjsCount,MyOpObjectName,initpara1,ObjSelArray,initpara2,initpara3
Public RT_GUI_Statusbar,RT_GUI_Menubar
Public RT_DATA,RT_LS_DATA,RT_RS_DATA
Public RT_Counters
Public RT_LoopSwitch
Public RT_LoopVars,RT_LoopCondition,RT_ActiveLoops
Public RT_PCStack
Public RT_ExprParse
Public RT_DLLNAME
Public RT_COMOBJNAME,RT_COMOBJS
Public Tokenmap,rulesmap,RULESDI,RULESDVD,RULESCAVD,RULESPVC,RULESI,myfetchopstar,myfetchopend
SysSwitch := True
WinsCount := 0
FilesList := {}
mychar := " "
myStack := ""
myRealStack := ""
myRule := "S"
myTokens := {}
myRules := {}
myOperations := {}
myExecutable := {}
mySwitches := {}
myCmd := ""
myCmdRule := ""
myData := {}
myopproc := "baseproc"
myoplevel := 0
myopcode := 0
myopdata := {}
mydataflag := false
mydatachar := "."
WinShow := True
myactiveproc := "baseproc"
myactivelevel := 0
MyOpObjsMap := {"ObjectType","InternalCodeName","UserCodeName","EventsFlag","ParentWindow"}
myopwinname := "NULL"
MyOpObjectName := "NULL"
ObjsCount := 0
initpara1 := "000"
ObjSelArray := {}
FOR x = 1 TO 14 STEP 1
AADD( ObjSelArray , "NULL")
Next
RT_GUI_Statusbar := {}
RT_GUI_Menubar := {}
RT_DATA := {}
myTransform := {}
AADD( RT_Data , {"Variable Name","Variable Value"})
RT_LS_DATA := {}
RT_RS_DATA := {}
myopprocstack := {}
RT_Counters := {}
AADD( RT_Counters , {"Name","Start","End","Step","Value"})
RT_LoopSwitch := False
RT_LoopVars := 0
RT_LoopCondition := {}
RT_ActiveLoops := {}
srccodeline := 0
srccodefile := ""
ProgramCounter := 0
RT_PCStack := {}
RT_ExprParse := {}
initpara2 := true
initpara3 := false
RT_DLLNAME := ""
RT_COMOBJNAME := 0
RT_COMOBJS := {}
myTransform2 := {}
DO RTE_Load
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 117 ;
HEIGHT 33 ;
ICON "PWCTICON" ;
TITLE "" ;
MAIN ;
NOSHOW ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

@ 6 ,28 LABEL lbl1 ;
VALUE "Loading..." ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

win1.Center ( )
Activate Window win1 nowait
set date to british
set decimals to 2
DO myvm
DO mystart
Proc mystart
CheckFile := File(sp1)
IF .not. checkfile
GetFile := GetFile ( { {"Supernova source file","*.nova"},{"Supernova compiled source file","*.star"}} , ;
" Run Supernova program " , ;
, ;
, ;
)
CheckFile := File(GetFile)
sp1 := GetFile
ENDIF
IF checkfile
DO myvm
win1.Show ( )
AADD( FilesList , SP1)
DO mydetails
DO myscanner
IF mystack == "" .and. myrule == "S" .and. mycmd == ""
DO GenStar
DO SETPROPERTY WITH "win1","row",-500
DO myRuntimeUrgent
DO myRuntime
DO RT_SetEvents
ENDIF
ELSE
MyOut := MSGBOX("Please Determine the source file *.Nova","Error")
DO myend
ENDIF
IF WinsCount > 0
SysSwitch := True
ELSE
SysSwitch := False
ENDIF
DO WHILE  SysSwitch
DO EVENTS
ENDDO
DO myend
Return Nil
Proc myend
win1.Release ( )
Return Nil
Proc myvm
Local myobject,tempvar
myobject := exename()
MYOBJECT = LOWER ( MYOBJECT )
myobject = Left(myobject,len(myobject)-4)
myobject := myobject+".star"
IF file(sp1)
tempvar = Right(alltrim(sp1),5)
tempvar = LOWER ( tempvar )
IF tempvar = ".star"
myobject := sp1
ENDIF
ENDIF
IF file(myobject)
DO loadstar WITH myobject
DO SETPROPERTY WITH "win1","row",-500
win1.Show ( )
DO myRuntimeUrgent
DO myRuntime
DO RT_SetEvents
IF WinsCount > 0
SysSwitch := True
ELSE
SysSwitch := False
ENDIF
DO WHILE  SysSwitch
DO EVENTS
ENDDO
DO myend
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_NOVA
START DOUBLES
Return
*-------------------------------------------------------------------*
