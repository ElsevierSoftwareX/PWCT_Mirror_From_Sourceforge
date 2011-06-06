*---------------------------------------------------------------------------*
* Time : 22:40:11    Date : 05/30/2011
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


Resistance R_LESSON13_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON13_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 344 ;
HEIGHT 242 ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· «·œŒÊ·" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,202,202} 

@ 70 ,255 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 77 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 68 ,12 TEXTBOX txt1;
HEIGHT 25 ;
WIDTH 220 ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 50 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 127 ,117 BUTTONEX btn1;
CAPTION "œŒÊ·";
FONTCOLOR {0,0,255};
ON CLICK Logon()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action MSGINFO( Close() )
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

DATE

CLOCK

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc Close
win1.Release ( )
Return Nil
Proc Logon
Msg := win1.txt1.Value
Msg = ALLTRIM ( Msg )
Msg := "«·”·«„ ⁄·Ìﬂ„ Ê—Õ„… «··Â Ê»—ﬂ« Â Ì«: " + Msg
MyOut := MSGBOX(Msg,"«· —ÕÌ» »‹ : " + Msg)
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON13
START DOUBLES
Return
*-------------------------------------------------------------------*
