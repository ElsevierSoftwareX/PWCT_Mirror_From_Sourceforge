*---------------------------------------------------------------------------*
* Time : 22:23:34    Date : 02/20/2012
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


Resistance R_INTRO_1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_INTRO_1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 322 ;
HEIGHT 257 ;
ICON "PWCTICON" ;
TITLE "Hello World  " ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 59 ,44 LABEL lbl1 ;
VALUE "Hello World " ;
WIDTH 221 ;
HEIGHT 46 ;
FONT "Arial Narrow" SIZE 22  ;
BOLD ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {137,27,65}
@ 169 ,27 BUTTONEX btn1;
CAPTION "Say Hello ";
FONTCOLOR {31,128,17};
BACKCOLOR {236,233,216};
ON CLICK MSGINFO( "Hello World" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
BOLD ;
TOOLTIP ""
@ 169 ,180 BUTTONEX btn2;
CAPTION "Close Window";
FONTCOLOR {189,15,28};
BACKCOLOR {236,233,216};
ON CLICK CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure CloseWindow()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_INTRO_1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello World  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Hello World '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Hello '",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Hello World'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window'",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseWindow",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseWindow ( Event : CLICK )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
Return
*-------------------------------------------------------------------*
