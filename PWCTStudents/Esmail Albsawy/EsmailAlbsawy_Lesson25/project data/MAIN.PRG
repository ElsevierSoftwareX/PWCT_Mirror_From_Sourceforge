*---------------------------------------------------------------------------*
* Time : 15:47:48    Date : 05/22/2012
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
Set Procedure to "Sub1.PRG"
Set Procedure to "database.PRG"
Set Procedure to "Customers.PRG"
Set Procedure to "CUSTOMERSBROWSE.PRG"
Set Procedure to "CustDatabrowse.PRG"
Set Procedure to "CustBrowseByCountry.PRG"
AboutObject = AboutClassWindow()
CustomersObject = CustomersDataClass()
CustomersbrowseObject = CustomersBrowseclass()
CustDatabrowseObject = CustDataBrowseclass()
CustomerBrowseByCountryObject = CustomerBrowseByCountryclass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT connect()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Customers" Action CustomersObject:showwindow()
MENUITEM "Customers - Search By Name" Action CUSTOMERSBROWSEObject:showwindow()
MENUITEM "Customers - DataBrowse" Action CustDatabrowseObject:showwindow()
MENUITEM "Customers - Search By Country" Action CustomerBrowseByCountryObject:showwindow()
MENUITEM "About" Action aboutobject:showwindow()
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
procedure connect()
Execute File "installodbc.bat" MINIMIZE
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Sub1.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSBROWSE.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDatabrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustBrowseByCountry.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClassWindow",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersDataClass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersbrowseObject of Class CustomersBrowseclass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDatabrowseObject of Class CustDataBrowseclass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerBrowseByCountryObject of Class CustomerBrowseByCountryclass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action connect",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers - Search By Name' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers - DataBrowse' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers - Search By Country' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect - Event : INIT",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'installodbc.bat' , MINIMIZE",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
Return
*-------------------------------------------------------------------*
