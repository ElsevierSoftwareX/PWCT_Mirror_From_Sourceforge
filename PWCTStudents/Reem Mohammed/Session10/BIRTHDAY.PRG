*---------------------------------------------------------------------------*
* Time : 09:43:40    Date : 07/30/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
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


Resistance R_BIRTHDAY_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_BIRTHDAY_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 497 ;
HEIGHT 511 ;
ICON "PWCTICON" ;
TITLE "birthday" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 224 ,65 LABEL lbl1 ;
VALUE "Pleas Enter Your Name" ;
WIDTH 356 ;
HEIGHT 40 ;
FONT "Gill Sans Ultra Bold" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 407 ,374 BUTTONEX btn1;
CAPTION "Done";
ON CLICK reem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Maiandra GD" SIZE 18 ;
TOOLTIP ""
@ 275 ,123 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 219 ;
FONT "Bauhaus 93" SIZE 20 ;
BACKCOLOR {255,225,240} ;
FONTCOLOR {0,0,0} 

@ 15 ,12 IMAGE image1;
PICTURE "HAPPY-BIRTHDAY.JPG";
STRETCH ;
WIDTH 449 HEIGHT 202
DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action myclose()
END POPUP
END MENU
@ 327 ,154 LABEL lbl2 ;
VALUE "Your age" ;
WIDTH 157 ;
HEIGHT 44 ;
FONT "Gill Sans Ultra Bold" SIZE 20  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 373 ,123 TEXTBOX text2;
HEIGHT 41 ;
WIDTH 221 ;
FONT "Elephant" SIZE 18 ;
BACKCOLOR {255,221,238} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc reem
user := win1.text1.Value
age := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Pleas Enter Your Name!!","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 508 ;
HEIGHT 421 ;
ICON "PWCTICON" ;
TITLE "Happy Birth Day "+ user ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 103 ,123 IMAGE image1;
PICTURE "HELLO.JPG";
STRETCH ;
WIDTH 304 HEIGHT 219
@ 6 ,50 LABEL lbl1 ;
VALUE "Happy Birthday " + user ;
WIDTH 430 ;
HEIGHT 69 ;
FONT "Cooper Black" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 328 ,13 LABEL lbl2 ;
VALUE "We wish a special day to you" ;
WIDTH 474 ;
HEIGHT 46 ;
FONT "Cooper Black" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
@ 51 ,73 LABEL lbl3 ;
VALUE "you are "+age + " years old" ;
WIDTH 385 ;
HEIGHT 41 ;
FONT "Cooper Black" SIZE 22  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc myclose
MyOut := MSGOKCANCEL("Do you want to close birthday Application?","exit message")
IF myOut=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_BIRTHDAY
START DOUBLES
Return
*-------------------------------------------------------------------*
