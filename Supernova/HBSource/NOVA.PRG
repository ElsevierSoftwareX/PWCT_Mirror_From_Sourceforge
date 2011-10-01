*---------------------------------------------------------------------------*
* Time : 06:24:11    Date : 10/01/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
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


Resistance R_NOVA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOVA_18smart1() code
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
SS_ESARES("Circuits\Main\Main\Main",53)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Details.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Scanner.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Syntax.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CodeGen.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Runtime.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Urgent.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'GUI.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DATA.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CONTROLSTRUCTURE.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'novaERR.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Public SysSwitch,WinsCount,WinShow,FilesList",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Public srccodefile,srccodeline,myChar,myStack,myRealStack,myRule,mydataflag,mydatachar",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Public myTokens,mySwitches,myRules,myTransform,myTransform2,myOperations,myExecutable,myCmd,myCmdRule,myData",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Public ProgramCounter,myopcode,myopdata,myopproc,myoplevel,myactiveproc,myactivelevel,myopobjsmap,my",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Public ObjsCount,MyOpObjectName,initpara1,ObjSelArray,initpara2,initpara3",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Public RT_GUI_Statusbar,RT_GUI_Menubar",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Public RT_DATA,RT_LS_DATA,RT_RS_DATA",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Public RT_Counters",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Public RT_LoopSwitch",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Public RT_LoopVars,RT_LoopCondition,RT_ActiveLoops",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Public RT_PCStack",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Public RT_ExprParse",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Public RT_DLLNAME",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Public RT_COMOBJNAME,RT_COMOBJS",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Public Tokenmap,rulesmap,RULESDI,RULESDVD,RULESCAVD,RULESPVC,RULESI,myfetchopstar,myfetchopend",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","SysSwitch = True",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","WinsCount = 0",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","FilesList = {}",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","mychar = ' '",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","myStack = ''",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","myRealStack = ''",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","myRule = 'S'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","myTokens = {}",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","myRules = {}",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","myOperations = {}",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","myExecutable = {}",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","mySwitches = {}",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","myCmd = ''",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","myCmdRule = ''",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","myData = {}",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","myopproc = 'baseproc'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","myoplevel = 0",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","myopcode = 0",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","myopdata = {}",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","mydataflag = false",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","mydatachar = '.'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","WinShow = True",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","myactiveproc = 'baseproc'",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","myactivelevel = 0",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","MyOpObjsMap = {'ObjectType','InternalCodeName','UserCodeName','EventsFlag','ParentWindow'}",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","myopwinname = 'NULL'",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","MyOpObjectName = 'NULL'",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","ObjsCount = 0",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","initpara1 = '000'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","ObjSelArray = {}",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 14 Step 1)",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'NULL' To Array ObjSelArray",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array RT_GUI_Statusbar",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array RT_GUI_Menubar",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array RT_DATA",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","myTransform = {}",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'Variable Name','Variable Value'} To Array RT_Data",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array RT_LS_DATA",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array RT_RS_DATA",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array myopprocstack",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array RT_Counters",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'Name','Start','End','Step','Value'} To Array RT_Counters",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","RT_LoopSwitch = False",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","RT_LoopVars = 0",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","RT_LoopCondition = {}",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","RT_ActiveLoops = {}",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","srccodeline = 0",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","srccodefile = ''",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","ProgramCounter = 0",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","RT_PCStack = {}",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","RT_ExprParse = {}",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","initpara2 = true",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","initpara3 = false",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","RT_DLLNAME = ''",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","RT_COMOBJNAME = 0",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","RT_COMOBJS = {}",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","myTransform2 = {}",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RTE_Load",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",85,88)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",89,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",99,103)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win1 No Wait",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Date Settings - Code",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Numbers Settings  Code",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myvm",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mystart",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File sp1",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. checkfile )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","sp1 = GetFile",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myvm",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Show ( )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Add item SP1 To Array FilesList",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mydetails",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myscanner",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mystack == '' .and. myrule == 'S' .and. mycmd == '' )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GenStar",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure SETPROPERTY Parameters 'win1','row',-500",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myRuntimeUrgent",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myRuntime",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RT_SetEvents",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Determine the source file *.Nova' Title 'Error' Type: Message Box",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myend",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( WinsCount > 0 )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","SysSwitch = True",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","SysSwitch = False",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( SysSwitch )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","DO Events",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myend",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myend",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myvm",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Local myobject,tempvar",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","myobject = exename()",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","MYOBJECT = CONVERT String MYOBJECT To LOWER CASE",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","myobject =  Get SubString from left, String: myobject Count: len(myobject)-4",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","myobject = myobject+'.star'",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( file(sp1) )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","tempvar =  Get SubString from right, String: alltrim(sp1) Count: 5",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","tempvar = CONVERT String tempvar To LOWER CASE",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tempvar = '.star' )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","myobject = sp1",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( file(myobject) )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure loadstar Parameters myobject",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure SETPROPERTY Parameters 'win1','row',-500",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Show ( )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myRuntimeUrgent",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myRuntime",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RT_SetEvents",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( WinsCount > 0 )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","SysSwitch = True",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","SysSwitch = False",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( SysSwitch )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","DO Events",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myend",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
Return
*-------------------------------------------------------------------*
