*---------------------------------------------------------------------------*
* Time : 13:49:00    Date : 05/23/2012
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
Set Procedure to "ReportParent.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "CustomersReport2.PRG"
AboutObject = AboutClassWindow()
CustomersObject = CustomersDataClass()
CustomersbrowseObject = CustomersBrowseclass()
CustDatabrowseObject = CustDataBrowseclass()
CustomerBrowseByCountryObject = CustomerBrowseByCountryclass()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
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
MENUITEM "Customers Report" Action CustomersReportObject:showwindow()
MENUITEM "Customers Report By Filter" Action CustomersReport2Object:showwindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport2.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClassWindow",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersDataClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersbrowseObject of Class CustomersBrowseclass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDatabrowseObject of Class CustDataBrowseclass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerBrowseByCountryObject of Class CustomerBrowseByCountryclass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action connect",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers - Search By Name' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers - DataBrowse' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers - Search By Country' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report By Filter' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect - Event : INIT",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'installodbc.bat' , MINIMIZE",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
Return
*-------------------------------------------------------------------*
