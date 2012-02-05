*---------------------------------------------------------------------------*
* Time : 11:25:52    Date : 02/05/2012
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
Set Procedure to "SEARCH.PRG"
Set Procedure to "CUSTDATABROWSE.PRG"
Set Procedure to "SEARCH2.PRG"
Set Procedure to "REPORTPAR.PRG"
Set Procedure to "REPORT.PRG"
Set Procedure to "REPORT2.PRG"
Set Procedure to "MASTER.PRG"
aboutobj = aboutclass()
objCust = customerDataClass()
CustomersDataObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersDataObject2 = CustomersBrowseClass2()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
OrderObject = OrdersClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SEARCH.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTDATABROWSE.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SEARCH2.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORTPAR.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORT.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORT2.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MASTER.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object aboutobj of Class aboutclass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objCust of Class customerDataClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersBrowseClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject2 of Class CustomersBrowseClass2",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderObject of Class OrdersClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Customers'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search By Name' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search By Country' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report By Brith Of Date' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Orders' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
Return
*-------------------------------------------------------------------*
