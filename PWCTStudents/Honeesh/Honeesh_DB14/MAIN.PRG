*---------------------------------------------------------------------------*
* Time : 06:30:17    Date : 06/10/2012
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
MENUITEM "PayM " Action PayMObject:ShowWindow()
MENUITEM "Suppliers " Action SuppliersObject:ShowWindow()
MENUITEM "Buying " Action BuyObject:ShowWindow()
MENUITEM "PayM - Browse " Action PayMBrowseObject:ShowWindow()
MENUITEM "Suppliers DataBrowse " Action SuppDataBrowseObject:Showwindow()
MENUITEM "Browse Paym " Action BrowsePayMObject:Showwindow()
MENUITEM "Orders " Action OrdersObject:Showwindow()
MENUITEM "ReSuppliers " Action ReSuppliersObject:Showwindow()
MENUITEM "RePay " Action PayReportObject:Showwindow()
MENUITEM "Orders Report " Action OrdersReportObject:Showwindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BuyObject of Class BuyClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersObject of Class SuppliersClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMBrowseObject of Class PayMBrowseClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppDataBrowseObject of Class SuppDataBrowseClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemsObject of Class SelectItemsClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BrowsePayMObject of Class BrowsePayMClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMObject of Class PayMClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReSuppliersObject of Class ReSuppliersClass",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayReportObject of Class PayReportClass",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersClass",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers ' )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers-Search by Name/Phone ' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM ' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers ' )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Buying ' )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM - Browse ' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers DataBrowse ' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Browse Paym ' )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders ' )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ReSuppliers ' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'RePay ' )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders Report ' )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Users ' )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Installodbc' , MINIMIZE",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","mout = UsersObject.SystemLogin()",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*
