*---------------------------------------------------------------------------*
* Time : 10:58:11    Date : 01/16/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
#include "xhb.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
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


Resistance R_MAIN27_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN27_18smart1() code
Set Procedure to "subwindow27.PRG"
myobj = subwindow()
Set Procedure to "about27.PRG"
myobjabout = aboutwindow()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·”«»⁄ Ê«·⁄‘—Ê‰" ;
MAIN ;
BACKCOLOR {192,192,192} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Call Win" Action myobj:showwindow()
MENUITEM "About" Action myobjabout:showwindow()
MENUITEM "Close" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

DATE

CLOCK

KEYBOARD

END STATUSBAR

END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN27
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'subwindow27.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class subwindow",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'about27.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobjabout of Class aboutwindow",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·”«»⁄ Ê«·⁄‘—Ê‰'",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Call Win' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'By PWCT Designed by Ahmed Attya' )",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Date",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
