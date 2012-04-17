*---------------------------------------------------------------------------*
* Time : 09:03:32    Date : 04/13/2012
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
set date japan
set cent on

Set Procedure to "SUB1.PRG"
Set Procedure to "Persdata.PRG"
Set Procedure to "Custumers.PRG"
Set Procedure to "CUSTOMERBROWSE1.PRG"
Set Procedure to "CUSTDATABROWSE.PRG"
Set Procedure to "CUSTOMERBROWSE.PRG"
Set Procedure to "CUSTOMERSREPORT.PRG"
Set Procedure to "REPORTPARENT.PRG"
Set Procedure to "CUSTREPORT.PRG"
Set Procedure to "ORDERSREPORT.PRG"
Set Procedure to "MASTERDETAILS.PRG"
Set Procedure to "SELECTITEM.PRG"
AboutObject = AboutClass()
CustomersDataObject = CustomersDataClass()
CustomersBrowse1Object = CustomersBrowse1Class()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowseObject = CustomersBrowseClass()
CustomersReportObject = CustomersReportClass()
CustReportObject = CustReportClass()
OrdersObject = OrdersClass()
OrderReportObject = OrderReportClass()
SelectItemObject = SelectItemClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 370 ;
HEIGHT 258 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
MAIN ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Custumers" Action CustomersDataObject:ShowWindow()
MENUITEM "Customers Browse" Action CustomersBrowse1Object:ShowWindow()
MENUITEM "Customers Data/Search" Action CustDataBrowseObject:ShowWindow()
MENUITEM "Customers Search by Country-Combobox" Action CustomersBrowseObject:ShowWindow()
MENUITEM "Customers Report" Action CustomersReportObject:ShowWindow()
MENUITEM "Cust Report" Action CustReportObject:ShowWindow()
MENUITEM "Master Details Test" Action OrdersObject:ShowWindow()
MENUITEM "Orders Report" Action OrderReportObject:ShowWindow()
MENUITEM "About" Action AboutObject:showWindow()
MENUITEM "Close" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 22 ,13 LABEL lbl1 ;
VALUE "Welcome To New Application " ;
WIDTH 279 ;
HEIGHT 40 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
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
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","set date settings",3,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SUB1.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Persdata.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Custumers.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERBROWSE1.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTDATABROWSE.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERBROWSE.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSREPORT.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'REPORTPARENT.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTREPORT.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ORDERSREPORT.PRG'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MASTERDETAILS.PRG'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SELECTITEM.PRG'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowse1Object of Class CustomersBrowse1Class",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportObject of Class CustomersReportClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustReportObject of Class CustReportClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrderReportObject of Class OrderReportClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SelectItemObject of Class SelectItemClass",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome'",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Custumers' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data/Search' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Country-Combobox' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Cust Report' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Master Details Test' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders Report' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome To New Application '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
Return
*-------------------------------------------------------------------*
