*---------------------------------------------------------------------------*
* Time : 19:14:10    Date : 10/19/2011
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


Resistance R_HIDE_GAME_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HIDE_GAME_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "play with me" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,4 LABEL lbl1 ;
VALUE "So you think you can play with me dude !!!" ;
WIDTH 476 ;
HEIGHT 46 ;
FONT "Britannic Bold" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 316 ,158 BUTTONEX btn1;
CAPTION "you cant catch me";
ON CLICK hid1()  ;
WIDTH 183 HEIGHT 31 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 72 ,247 BUTTONEX btn2;
CAPTION "I am not here";
ON CLICK hid2()  ;
WIDTH 165 HEIGHT 34 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 43 ,6 IMAGE image1;
PICTURE "RMOM.JPG";
STRETCH ;
WIDTH 226 HEIGHT 196
END WINDOW

win1.btn2.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc hid1
win1.btn1.Hide ( )
win1.btn2.Show ( )
Return Nil
Proc hid2
win1.btn2.Hide ( )
win1.btn1.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HIDE_GAME
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'play with me'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'So you think you can play with me dude !!!'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'you cant catch me'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hid1()",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'I am not here'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hid2()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'RMOM.JPG'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hid1",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hid2",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
Return
*-------------------------------------------------------------------*
