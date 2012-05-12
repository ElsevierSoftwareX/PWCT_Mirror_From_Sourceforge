*---------------------------------------------------------------------------*
* Time : 23:41:35    Date : 04/15/2012
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
Set Procedure to "CUSTOMERSREPORT2.PRG"
Set Procedure to "MASTERDETAILSTEST.PRG"
Set Procedure to "ORDERREPORT.PRG"
Set Procedure to "SELECTITEM.PRG"
AboutObject = AboutClass()
CustomerObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
CustDataBrowseObject = CustDataBrowseClass()
ComboBoxTestObject = ComboBoxTestClass()
CustomersReportObject = CustomersReportClass()
CustomersReport2Object = CustomersReport2Class()
OrdersObject = OrdersClass()
OrdersReportObject = OrdersReportClass()
SelectItemObject = SelectItemClass()
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
MENUITEM "Customers Report2" Action CustomersReport2Object:showwindow()
MENUITEM "Orders Report" Action OrdersReportObject:showwindow()
MENUITEM "Master Details Test" Action OrdersObject:showwindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSREPORT2.PRG'",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MASTERDETAILSTEST.PRG'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ORDERREPORT.PRG'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SELECTITEM.PRG'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerObject of Class CustomersDataClass",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ComboBoxTestObject of Class ComboBoxTestClass",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReport2Object of Class CustomersReport2Class",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersReportObject of Class OrdersReportClass",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main window'",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",59,66)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customer Data ' )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browes ' )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data/Search ' )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Country' )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report2' )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders Report' )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Master Details Test' )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome To Our Company'",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",93,99)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
Return
*-------------------------------------------------------------------*
