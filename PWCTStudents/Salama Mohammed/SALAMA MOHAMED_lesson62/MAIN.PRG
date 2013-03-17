*---------------------------------------------------------------------------*
* Time : 01:59:44    Date : 02/26/2013
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
Set Procedure to "Customers.PRG"
Set Procedure to "CustomersBrowse.PRG"
Set Procedure to "CustDataBrowse.PRG"
Set Procedure to "CustomersBrowseByCountry.PRG"
Set Procedure to "REPORTPARENT.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "CustomersReport2.PRG"
Set Procedure to "Orders.PRG"
aboutObject = AboutClass()
CustomersObject = CustomersClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowseByCountryObject = CustomersBrowseByCountryClass()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
OrdersObject = OrdersClass()
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

@ -3 ,-4 IMAGE image1;
PICTURE "Images\back.jpg";
STRETCH ;
WIDTH 1720 HEIGHT 1390
DEFINE MAIN MENU
POPUP "File"
MENUITEM "About " Action AboutObject:ShowWindow()
MENUITEM "Customers " Action CustomersObject:ShowWindow()
MENUITEM "Customers Search by Name " Action CustomersBrowseObject:ShowWindow()
MENUITEM "Customers Search by Country " Action CustomersBrowseByCountryObject:ShowWindow()
MENUITEM "Customers DataBrowse " Action CustDataBrowseObject:ShowWindow()
MENUITEM "Customers Report " Action CustomersReportObject:ShowWindow()
MENUITEM "Customers Report2 " Action CustomersReport2Object:ShowWindow()
MENUITEM "Orders " Action OrdersObject:ShowWindow()
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
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
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
SS_ESASTEP("Circuits\Main\Main\Main","Create Object aboutObject of Class AboutClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseByCountryObject of Class CustomersBrowseByCountryClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Images\back.jpg'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers ' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Name ' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Country ' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers DataBrowse ' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report ' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report2 ' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders ' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'odbc.bat' , MINIMIZE",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
