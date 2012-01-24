*---------------------------------------------------------------------------*
* Time : 10:52:40    Date : 01/22/2012
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
Set Procedure to "REPORT.PRG"
Set Procedure to "add.PRG"
myobj = windowsearch()
myobj2 = windowsearch()
myobj2:column := "address"
myobj3 = aboutwindow()
myobj4 = windowprint()
myobj5 = windowdata()
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
POPUP "Print"
MENUITEM "Print" Action myobj4:showwindow()
END POPUP
POPUP "Add"
MENUITEM "Add Data" Action myobj5:showwindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORT.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'add.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class windowsearch",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj2 of Class windowsearch",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","myobj2.column = 'address'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj3 of Class aboutwindow",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj4 of Class windowprint",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj5 of Class windowdata",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winsys ) , Title : 'TelPhone Index'",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Search'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Name' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Adderes' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Print'",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Print' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Add'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add Data' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'About'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'By PWCT Designed by Ahmed Attya' )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Date",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","winsys.Maximize ( )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","winsys.Release ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
Return
*-------------------------------------------------------------------*
