*---------------------------------------------------------------------------*
* Time : 06:02:17    Date : 07/30/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "birthday" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 224 ,70 LABEL lbl1 ;
VALUE "Pleas Enter Your Name" ;
WIDTH 356 ;
HEIGHT 40 ;
FONT "Gill Sans Ultra Bold" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 325 ,375 BUTTONEX btn1;
CAPTION "Done";
ON CLICK reem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Maiandra GD" SIZE 18 ;
TOOLTIP ""
@ 272 ,133 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 219 ;
FONT "Bauhaus 93" SIZE 20 ;
BACKCOLOR {255,225,240} ;
FONTCOLOR {0,0,0} 

@ 1 ,24 IMAGE image1;
PICTURE "HAPPY-BIRTHDAY.JPG";
STRETCH ;
WIDTH 420 HEIGHT 216
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc reem
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("Pleas Enter Your Name!!","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 499 ;
HEIGHT 397 ;
ICON "PWCTICON" ;
TITLE "Happy Birth Day"+ user ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 120 ,270 IMAGE image1;
PICTURE "HELLO.JPG";
STRETCH ;
WIDTH 190 HEIGHT 250
@ 15 ,34 LABEL lbl1 ;
VALUE "Hppy Birthday " + user ;
WIDTH 430 ;
HEIGHT 69 ;
FONT "Cooper Black" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 64 ,5 LABEL lbl2 ;
VALUE "We wish a special day to you" ;
WIDTH 474 ;
HEIGHT 46 ;
FONT "Cooper Black" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_BIRTHDAY
START DOUBLES
Return
*-------------------------------------------------------------------*
