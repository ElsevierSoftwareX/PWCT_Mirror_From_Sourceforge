*---------------------------------------------------------------------------*
* Time : 18:35:10    Date : 03/28/2012
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
Set cent ON
Set date JAPAN
Set Procedure to "Sub1.PRG"
Set Procedure to "Customers.PRG"
Set Procedure to "Database.PRG"
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
BACKCOLOR {0,217,54} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "About" Action AboutObject:ShowWindow()
MENUITEM "Close System" Action closesystem()
MENUITEM "Customers" Action CustomersDataObject:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Settings : Century ON Format JAPAN",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Sub1.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*
