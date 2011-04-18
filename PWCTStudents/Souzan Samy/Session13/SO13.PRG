*---------------------------------------------------------------------------*
* Time : 21:39:57    Date : 04/18/2011
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


Resistance R_SO13_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SO13_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 585 ;
HEIGHT 383 ;
ICON "PWCTICON" ;
TITLE "so" ;
MAIN ;
BACKCOLOR {247,225,242} 

DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "ready"

CLOCK;
AMPM 

END STATUSBAR

@ 85 ,349 LABEL lbl1 ;
VALUE "name" ;
WIDTH 113 ;
HEIGHT 35 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 85 ,69 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 186 ,165 BUTTONEX btn1;
CAPTION "hello";
ON CLICK hello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc hello
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := " hello : " + mytext
MyOut := MSGBOX(mytext,"hello")
Return Nil


End Of Resistance

INIT PROCEDURE Init_SO13
START DOUBLES
Return
*-------------------------------------------------------------------*
