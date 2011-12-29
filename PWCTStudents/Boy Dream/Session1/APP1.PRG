*---------------------------------------------------------------------------*
* Time : 17:11:40    Date : 12/28/2011
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


Resistance R_APP1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APP1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 295 ;
ICON "PWCTICON" ;
TITLE "Hello World" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {239,239,239} 

@ 40 ,9 LABEL lbl1 ;
VALUE "Hello World" ;
WIDTH 458 ;
HEIGHT 102 ;
FONT "Arial" SIZE 26  ;
BOLD ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {255,0,0}
@ 220 ,384 BUTTONEX btn1;
CAPTION "Close";
ON CLICK MyClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MyClose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_APP1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello World'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Hello World'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MyClose",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyClose",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",35,35)
Return
*-------------------------------------------------------------------*
