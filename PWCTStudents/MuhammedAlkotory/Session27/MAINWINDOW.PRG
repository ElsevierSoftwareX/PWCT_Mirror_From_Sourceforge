*---------------------------------------------------------------------------*
* Time : 17:33:40    Date : 10/31/2011
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


Resistance R_MAINWINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAINWINDOW_15speed1() code
Set Procedure to "testsub.PRG"
myobj = subwindow()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "system" ;
MAIN ;
BACKCOLOR {128,255,255} 

DEFINE MAIN MENU
POPUP "file"
MENUITEM "close" Action closesystem()
MENUITEM "Call Sub" Action myobj:showwindow()
END POPUP
POPUP "edit"
MENUITEM "close" Action closesystem()
MENUITEM "Call Sub" Action myobj:showwindow()
END POPUP
POPUP "view"
MENUITEM "close" Action closesystem()
MENUITEM "Call Sub" Action myobj:showwindow()
END POPUP
POPUP "help"
MENUITEM "close" Action closesystem()
MENUITEM "Call Sub" Action myobj:showwindow()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "ready"

CLOCK

DATE

KEYBOARD

END STATUSBAR

END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAINWINDOW
START DOUBLES
Return
*-------------------------------------------------------------------*
