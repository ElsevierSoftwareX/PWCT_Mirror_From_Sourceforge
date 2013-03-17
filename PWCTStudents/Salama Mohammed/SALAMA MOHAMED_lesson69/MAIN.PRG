*---------------------------------------------------------------------------*
* Time : 10:40:56    Date : 03/14/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
Set Procedure to "CustomersBrowseByCountry.PRG"
Set Procedure to "REPORTPARENT.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "CustomersReport2.PRG"
Set Procedure to "Orders.PRG"
Set Procedure to "OrdersRebort.PRG"
Set Procedure to "SelectItem.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "USERPERMISSIONS_DATA.PRG"
aboutObject = AboutClass()
CustomersObject = CustomersClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowseByCountryObject = CustomersBrowseByCountryClass()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
OrdersObject = OrdersClass()
OrdersRebortObject = OrdersRebortClass()
SelectItemObject = SelectItemClass()
UsersObject = UsersClass()
UserPermissionsObject = UserPermissionsClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1604 ;
HEIGHT 1385 ;
ON INIT SysStart()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ -4 ,-5 IMAGE image1;
PICTURE "Images\back.jpg";
STRETCH ;
WIDTH 1720 HEIGHT 1390
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "About " Action AboutObject:ShowWindow()
MENUITEM "Customers " Action CustomersObject:ShowWindow()
MENUITEM "Customers Search by Name\Phone " Action CustomersBrowseObject:ShowWindow()
MENUITEM "Customers Search by Country " Action CustomersBrowseByCountryObject:ShowWindow()
MENUITEM "Customers DataBrowse " Action CustDataBrowseObject:ShowWindow()
MENUITEM "Customers Report " Action CustomersReportObject:ShowWindow()
MENUITEM "Customers Report2 " Action CustomersReport2Object:ShowWindow()
MENUITEM "Orders " Action OrdersObject:ShowWindow()
MENUITEM "OrdersRebort " Action OrdersRebortObject:ShowWindow()
MENUITEM "User - ’·«ÕÌ«  «·„” Œœ„Ì‰" Action UsersObject:ShowWindow()
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
Execute File "odbc.bat" MINIMIZE
myout = UsersObject:SystemLogin()
return


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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowseByCountry.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORTPARENT.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport2.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Orders.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersRebort.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SelectItem.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'USERPERMISSIONS_DATA.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object aboutObject of Class AboutClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseByCountryObject of Class CustomersBrowseByCountryClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersRebortObject of Class OrdersRebortClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Images\back.jpg'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers ' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Name\Phone ' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Country ' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers DataBrowse ' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report ' )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report2 ' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders ' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'OrdersRebort ' )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'User - ’·«ÕÌ«  «·„” Œœ„Ì‰' )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'odbc.bat' , MINIMIZE",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","myout = UsersObject.SystemLogin()",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
Return
*-------------------------------------------------------------------*
