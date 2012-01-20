*---------------------------------------------------------------------------*
* Time : 08:16:44    Date : 01/19/2012
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


Resistance R_TELDATA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TELDATA_18smart1() code
Set Procedure to "TELSEARCH.PRG"
Set Procedure to "ABOUT.PRG"
myobj = windowsearch()
myobj2 = windowsearch()
myobj2:column := "adderss"
myobj3 = aboutwindow()
if !iswindowdefined( winsys )
DEFINE WINDOW winsys ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "TelPhone Index" ;
MAIN ;
BACKCOLOR {192,192,192} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close" Action close()
END POPUP
POPUP "Search"
MENUITEM "Search By Name" Action myobj:showwindow()
MENUITEM "Search By Adderes" Action myobj2:showwindow()
END POPUP
POPUP "About"
MENUITEM "About" Action myobj3:showwindow()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

DATE

CLOCK

KEYBOARD

END STATUSBAR

END WINDOW

winsys.Maximize ( )
ACTIVATE WINDOW winsys
EndIF

Proc close
winsys.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TELDATA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'TELSEARCH.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ABOUT.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class windowsearch",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj2 of Class windowsearch",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","myobj2.column = 'adderss'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj3 of Class aboutwindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winsys ) , Title : 'TelPhone Index'",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Search'",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Name' )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Adderes' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'About'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'By PWCT Designed by Ahmed Attya' )",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Date",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","winsys.Maximize ( )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","winsys.Release ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
Return
*-------------------------------------------------------------------*
