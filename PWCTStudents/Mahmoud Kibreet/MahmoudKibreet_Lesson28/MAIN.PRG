*---------------------------------------------------------------------------*
* Time : 01:02:51    Date : 05/24/2012
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
Set Procedure to "OrdersReport.PRG"
AboutObiect = AboutClass()
CustomersDataObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowseComboObject = CustomersBrowseComboClass()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
OrdersObject = OrdersClass()
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
MENUITEM "Customers" Action CustomersDataObject:ShowWindow
MENUITEM "CustomersBrowse" Action CustomersBrowseObject:ShowWindow
MENUITEM "CustomersData/Search" Action CustDataBrowseObject:ShowWindow
MENUITEM "Customers Search By Country-ComboBox" Action CustomersBrowseComboObject:ShowWindow
MENUITEM "Customers Report" Action CustomersReportObject:ShowWindow()
MENUITEM "Customers Report2" Action CustomersReport2Object:ShowWindow()
MENUITEM "Master Details Test" Action OrdersObject:ShowWindow()
MENUITEM "Orders Report" Action OrdersReportObject:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'OrdersReport.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObiect of Class AboutClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseComboObject of Class CustomersBrowseComboClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'CustomersBrowse' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'CustomersData/Search' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search By Country-ComboBox' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report2' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Master Details Test' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders Report' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",41,41)
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
