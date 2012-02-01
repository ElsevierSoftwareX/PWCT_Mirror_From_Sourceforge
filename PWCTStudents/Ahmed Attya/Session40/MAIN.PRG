*---------------------------------------------------------------------------*
* Time : 14:20:38    Date : 02/01/2012
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
aboutobj = aboutclass()
objCust = customerDataClass()
CustomersDataObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
CustomersDataObject2 = CustomersBrowseClass2()
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
SS_ESASTEP("Circuits\Main\Main\Main","Create Object aboutobj of Class aboutclass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objCust of Class customerDataClass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersBrowseClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject2 of Class CustomersBrowseClass2",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Customers'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search By Name' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search By Country' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
Return
*-------------------------------------------------------------------*
