*---------------------------------------------------------------------------*
* Time : 13:10:39    Date : 01/12/2012
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
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObj of Class AboutClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObj of Class CustomersDataClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Title = '  Customers Data'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DATABROWSEWINDOWObj of Class DataBrowseClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerBrowseObj of Class CustomerBrowseClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col1 = 'CustName'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col2 = 'CustAddress'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col3 = 'CustPhone'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col4 = 'Country_id'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.Col5 = 'DateOfBirth'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl1 = 'Name'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl2 = 'Address'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl3 = 'Phone'",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl4 = 'Country'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","CustomersDataObj.lbl5 = 'Date'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data Browse' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
Return
*-------------------------------------------------------------------*
