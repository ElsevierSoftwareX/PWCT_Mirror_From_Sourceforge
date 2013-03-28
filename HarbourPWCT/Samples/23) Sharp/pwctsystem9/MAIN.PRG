*---------------------------------------------------------------------------*
* Time : 21:32:36    Date : 10/24/2011
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
Set Procedure to "SearchByName.PRG"
Set Procedure to "ShowReport.PRG"
Set Procedure to "DataScreen.PRG"
myobj = windowsearch()
myobj2 = windowsearch()
myobj2:column := "address"
myobj3 = windowprint()
myobj4 = windowdata()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Telephone Database" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
POPUP "Data"
MENUITEM "Data Window" Action myobj4:showwindow()
END POPUP
POPUP "Search"
MENUITEM "Search By Name" Action myobj:showwindow()
MENUITEM "Search By Address" Action myobj2:showwindow()
END POPUP
POPUP "Print"
MENUITEM "List of records" Action myobj3:showwindow()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SearchByName.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ShowReport.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DataScreen.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class windowsearch",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj2 of Class windowsearch",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","myobj2.column = 'address'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj3 of Class windowprint",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj4 of Class windowdata",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone Database'",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Data'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Data Window' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Search'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Name' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search By Address' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Print'",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'List of records' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
Return
*-------------------------------------------------------------------*
