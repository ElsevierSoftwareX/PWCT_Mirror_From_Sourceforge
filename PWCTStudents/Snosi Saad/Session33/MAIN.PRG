*---------------------------------------------------------------------------*
* Time : 18:19:56    Date : 07/05/2011
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


Resistance R_MAIN_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_15speed1() code
Set Procedure to "searchbyname.PRG"
Set Procedure to "showreport.PRG"
Set Procedure to "datascreen.PRG"
myobj = windowsearch()
myobj2 = windowsearch()
myobj2:column := "address"
myobj3 = WindowPrint()
myobj4 = WindowData()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "„–ﬂ—… «·Â« ›" ;
MAIN ;
BACKCOLOR {95,95,95} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "≈€·«ﬁ" Action closesystem()
END POPUP
POPUP "«·»Ì«‰« "
MENUITEM "⁄—÷ «·»Ì«‰« " Action myobj4:showwindow()
END POPUP
POPUP "«·»ÕÀ"
MENUITEM "»ÕÀ »«·«”„" Action myobj:showwindow()
MENUITEM "»ÕÀ »«·⁄‰Ê«‰" Action myobj2:showwindow()
END POPUP
POPUP "«·ÿ»«⁄…"
MENUITEM "⁄—÷ «·”Ã·" Action myobj3:showwindow()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

END WINDOW

win1.Maximize ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
Return
*-------------------------------------------------------------------*
