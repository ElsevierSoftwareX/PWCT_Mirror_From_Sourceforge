*---------------------------------------------------------------------------*
* Time : 00:52:14    Date : 04/07/2012
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


Resistance R_TEST1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 451 ;
HEIGHT 253 ;
ICON "PWCTICON" ;
TITLE "Hello  Mahmoud Kibreet" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 9 ,10 LABEL lbl1 ;
VALUE "Hello Kibreet" ;
WIDTH 120 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 77 ,272 BUTTONEX btn1;
CAPTION "Say Hello";
ON CLICK MSGINFO( "Hello" ) ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 113 ,271 BUTTONEX btn2;
CAPTION "Close Window";
ON CLICK closeapplication()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello  Mahmoud Kibreet'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Hello Kibreet'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Hello'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Hello'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
Return
*-------------------------------------------------------------------*
