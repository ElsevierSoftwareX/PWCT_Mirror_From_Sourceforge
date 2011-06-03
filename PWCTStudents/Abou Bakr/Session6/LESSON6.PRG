*---------------------------------------------------------------------------*
* Time : 23:51:21    Date : 05/22/2011
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


Resistance R_LESSON6_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON6_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "‘—Ìÿ «·ﬁÊ«∆„" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "ÃœÌœ" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM "› Õ" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM "Õ›Ÿ" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM "Õ›Ÿ »«”„" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM "≈€·«ﬁ" Action MyClose()
END POPUP
POPUP " Õ—Ì—"
MENUITEM "‰”Œ" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM "ﬁ’" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM "·’ﬁ" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM "»ÕÀ" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
END POPUP
POPUP "≈œ—«Ã"
MENUITEM "„—Ã⁄" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM "—„“" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM "’Ê—…" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
END POPUP
POPUP "√œÊ« "
MENUITEM "ŒÌ«—« " Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
MENUITEM " Œ’Ì’" Action MSGINFO( "Â–Â «·ﬁ«∆„… ﬁÌœ «·≈‰‘«¡" )
END POPUP
END MENU
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc win1
Proc MyClose
win1.Release ( )
Return Nil
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON6
START DOUBLES
Return
*-------------------------------------------------------------------*
