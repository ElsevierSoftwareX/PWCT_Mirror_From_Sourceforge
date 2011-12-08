*---------------------------------------------------------------------------*
* Time : 02:30:09    Date : 12/09/2011
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
Set Procedure to "Sub1.PRG"
Set Procedure to "Database.PRG"
Set Procedure to "Customers.PRG"
Set Procedure to "Browse.PRG"
Set Procedure to "DataBrowse.PRG"
Set Procedure to "ComboBrowse.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "ReportParent.PRG"
Set Procedure to "Report2.PRG"
Set Procedure to "MasterD.PRG"
Set Procedure to "OrdersReport.PRG"
Set Procedure to "SelectItem.PRG"
AboutObject = AboutClass()
CustomersDataObject = CustomersDataClass()
BrowseObject = BrowseClass()
DataBrowseObject = DataBrowseClass()
ComboBrowseObject = ComboBrowseClass()
CustomersReportObject = CustomersReportClass()
Report2Object = Report2Class()
OrdersObject = OrdersClass()
OrdersReportObject = OrdersReportClass()
SelectItemObject = SelectItemClass()
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
MENUITEM "About" Action AboutObject:ShowWindow()
MENUITEM "Customers" Action CustomersDataObject:ShowWindow()
MENUITEM "Browse" Action BrowseObject:ShowWindow()
MENUITEM "DataBrowse" Action DataBrowseObject:ShowWindow()
MENUITEM "ComboBrowse" Action ComboBrowseObject:ShowWindow()
MENUITEM "CustomersReport" Action CustomersReportObject:ShowWindow()
MENUITEM "Report2" Action Report2Object:ShowWindow()
MENUITEM "Details Test" Action OrdersObject:ShowWindow()
MENUITEM "Orders Report" Action OrdersReportObject:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Sub1.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Browse.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DataBrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ComboBrowse.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Report2.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MasterD.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersReport.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SelectItem.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BrowseObject of Class BrowseClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DataBrowseObject of Class DataBrowseClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ComboBrowseObject of Class ComboBrowseClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Report2Object of Class Report2Class",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Browse' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'DataBrowse' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ComboBrowse' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'CustomersReport' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Report2' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Details Test' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders Report' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
