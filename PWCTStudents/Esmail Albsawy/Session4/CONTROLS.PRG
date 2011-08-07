*---------------------------------------------------------------------------*
* Time : 22:21:40    Date : 08/06/2011
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


Resistance R_CONTROLS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONTROLS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· Õﬂ„ »«·√œÊ«  »Ê«”ÿ… ¬œ«… √Œ—Ï" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 49 ,91 LABEL lbl1 ;
VALUE "„‰ ÂÊ „»—„Ã  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ ø " ;
WIDTH 308 ;
HEIGHT 63 ;
FONT "Simplified Arabic" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 134 ,108 LABEL lbl2 ;
VALUE "" ;
WIDTH 273 ;
HEIGHT 63 ;
FONT "Simplified Arabic" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 223 ,126 BUTTONEX btn1;
CAPTION "√÷€ÿ Â‰« ·„⁄—›… «·ÃÊ«»...";
ON CLICK MyCaption()  ;
WIDTH 217 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc MyCaption()
win1.lbl2.Value := "ÂÊ «·„Â‰œ” «·„’—Ì „Õ„Êœ ›«Ìœ"
Return Nil


End Of Resistance

INIT PROCEDURE Init_CONTROLS
START DOUBLES
Return
*-------------------------------------------------------------------*
