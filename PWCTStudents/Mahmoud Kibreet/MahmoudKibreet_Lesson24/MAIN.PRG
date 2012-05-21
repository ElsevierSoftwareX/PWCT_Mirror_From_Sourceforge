*---------------------------------------------------------------------------*
* Time : 01:36:14    Date : 05/18/2012
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
AboutObiect = AboutClass()
CustomersDataObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowseComboObject = CustomersBrowseComboClass()
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
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObiect of Class AboutClass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseComboObject of Class CustomersBrowseComboClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'CustomersBrowse' )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'CustomersData/Search' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search By Country-ComboBox' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
Return
*-------------------------------------------------------------------*
