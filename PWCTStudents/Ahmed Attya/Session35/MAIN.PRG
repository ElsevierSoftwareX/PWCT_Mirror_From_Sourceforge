*---------------------------------------------------------------------------*
* Time : 12:34:07    Date : 01/26/2011
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
Set Procedure to "sub1.PRG"
Set Procedure to "DATABASE.PRG"
Set Procedure to "CUSTOMER.PRG"
aboutobj = aboutclass()
objCust = customerDataClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {192,192,192} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "About " Action aboutobj:showwindow()
MENUITEM "Exit" Action closesystem()
END POPUP
POPUP "Customers"
MENUITEM "Customers" Action objCust:showwindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'sub1.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DATABASE.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMER.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object aboutobj of Class aboutclass",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object objCust of Class customerDataClass",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Customers'",21,21)
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
