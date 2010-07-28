*---------------------------------------------------------------------------*
* Time : 22:24:33    Date : 07/28/2010
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


Resistance R_HANI_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HANI_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 437 ;
HEIGHT 321 ;
ICON "PWCTICON" ;
TITLE "hani" ;
MAIN ;
BACKCOLOR {0,255,0} 

@ 18 ,69 LABEL lbl1 ;
VALUE "«·”·«„ ⁄·Ìﬂ„ Ê—Õ„… «··Â Ê»—ﬂ« Â" ;
WIDTH 322 ;
HEIGHT 44 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,0}
@ 209 ,275 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
ON CLICK haniclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 85 ,179 BUTTONEX btn2;
CAPTION "salamalikum";
ON CLICK salam()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 131 ,193 BUTTONEX btn3;
CAPTION "„—Õ»«";
ON CLICK sayhello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action haniclose()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "ready"

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc haniclose
win1.Release ( )
Return Nil
Proc salam
win1.Title := " salam"
Return Nil
Proc sayhello
win1.lbl1.Value := "hello "
Return Nil


End Of Resistance

INIT PROCEDURE Init_HANI
START DOUBLES
Return
*-------------------------------------------------------------------*
