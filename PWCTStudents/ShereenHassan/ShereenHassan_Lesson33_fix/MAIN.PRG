*---------------------------------------------------------------------------*
* Time : 21:44:55    Date : 05/05/2012
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




























Set Procedure to "SUB1.PRG"
Set Procedure to "SYSDATABASE.PRG"
Set Procedure to "CUSTOMERS.PRG"
Set Procedure to "CUSTOMERSBROWSE.PRG"
Set Procedure to "CUSTDATABROWSE.PRG"
Set Procedure to "CUSTOMERBROWSECOMBO.PRG"
Set Procedure to "CUSTOMERSREPORT.PRG"
Set Procedure to "REPORTPARENT.PRG"
Set Procedure to "CUSTOMERSREPORT2.PRG"
Set Procedure to "MASTERDETAILSTEST.PRG"
Set Procedure to "ORDERREPORT.PRG"
Set Procedure to "SELECTITEM.PRG"
Set Procedure to "USERS_DATA.PRG"
Set Procedure to "USERPERMISSIONS_DATA.PRG"
AboutObject = AboutClass()
CustomerObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
ComboBoxTestObject = ComboBoxTestClass()
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
WIDTH 510 ;
HEIGHT 540 ;
ON INIT UsersObject:SystemLogin()  ;
ICON "PWCTICON" ;
TITLE "Main window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {250,191,251} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Customer Data " Action CustomerObject:showwindow()
MENUITEM "Customers Browes " Action CustomersBrowseObject :showwindow()
MENUITEM "Customers Data/Search " Action CustDataBrowseObject:showwindow()
MENUITEM "Customers Search by Country" Action ComboBoxTestObject:showwindow()
MENUITEM "Customers Report" Action CustomersReportObject:showwindow()
MENUITEM "Customers Report2" Action CustomersReport2Object:showwindow()
MENUITEM "Orders Report" Action OrdersReportObject:showwindow()
MENUITEM "Master Details Test" Action OrdersObject:showwindow()
MENUITEM "Users " Action UsersObject:ShowWindow()
MENUITEM "About " Action AboutObject:ShowWindow()
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 37 ,9 LABEL lbl1 ;
VALUE "Welcome To Our Company" ;
WIDTH 766 ;
HEIGHT 70 ;
FONT "0,255,64" SIZE 36  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,128,64}
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Setting",1,30)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SUB1.PRG'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SYSDATABASE.PRG'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERS.PRG'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSBROWSE.PRG'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTDATABROWSE.PRG'",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERBROWSECOMBO.PRG'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSREPORT.PRG'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORTPARENT.PRG'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSREPORT2.PRG'",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MASTERDETAILSTEST.PRG'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ORDERREPORT.PRG'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SELECTITEM.PRG'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'USERS_DATA.PRG'",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'USERPERMISSIONS_DATA.PRG'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerObject of Class CustomersDataClass",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ComboBoxTestObject of Class ComboBoxTestClass",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main window'",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action UsersObject:SystemLogin",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",64,71)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customer Data ' )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browes ' )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data/Search ' )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Country' )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report2' )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders Report' )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Master Details Test' )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Users ' )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome To Our Company'",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",99,105)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
Return
*-------------------------------------------------------------------*
