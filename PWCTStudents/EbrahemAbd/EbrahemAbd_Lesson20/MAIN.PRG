*---------------------------------------------------------------------------*
* Time : 07:26:58    Date : 04/09/2012
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
Set Procedure to "Database.PRG"
Set Procedure to "Customers.PRG"
AboutObject = AboutClass()
customersObject = CustomersDataClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·‘«‘… «·—∆Ì”Ì…" ;
MAIN ;
CURSOR "IMAGES\ABN.ANI" ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "⁄‰ «·»—‰«„Ã" Action AboutObject:showWindow()
MENUITEM "‘«‘… «·⁄„·«¡" Action CustomersObject:ShowWindow()
MENUITEM "«·Œ—ÊÃ „‰ «·»—‰«„Ã" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ -4 ,-10 IMAGE image1;
PICTURE "IMAGES\BACK.JPG";
STRETCH ;
WIDTH 1600 HEIGHT 800
END WINDOW

win1.Maximize ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Sub1.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersObject of Class CustomersDataClass",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·‘«‘… «·—∆Ì”Ì…'",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,16)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄‰ «·»—‰«„Ã' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '‘«‘… «·⁄„·«¡' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·Œ—ÊÃ „‰ «·»—‰«„Ã' )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'IMAGES\BACK.JPG'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
Return
*-------------------------------------------------------------------*
