*---------------------------------------------------------------------------*
* Time : 12:31:38    Date : 02/09/2013
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
Set Procedure to "About.PRG"
Set Procedure to "Database.PRG"
Set Procedure to "Customers.PRG"
AboutObj = AboutClass()
CustomersObj = CustomersClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 558 ;
HEIGHT 400 ;
ON INIT SysStart()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {128,128,255} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "About" Action AboutObj:ShowWindow()
MENUITEM "Customers" Action CustomersObj:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObj of Class AboutClass",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObj of Class CustomersClass",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'odbc.bat' , MINIMIZE",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
Return
*-------------------------------------------------------------------*
