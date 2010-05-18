#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:41:58    Date : 01/15/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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
FONT "Arial" SIZE 12 ;
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
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,11)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 )",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Proc",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Animation",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","N = win1.lbl1.Col",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := N-5",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Wcol = win1.Col",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TW = win1.lbl1.Width",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","WW = win1.Width",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( N<=Wcol-TW )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := WW",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Amove",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Enabled := True",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Astop",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Enabled := False",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Stext",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := win1.text1.value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
Return
*-------------------------------------------------------------------*
