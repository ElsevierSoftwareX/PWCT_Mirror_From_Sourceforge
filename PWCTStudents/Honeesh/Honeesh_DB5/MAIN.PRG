*---------------------------------------------------------------------------*
* Time : 14:51:58    Date : 05/04/2012
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
Set Procedure to "PayM.PRG"
Set Procedure to "PayMBrowse.PRG"
AboutObject = AboutClass()
PayMObject = PayMClass()
PayMBrowseObject = PayMBrowseClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT SysStart()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "About " Action AboutObject:ShowWindow()
MENUITEM "PayM " Action PayMObject:ShowWindow()
MENUITEM "Close System" Action closesystem()
MENUITEM "PayM -Search by NoSnd " Action PayMBrowseObject:ShowWindow()
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
Execute File "Installodbc" MINIMIZE
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PayM.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PayMBrowse.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMObject of Class PayMClass",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMBrowseObject of Class PayMBrowseClass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM ' )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM -Search by NoSnd ' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Installodbc' , MINIMIZE",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",48,48)
Return
*-------------------------------------------------------------------*
