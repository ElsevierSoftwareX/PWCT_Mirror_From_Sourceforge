*---------------------------------------------------------------------------*
* Time : 06:24:07    Date : 08/01/2011
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


Resistance R_WELCOME_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WELCOME_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 418 ;
ICON "PWCTICON" ;
TITLE "welcome" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 202 ,24 LABEL lbl1 ;
VALUE "user name" ;
WIDTH 154 ;
HEIGHT 33 ;
FONT "Cooper Black" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 304 ,180 BUTTONEX btn1;
CAPTION "Done";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK mydone()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Cooper Black" SIZE 18 ;
TOOLTIP ""
@ 203 ,190 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Cooper Black" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 32 ,57 IMAGE image1;
PICTURE "WELCOME.JPG";
STRETCH ;
WIDTH 339 HEIGHT 138
DEFINE STATUSBAR 

CLOCK

DATE

END STATUSBAR

DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action myclose()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc mydone
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := "Hello "  +  mytext  + " we wish to spend great time with us"
MyOut := MSGBOX(mytext,"Hello")
Return Nil


End Of Resistance

INIT PROCEDURE Init_WELCOME
START DOUBLES
Return
*-------------------------------------------------------------------*
