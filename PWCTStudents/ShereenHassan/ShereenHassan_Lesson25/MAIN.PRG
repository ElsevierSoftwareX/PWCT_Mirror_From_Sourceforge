*---------------------------------------------------------------------------*
* Time : 11:42:23    Date : 04/12/2012
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
set date japan
set cent on




























Set Procedure to "SUB1.PRG"
Set Procedure to "SYSDATABASE.PRG"
Set Procedure to "CUSTOMERS.PRG"
Set Procedure to "CUSTOMERSBROWSE.PRG"
Set Procedure to "CUSTDATABROWSE.PRG"
Set Procedure to "CUSTOMERBROWSECOMBO.PRG"
Set Procedure to "CUSTOMERSREPORT.PRG"
Set Procedure to "REPORTPARENT.PRG"
AboutObject = AboutClass()
CustomerObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
ComboBoxTestObject = ComboBoxTestClass()
CustomersReportObject = CustomersReportClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 540 ;
ICON "PWCTICON" ;
TITLE "Main window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {250,191,251} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Customer Data " Action CustomerObject:showwindow()
MENUITEM "Customers Browes " Action CustomersBrowseObject :showwindow()
MENUITEM "Customers Data/Search " Action CustDataBrowseObject:showwindow()
MENUITEM "Customers Search by Country" Action ComboBoxTestObject:showwindow()
MENUITEM "Customers Report" Action CustomersReportObject:showwindow()
MENUITEM "About " Action AboutObject:ShowWindow()
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 37 ,9 LABEL lbl1 ;
VALUE "Welcome To Our Company" ;
WIDTH 766 ;
HEIGHT 70 ;
FONT "0,255,64" SIZE 36  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,128,64}
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Setting",1,30)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SUB1.PRG'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SYSDATABASE.PRG'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERS.PRG'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSBROWSE.PRG'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTDATABROWSE.PRG'",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERBROWSECOMBO.PRG'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSREPORT.PRG'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORTPARENT.PRG'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerObject of Class CustomersDataClass",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ComboBoxTestObject of Class ComboBoxTestClass",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main window'",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",51,58)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customer Data ' )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browes ' )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data/Search ' )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Country' )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome To Our Company'",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",97,97)
Return
*-------------------------------------------------------------------*
