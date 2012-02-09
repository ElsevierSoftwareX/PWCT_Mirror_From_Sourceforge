*---------------------------------------------------------------------------*
* Time : 11:16:36    Date : 02/08/2012
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
Set Procedure to "sub1.PRG"
Set Procedure to "DATABASE.PRG"
Set Procedure to "CUSTOMER.PRG"
Set Procedure to "SEARCHCust.PRG"
Set Procedure to "CUSTDATABROWSE.PRG"
Set Procedure to "SEARCH2.PRG"
Set Procedure to "REPORTPAR.PRG"
Set Procedure to "REPORT.PRG"
Set Procedure to "REPORT2.PRG"
Set Procedure to "MASTER.PRG"
Set Procedure to "ORDER.PRG"
Set Procedure to "SELECTITEM.PRG"
Set Procedure to "USERPERMISSIONS_DATA.PRG"
Set Procedure to "USERS_DATA.PRG"
aboutobj = aboutclass()
objCust = customerDataClass()
CustomersDataObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersDataObject2 = CustomersBrowseClass2()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
OrderObject = OrdersClass()
OrderReportObject = OrdersReportClass()
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
BACKCOLOR {192,192,192} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "About " Action aboutobj:showwindow()
MENUITEM "Exit" Action closesystem()
END POPUP
POPUP "Customers"
MENUITEM "Customers" Action objCust:showwindow()
MENUITEM "Customers Search" Action CustomersDataObject:ShowWindow()
MENUITEM "Customers Search By Name" Action CustDataBrowseObject:ShowWindow()
MENUITEM "Customers Search By Country" Action CustomersDataObject2:ShowWindow()
MENUITEM "Customers Report" Action CustomersReportObject:ShowWindow()
MENUITEM "Customers Report By Brith Of Date" Action CustomersReport2Object:ShowWindow()
MENUITEM "Customers Orders" Action OrderObject :ShowWindow()
MENUITEM "Customers Report Orders" Action OrderReportObject:ShowWindow()
END POPUP
POPUP "Users"
MENUITEM "Users" Action UsersObject:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'sub1.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DATABASE.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMER.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SEARCHCust.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTDATABROWSE.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SEARCH2.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORTPAR.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORT.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORT2.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MASTER.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ORDER.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SELECTITEM.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'USERPERMISSIONS_DATA.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'USERS_DATA.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object aboutobj of Class aboutclass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objCust of Class customerDataClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersBrowseClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject2 of Class CustomersBrowseClass2",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderObject of Class OrdersClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderReportObject of Class OrdersReportClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action UsersObject:SystemLogin()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Customers'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search By Name' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search By Country' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report By Brith Of Date' )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Orders' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report Orders' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Users'",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Users' )",54,54)
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
Return
*-------------------------------------------------------------------*
