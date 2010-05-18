#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 19:27:37    Date : 12/12/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "Use keyboard arrows to move me";
WIDTH 280 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

_DefineHotKey ( "win1" , 0 , VK_RIGHT , {||mymove(1)} )
_DefineHotKey ( "win1" , 0 , VK_LEFT , {||mymove(2)} )
_DefineHotKey ( "win1" , 0 , VK_UP , {||mymove(3)} )
_DefineHotKey ( "win1" , 0 , VK_DOWN , {||mymove(4)} )
ACTIVATE WINDOW win1

Proc mymove( p1 )
IF p1 = 1
win1.btn1.Col := win1.btn1.col + 10
ENDIF
IF p1 = 2
win1.btn1.Col := win1.btn1.col - 10
ENDIF
IF p1 = 3
win1.btn1.Row := win1.btn1.row - 10
ENDIF
IF p1 = 4
win1.btn1.Row := win1.btn1.row + 10
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",10,11)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",12,14)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_RIGHT Mode 0 Call Procedure/Function mymove(1)",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_LEFT Mode 0 Call Procedure/Function mymove(2)",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_UP Mode 0 Call Procedure/Function mymove(3)",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_DOWN Mode 0 Call Procedure/Function mymove(4)",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymove( p1 )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Col := win1.btn1.col + 10",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Col := win1.btn1.col - 10",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 3 )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Row := win1.btn1.row - 10",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 4 )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Row := win1.btn1.row + 10",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
Return
*-------------------------------------------------------------------*
