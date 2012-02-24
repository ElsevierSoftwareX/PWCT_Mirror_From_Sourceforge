*---------------------------------------------------------------------------*
* Time : 09:32:28    Date : 02/25/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
#include "xhb.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "hello PWCT  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,128} 

@ 102 ,37 LABEL lbl1 ;
VALUE "HELLO PWCT " ;
WIDTH 396 ;
HEIGHT 76 ;
FONT "Berlin Sans FB" SIZE 48  ;
BACKCOLOR {0,0,128} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 292 ,302 BUTTONEX btn2;
CAPTION "tell hello ";
ON CLICK MSGINFO( "hello" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 293 ,59 BUTTONEX btn1;
CAPTION "CLOSE ";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'hello PWCT  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'HELLO PWCT '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'tell hello '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'hello'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'CLOSE '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*
