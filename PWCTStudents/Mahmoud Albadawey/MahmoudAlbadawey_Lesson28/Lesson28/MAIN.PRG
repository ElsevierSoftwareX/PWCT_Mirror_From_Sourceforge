*---------------------------------------------------------------------------*
* Time : 15:52:25    Date : 02/14/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
set date Japan
set century on

Set Procedure to "sub1.PRG"
Set Procedure to "database.PRG"
Set Procedure to "CUSTOMERS.PRG"
Set Procedure to "CUSTOMERSBROWSE.PRG"
Set Procedure to "MASTERDATAILSTEST.PRG"
Set Procedure to "ORDERSREPORT.PRG"
Set Procedure to "ReportParent.PRG"
aboutobject = aboutclass()
customersdataobject = customersdataclass()
customersbrowseobject = customersbrowseclass()
ordersobject = ordersclass()
OrdersReportObject = OrdersReportClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Customers" Action customersdataobject:showwindow()
MENUITEM "Serch" Action customersbrowseobject:showwindow
MENUITEM "Master Detail" Action ordersobject:showwindow()
MENUITEM "Ordes Report" Action OrdersReportObject:showwindow()
MENUITEM "About" Action aboutobject:showwindow
MENUITEM "Close System" Action closesystem()
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
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","set date settings",1,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'sub1.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'database.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERS.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSBROWSE.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MASTERDATAILSTEST.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ORDERSREPORT.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object aboutobject of Class aboutclass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersdataobject of Class customersdataclass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersbrowseobject of Class customersbrowseclass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ordersobject of Class ordersclass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Serch' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Master Detail' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Ordes Report' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
Return
*-------------------------------------------------------------------*
