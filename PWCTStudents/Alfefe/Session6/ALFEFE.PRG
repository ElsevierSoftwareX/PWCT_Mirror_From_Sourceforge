*---------------------------------------------------------------------------*
* Time : 20:50:15    Date : 08/13/2011
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


Resistance R_ALFEFE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFEFE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 872 ;
HEIGHT 484 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM " Ê‰”" Action MSGINFO( "Text Here" )    DISABLED
MENUITEM "„’—" Action MSGINFO( "Text Here" )    DISABLED
POPUP "·Ì»Ì«"
POPUP "»Ì  ... »Ì "
POPUP "œ«— ... œ«—"
POPUP "“‰ﬁ… ... “‰ﬁ…"
POPUP "«·Ï «·«„«„ ... «·Ï «·«„«„"
MENUITEM "Œ—ÊÃ" Action Exit()   CHECKED
END POPUP
END POPUP
END POPUP
END POPUP
END POPUP
END POPUP
POPUP " Õ—Ì—"
END POPUP
POPUP "⁄—÷"
END POPUP
POPUP "«⁄œ«œ« "
END POPUP
POPUP " ⁄·Ì„« "
END POPUP
POPUP "„”«⁄œ…"
END POPUP
END MENU
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc Exit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALFEFE
START DOUBLES
Return
*-------------------------------------------------------------------*
