*---------------------------------------------------------------------------*
* Time : 06:19:54    Date : 10/22/2011
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
WIDTH 686 ;
HEIGHT 227 ;
ICON "PWCTICON" ;
TITLE "Timer to Animation by Sameh Kamel" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
DEFINE TIMER Timer1 INTERVAL 30 ;
Action Animation()
@ 98 ,686 LABEL lbl1 ;
VALUE "PWCT - Mahmoud Fayed" ;
WIDTH 320 ;
HEIGHT 35 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 18 ,10 BUTTONEX btn1;
CAPTION "Move";
ON CLICK Amove()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 18 ,120 BUTTONEX btn2;
CAPTION "Stop";
ON CLICK Astop()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 18 ,564 BUTTONEX btn3;
CAPTION "Exit";
ON CLICK Exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 159 ,10 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 540 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 100 ;
FONTCOLOR {0,0,0} 

@ 159 ,564 BUTTONEX btn4;
CAPTION "Set";
ON CLICK Stext()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Animation
N := win1.lbl1.Col
win1.lbl1.Col := N-5
Wcol := win1.Col
TW := win1.lbl1.Width
WW := win1.Width
IF N<=Wcol-TW
win1.lbl1.Col := WW
ENDIF
Return Nil
Proc Amove
win1.Timer1.Enabled := True
Return Nil
Proc Astop
win1.Timer1.Enabled := False
Return Nil
Proc Exit
win1.Release ( )
Return Nil
Proc Stext
win1.lbl1.Value := win1.text1.value
Return Nil


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
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Amove",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Stop'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Astop",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Exit'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Exit",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Set'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Stext",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Animation",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","N = win1.lbl1.Col",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := N-5",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Wcol = win1.Col",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TW = win1.lbl1.Width",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","WW = win1.Width",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( N<=Wcol-TW )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := WW",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Amove",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Enabled := True",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Astop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Enabled := False",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Stext",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := win1.text1.value",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
Return
*-------------------------------------------------------------------*
