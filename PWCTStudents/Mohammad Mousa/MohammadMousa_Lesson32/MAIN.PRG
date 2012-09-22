*---------------------------------------------------------------------------*
* Time : 15:16:28    Date : 07/19/2012
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
set date japan
set cent on
Set Procedure to "Sub1.PRG"
Set Procedure to "DATABASE.PRG"
Set Procedure to "CUSTOMERS.PRG"
Set Procedure to "CustomersBrowse.PRG"
Set Procedure to "CustDataBrowse.PRG"
Set Procedure to "CustomersBrowse2.PRG"
Set Procedure to "MasterDetailsTest.PRG"
Set Procedure to "SelectItem.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "UserPermissions_Data.PRG"
AboutObject = AboutClass()
CustomersDataObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowse2Object = CustomersBrowse2Class()
OrdersObject = OrdersClass()
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
MENUITEM "Customers" Action CustomersDataObject:ShowWindow
MENUITEM "Customers Browse" Action CustomersBrowseObject:ShowWindow()
MENUITEM "Customers Data/Search" Action CustDataBrowseObject:ShowWindow()
MENUITEM "Customers Search by Country - ComboBox" Action CustomersBrowse2Object:ShowWindow()
MENUITEM "Master Details Test" Action OrdersObject:ShowWindow()
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
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","set date settings",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Sub1.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DATABASE.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERS.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowse.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDataBrowse.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowse2.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MasterDetailsTest.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SelectItem.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'UserPermissions_Data.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowse2Object of Class CustomersBrowse2Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action UsersObject:SystemLogin()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data/Search' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Country - ComboBox' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Master Details Test' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Users' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*
