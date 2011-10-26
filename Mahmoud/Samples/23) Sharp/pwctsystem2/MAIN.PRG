*---------------------------------------------------------------------------*
* Time : 18:34:57    Date : 10/24/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
Set Procedure to "Sub.PRG"
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
MENUITEM "Welcome" Action callwelcome()
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc callwelcome
myobj = windowwelcome()
myout = myobj:showwindow()
Return Nil
Proc closesystem
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Sub.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Welcome' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure callwelcome",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class windowwelcome",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobj.showwindow()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",30,30)
Return
*-------------------------------------------------------------------*
