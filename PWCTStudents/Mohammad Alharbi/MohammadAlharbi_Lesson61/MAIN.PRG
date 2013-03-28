*---------------------------------------------------------------------------*
* Time : 17:50:58    Date : 03/19/2013
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
Set Procedure to "ABOUT.PRG"
Set Procedure to "DataBase.PRG"
Set Procedure to "Customers.PRG"
Set Procedure to "CustomersBrowse.PRG"
Set Procedure to "CustDataBrowse.PRG"
Set Procedure to "CustSearchByCountry.PRG"
Set Procedure to "ParentReport.PRG"
Set Procedure to "CustomersReport.PRG"
Set Procedure to "CustReportByFilter.PRG"
AboutObj = AboutClass()
CustomersObj = CustomersClass()
CustomersBrowseObj = CustomersBrowseClass()
CustDataBrowseObj = CustDataBrowseClass()
CustSearchByCountryObj = CustSearchByCountryClass()
CustomersReportObj = CustomersReportClass()
CustReportByFilterObj = CustReportByFilterClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT SysStart()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "About" Action AboutObj:ShowWindow()
MENUITEM "Customers" Action CustomersObj:ShowWindow()
MENUITEM "Customers-Search By Name" Action CustomersBrowseObj:ShowWindow()
MENUITEM "Customers-Search By Country" Action CustSearchByCountryObj:ShowWindow()
MENUITEM "Customers-Data/Browse" Action CustDataBrowseObj:ShowWindow()
MENUITEM "Customers-Report" Action CustomersReportObj:ShowWindow()
MENUITEM "Customers-ByFilter" Action CustReportByFilterObj:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ABOUT.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DataBase.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersBrowse.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDataBrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustSearchByCountry.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ParentReport.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustReportByFilter.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObj of Class AboutClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObj of Class CustomersClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObj of Class CustomersBrowseClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObj of Class CustDataBrowseClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustSearchByCountryObj of Class CustSearchByCountryClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObj of Class CustomersReportClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustReportByFilterObj of Class CustReportByFilterClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers-Search By Name' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers-Search By Country' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers-Data/Browse' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers-Report' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers-ByFilter' )",36,36)
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'odbc.bat' , MINIMIZE",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
Return
*-------------------------------------------------------------------*
