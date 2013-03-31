*---------------------------------------------------------------------------*
* Time : 06:04:49    Date : 10/22/2011
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


Resistance R_TIMER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TIMER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 553 ;
HEIGHT 276 ;
ICON "PWCTICON" ;
TITLE "Timer to Animation by Sameh Kamel" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
DEFINE TIMER Timer1 INTERVAL 100 ;
Action Animation()
@ 98 ,532 LABEL lbl1 ;
VALUE "PWCT - Mahmoud Fayed" ;
WIDTH 124 ;
HEIGHT 50 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 8 ,10 BUTTONEX btn1;
CAPTION "Move";
ON CLICK Amove()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 8 ,120 BUTTONEX btn2;
CAPTION "Stop";
ON CLICK Astop()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 8 ,434 BUTTONEX btn3;
CAPTION "Exit";
ON CLICK Exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Animation
N := win1.lbl1.Col
win1.lbl1.Col := N-3
Return Nil
Proc Amove
win1.Timer1.Enabled := True
Return Nil
Proc Astop
win1.Timer1.Enabled := False
Return Nil
Proc Exit
win1.Release ( )


End Of Resistance

INIT PROCEDURE Init_TIMER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Timer to Animation by Sameh Kamel'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'PWCT - Mahmoud Fayed'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Move'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Amove()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Stop'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Astop()",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Exit'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Exit()",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Animation",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","N = win1.lbl1.Col",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := N-3",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Amove",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Enabled := True",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Astop",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Enabled := False",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
Return
*-------------------------------------------------------------------*
