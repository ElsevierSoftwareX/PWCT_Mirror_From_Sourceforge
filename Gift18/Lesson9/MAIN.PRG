*---------------------------------------------------------------------------*
* Time : 03:06:07    Date : 10/28/2011
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
Set Procedure to "CustomerBrowse2.PRG"
Set Procedure to "ReportParent.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "CustomersReport2.PRG"
AboutObject = AboutClass()
CustomersDataObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowse2Object = CustomersBrowse2Class()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
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
MENUITEM "Customers Data/Browse" Action CustDataBrowseObject:ShowWindow()
MENUITEM "Customers Browse" Action CustomersBrowseObject:ShowWindow()
MENUITEM "Customers Browse by Country" Action CustomersBrowse2Object:ShowWindow()
MENUITEM "Customers" Action CustomersDataObject:ShowWindow()
MENUITEM "Customers Report" Action CustomersReportObject:ShowWindow()
MENUITEM "Customers Report - filter by date of birth" Action CustomersReport2Object:ShowWindow()
MENUITEM "About" Action AboutObject:ShowWindow()
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
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowse.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDataBrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomerBrowse2.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport2.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowse2Object of Class CustomersBrowse2Class",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data/Browse' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse by Country' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report - filter by date of birth' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
Return
*-------------------------------------------------------------------*
