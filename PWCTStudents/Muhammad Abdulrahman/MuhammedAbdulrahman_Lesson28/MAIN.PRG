*---------------------------------------------------------------------------*
* Time : 14:06:50    Date : 03/23/2012
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

























Set Procedure to "Sub1.PRG"
Set Procedure to "DATABASE.PRG"
Set Procedure to "CUSTOMERS.PRG"
AboutObject = AboutClass()
CustomersDataObject = CustomersDataClass()
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
MENUITEM "Customers" Action CustomersDataObject:showwindow()
MENUITEM "About" Action AboutObject:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","set date setting",1,27)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Sub1.PRG'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DATABASE.PRG'",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERS.PRG'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
Return
*-------------------------------------------------------------------*
