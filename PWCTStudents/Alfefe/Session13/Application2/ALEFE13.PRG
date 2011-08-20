*---------------------------------------------------------------------------*
* Time : 15:32:52    Date : 08/19/2011
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


Resistance R_ALEFE13_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALEFE13_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 384 ;
HEIGHT 292 ;
ICON "PWCTICON" ;
TITLE " —ÕÌ»" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 99 ,84 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 162 ,135 BUTTONEX btn1;
CAPTION "«· —ÕÌ»";
ON CLICK Hai()  ;
WIDTH 99 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 105 ,296 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
DEFINE MAIN MENU of win1
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action close()
END POPUP
END MENU
DEFINE STATUSBAR ;
PARENT win1 

STATUSITEM "Ã«Â“"

DATE

CLOCK;
AMPM 

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc Hai
Hai := win1.text1.Value
Hai = ALLTRIM ( Hai )
ss := "„—Õ»« Ì«:"+" "+Hai
MyOut := MSGBOX(ss,"«· —ÕÌ»")
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALEFE13
START DOUBLES
Return
*-------------------------------------------------------------------*
