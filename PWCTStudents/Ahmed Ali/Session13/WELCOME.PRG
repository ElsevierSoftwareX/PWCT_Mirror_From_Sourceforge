*---------------------------------------------------------------------------*
* Time : 19:26:29    Date : 10/24/2011
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
WIDTH 481 ;
HEIGHT 279 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
MAIN ;
NOSIZE ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“ ·· ‘€Ì·"

END STATUSBAR

@ 79 ,123 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,64,64} 

@ 79 ,348 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,64,64}
@ 147 ,198 BUTTONEX btn1;
CAPTION "«· —ÕÌ»";
ON CLICK hello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc hello
hello := win1.text1.Value
hello = ALLTRIM ( hello )
hello := "√Â·« Ê ”Â·« Ì«:"+ hello
MyOut := MSGBOX(hello,"«· —ÕÌ»")
Return Nil


End Of Resistance

INIT PROCEDURE Init_WELCOME
START DOUBLES
Return
*-------------------------------------------------------------------*
