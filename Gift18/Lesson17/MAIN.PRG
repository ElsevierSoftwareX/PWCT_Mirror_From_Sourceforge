*---------------------------------------------------------------------------*
* Time : 18:18:35    Date : 11/02/2011
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
Set Procedure to "About.PRG"
Set Procedure to "Database.PRG"
Set Procedure to "Customers.PRG"
Set Procedure to "CustomersBrowse.PRG"
Set Procedure to "CustDataBrowse.PRG"
Set Procedure to "CustomerBrowse2.PRG"
Set Procedure to "ReportParent.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "CustomersReport2.PRG"
Set Procedure to "MasterDetailsTest.PRG"
Set Procedure to "OrdersReport.PRG"
Set Procedure to "SelectItem.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "UserPermissions_Data.PRG"
AboutObject = AboutClass()
CustomersDataObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowse2Object = CustomersBrowse2Class()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
OrdersObject = OrdersClass()
OrdersReportObject = OrdersReportClass()
SelectItemObject = SelectItemClass()
UsersObject = UsersClass()
UserPermissionsObject = UserPermissionsClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT UsersObject:SystemLogin()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Customers Data/Browse" Action CustDataBrowseObject:ShowWindow()
MENUITEM "Customers Browse" Action CustomersBrowseObject:ShowWindow()
MENUITEM "Customers Browse by Country" Action CustomersBrowse2Object:ShowWindow()
MENUITEM "Customers" Action CustomersDataObject:ShowWindow()
MENUITEM "Customers Report" Action CustomersReportObject:ShowWindow()
MENUITEM "Customers Report - filter by date of birth" Action CustomersReport2Object:ShowWindow()
MENUITEM "Master Details test" Action OrdersObject:ShowWindow()
MENUITEM "Master Details report" Action OrdersReportObject:ShowWindow()
MENUITEM "About" Action AboutObject:ShowWindow()
MENUITEM "Users" Action UsersObject:ShowWindow()
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
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowse.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDataBrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomerBrowse2.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport2.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MasterDetailsTest.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersReport.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SelectItem.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'UserPermissions_Data.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowse2Object of Class CustomersBrowse2Class",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action UsersObject:SystemLogin()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data/Browse' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse by Country' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report - filter by date of birth' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Master Details test' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Master Details report' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Users' )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*
