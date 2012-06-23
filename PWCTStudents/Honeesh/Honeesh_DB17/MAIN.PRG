*---------------------------------------------------------------------------*
* Time : 05:24:37    Date : 06/21/2012
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
Set Procedure to "About.PRG"
Set Procedure to "Database.PRG"
Set Procedure to "Buying.PRG"
Set Procedure to "Suppliers.PRG"
Set Procedure to "PayMBrowse.PRG"
Set Procedure to "SuppDataBrowse.PRG"
Set Procedure to "BrowsePayM.PRG"
Set Procedure to "PayM.PRG"
Set Procedure to "SelectItems.PRG"
Set Procedure to "Orders.PRG"
Set Procedure to "ReportParent.PRG"
Set Procedure to "ReSuppliers.PRG"
Set Procedure to "FilterRepay.PRG"
Set Procedure to "OrdersReport.PRG"
Set Procedure to "CustomersBrowse.PRG"
Set Procedure to "Customers.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "UserPermissions_Data.PRG"
Set Procedure to "CustomersReport.PRG"
AboutObject = AboutClass()
BuyObject = BuyClass()
SuppliersObject = SuppliersClass()
PayMBrowseObject = PayMBrowseClass()
SuppDataBrowseObject = SuppDataBrowseClass()
SelectItemsObject = SelectItemsClass()
BrowsePayMObject = BrowsePayMClass()
PayMObject = PayMClass()
OrdersObject = OrdersClass()
ReSuppliersObject = ReSuppliersClass()
PayReportObject = PayReportClass()
OrdersReportObject = OrdersReportClass()
CustomersObject = CustomersClass()
CustomersBrowseObject = CustomersBrowseClass()
UsersObject = UsersClass()
UserPermissionsObject = UserPermissionsClass()
CustomersReportObject = CustomersReportClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT SysStart()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "About " Action AboutObject:ShowWindow()
MENUITEM "Customers " Action CustomersObject:Showwindow()
MENUITEM "Customers-Search by Name/Phone " Action CustomersBrowseObject:Showwindow()
MENUITEM "Customers-Report " Action ReSuppliersObject:Showwindow()
MENUITEM "PayM " Action PayMObject:ShowWindow()
MENUITEM "Suppliers " Action SuppliersObject:ShowWindow()
MENUITEM "Buying " Action BuyObject:ShowWindow()
MENUITEM "PayM - Browse " Action PayMBrowseObject:ShowWindow()
MENUITEM "Suppliers DataBrowse " Action SuppDataBrowseObject:Showwindow()
MENUITEM "Browse Paym " Action BrowsePayMObject:Showwindow()
MENUITEM "Orders " Action OrdersObject:Showwindow()
MENUITEM "RePay " Action PayReportObject:Showwindow()
MENUITEM "Orders Report " Action OrdersReportObject:Showwindow()
MENUITEM "Customers-Rep " Action CustomersReportObject:Showwindow()
MENUITEM "Users " Action UsersObject:Showwindow()
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
procedure SysStart()
Execute File "Installodbc" MINIMIZE
mout = UsersObject:SystemLogin()
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Buying.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Suppliers.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PayMBrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SuppDataBrowse.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'BrowsePayM.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PayM.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SelectItems.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Orders.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReSuppliers.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'FilterRepay.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersReport.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowse.PRG'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'UserPermissions_Data.PRG'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BuyObject of Class BuyClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersObject of Class SuppliersClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMBrowseObject of Class PayMBrowseClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppDataBrowseObject of Class SuppDataBrowseClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemsObject of Class SelectItemsClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BrowsePayMObject of Class BrowsePayMClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMObject of Class PayMClass",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReSuppliersObject of Class ReSuppliersClass",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayReportObject of Class PayReportClass",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersClass",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers ' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers-Search by Name/Phone ' )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers-Report ' )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM ' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers ' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Buying ' )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM - Browse ' )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers DataBrowse ' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Browse Paym ' )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders ' )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'RePay ' )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders Report ' )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers-Rep ' )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Users ' )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Installodbc' , MINIMIZE",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","mout = UsersObject.SystemLogin()",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
Return
*-------------------------------------------------------------------*
