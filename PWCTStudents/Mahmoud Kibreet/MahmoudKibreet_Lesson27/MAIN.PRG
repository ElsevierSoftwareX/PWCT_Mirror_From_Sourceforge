*---------------------------------------------------------------------------*
* Time : 01:02:05    Date : 05/23/2012
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
Set Procedure to "CustomersBrowse.PRG"
Set Procedure to "CustDataBrowse.PRG"
Set Procedure to "CustomersBrowseCombo.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "ReportParent.PRG"
Set Procedure to "CustomersReport2.PRG"
Set Procedure to "masterdetailstest.PRG"
AboutObiect = AboutClass()
CustomersDataObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowseComboObject = CustomersBrowseComboClass()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
OrdersObject = OrdersClass()
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
MENUITEM "Customers" Action CustomersDataObject:ShowWindow
MENUITEM "CustomersBrowse" Action CustomersBrowseObject:ShowWindow
MENUITEM "CustomersData/Search" Action CustDataBrowseObject:ShowWindow
MENUITEM "Customers Search By Country-ComboBox" Action CustomersBrowseComboObject:ShowWindow
MENUITEM "Customers Report" Action CustomersReportObject:ShowWindow()
MENUITEM "Customers Report2" Action CustomersReport2Object:ShowWindow()
MENUITEM "Master Details Test" Action OrdersObject:ShowWindow()
MENUITEM "About" Action AboutObiect:ShowWindow
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowse.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDataBrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowseCombo.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport2.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'masterdetailstest.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObiect of Class AboutClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseComboObject of Class CustomersBrowseComboClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'CustomersBrowse' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'CustomersData/Search' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search By Country-ComboBox' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report2' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Master Details Test' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
Return
*-------------------------------------------------------------------*
