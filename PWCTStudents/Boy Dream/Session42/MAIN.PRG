*---------------------------------------------------------------------------*
* Time : 18:20:23    Date : 01/12/2012
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
set cent on
Set cent ON
Set date JAPAN
Set Procedure to "SUB1.PRG"
Set Procedure to "DATABASE.PRG"
Set Procedure to "CUSTOMERS.PRG"
Set Procedure to "BROWSECUSTOMERS.PRG"
Set Procedure to "DATABROWSEWINDOW.PRG"
Set Procedure to "ACCESSPARNTREPORT.PRG"
Set Procedure to "ACCESSREPORTWINDOW.PRG"
Set Procedure to "ACCESSREPORTWITHFILTER.PRG"
AboutObj = AboutClass()
CustomersDataObj = CustomersDataClass()
CustomersDataObj:Title := "  Customers Data"
DATABROWSEWINDOWObj = DataBrowseClass()
CustomerBrowseObj = CustomerBrowseClass()
CustomersDataObj:Col1 := "CustName"
CustomersDataObj:Col2 := "CustAddress"
CustomersDataObj:Col3 := "CustPhone"
CustomersDataObj:Col4 := "Country_id"
CustomersDataObj:Col5 := "DateOfBirth"
CustomersDataObj:lbl1 := "Name"
CustomersDataObj:lbl2 := "Address"
CustomersDataObj:lbl3 := "Phone"
CustomersDataObj:lbl4 := "Country"
CustomersDataObj:lbl5 := "Date"
AccessReportObj = AccessReportClass()
AccessReportWithFilterObj = AccessReportWithFilterClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {239,239,239} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Customers" Action CustomersDataObj:ShowWindow()
MENUITEM "Customers Browse" Action CustomerBrowseObj:showwindow()
MENUITEM "Customers Data Browse" Action DATABROWSEWINDOWObj:showwindow()
MENUITEM "Access Report" Action AccessReportObj:ShowWindow()
MENUITEM "Access Report With Filter" Action AccessReportWithFilterObj:ShowWindow()
MENUITEM "About" Action AboutObj:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Settings",2,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SUB1.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DATABASE.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERS.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'BROWSECUSTOMERS.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DATABROWSEWINDOW.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ACCESSPARNTREPORT.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ACCESSREPORTWINDOW.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ACCESSREPORTWITHFILTER.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObj of Class AboutClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObj of Class CustomersDataClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Title = '  Customers Data'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DATABROWSEWINDOWObj of Class DataBrowseClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerBrowseObj of Class CustomerBrowseClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col1 = 'CustName'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col2 = 'CustAddress'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col3 = 'CustPhone'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col4 = 'Country_id'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col5 = 'DateOfBirth'",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl1 = 'Name'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl2 = 'Address'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl3 = 'Phone'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl4 = 'Country'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl5 = 'Date'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AccessReportObj of Class AccessReportClass",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AccessReportWithFilterObj of Class AccessReportWithFilterClass",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data Browse' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Access Report' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Access Report With Filter' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
