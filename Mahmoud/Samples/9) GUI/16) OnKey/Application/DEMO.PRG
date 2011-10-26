*---------------------------------------------------------------------------*
* Time : 20:38:25    Date : 10/21/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT DefineKeys()  ;
ICON "PWCTICON" ;
TITLE "On Key Sample" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "Use keyboard arrows to move me";
WIDTH 280 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc DefineKeys
_DefineHotKey ( "win1" , 0 , VK_RIGHT , {||mymove(1)} )
_DefineHotKey ( "win1" , 0 , VK_LEFT , {||mymove(2)} )
_DefineHotKey ( "win1" , 0 , VK_UP , {||mymove(3)} )
_DefineHotKey ( "win1" , 0 , VK_DOWN , {||mymove(4)} )
Return Nil
Proc mymove( p1 )
IF p1 = 1
win1.btn1.Col := win1.btn1.col + 10
ELSE
IF p1 = 2
win1.btn1.Col := win1.btn1.col - 10
ELSE
IF p1 = 3
win1.btn1.Row := win1.btn1.row - 10
ELSE
IF p1 = 4
win1.btn1.Row := win1.btn1.row + 10
ENDIF
ENDIF
ENDIF
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'On Key Sample'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action DefineKeys",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Use keyboard arrows to move me'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DefineKeys",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_RIGHT Mode 0 Call Procedure/Function mymove(1)",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_LEFT Mode 0 Call Procedure/Function mymove(2)",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_UP Mode 0 Call Procedure/Function mymove(3)",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_DOWN Mode 0 Call Procedure/Function mymove(4)",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymove( p1 )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Col := win1.btn1.col + 10",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Col := win1.btn1.col - 10",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 3 )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Row := win1.btn1.row - 10",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 4 )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Row := win1.btn1.row + 10",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
Return
*-------------------------------------------------------------------*
