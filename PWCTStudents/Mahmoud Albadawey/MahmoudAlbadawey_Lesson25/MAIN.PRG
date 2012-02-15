*---------------------------------------------------------------------------*
* Time : 01:33:15    Date : 02/14/2012
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
set date Japan
set century on

Set Procedure to "sub1.PRG"
Set Procedure to "database.PRG"
Set Procedure to "CUSTOMERS.PRG"
Set Procedure to "CUSTOMERSBROWSE.PRG"
Set Procedure to "CUSTDATABROWSE.PRG"
Set Procedure to "Reportparent.PRG"
Set Procedure to "CustomersReport.PRG"
aboutobject = aboutclass()
customersdataobject = customersdataclass()
customersbrowseobject = customersbrowseclass()
CUSTDATABROWSEobject = CUSTDATABROWSEclass()
CustomersReportobject = CustomersReportClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Trial Version" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 0 ,0 IMAGE image1;
PICTURE "img\MainBack.jpg";
STRETCH ;
WIDTH 1200 HEIGHT 1000
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Customers" Action customersdataobject:showwindow()
MENUITEM "Serch" Action customersbrowseobject:showwindow
MENUITEM "Serch All " Action CUSTDATABROWSEobject:showwindow
MENUITEM "Customers Report " Action CustomersReportObject:showwindow
MENUITEM "About" Action aboutobject:showwindow
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
SS_ESASTEP("Circuits\Main\Main\Main","set date settings",1,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'sub1.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'database.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERS.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSBROWSE.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTDATABROWSE.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Reportparent.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersReport.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object aboutobject of Class aboutclass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersdataobject of Class customersdataclass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersbrowseobject of Class customersbrowseclass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CUSTDATABROWSEobject of Class CUSTDATABROWSEclass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersReportobject of Class CustomersReportClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Trial Version'",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",21,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'img\MainBack.jpg'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Serch' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Serch All ' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Report ' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
Return
*-------------------------------------------------------------------*
