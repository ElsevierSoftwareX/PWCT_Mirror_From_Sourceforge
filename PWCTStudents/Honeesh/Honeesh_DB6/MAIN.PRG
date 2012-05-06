*---------------------------------------------------------------------------*
* Time : 00:26:13    Date : 05/07/2012
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
Set Procedure to "Buying.PRG"
Set Procedure to "Suppliers.PRG"
Set Procedure to "PayMBrowse.PRG"
Set Procedure to "SuppDataBrowse.PRG"
Set Procedure to "PayM.PRG"
AboutObject = AboutClass()
BuyObject = BuyClass()
SuppliersObject = SuppliersClass()
PayMBrowseObject = PayMBrowseClass()
SuppDataBrowseObject = SuppDataBrowseClass()
PayMObject = PayMClass()
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
MENUITEM "Suppliers " Action SuppliersObject:ShowWindow()
MENUITEM "Buying " Action BuyObject:ShowWindow()
MENUITEM "PayM - Browse " Action PayMBrowseObject:ShowWindow()
MENUITEM "Suppliers DataBrowse " Action SuppDataBrowseObject:Showwindow()
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
Execute File "Installodbc" MINIMIZE
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Buying.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Suppliers.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PayMBrowse.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SuppDataBrowse.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PayM.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BuyObject of Class BuyClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersObject of Class SuppliersClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMBrowseObject of Class PayMBrowseClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppDataBrowseObject of Class SuppDataBrowseClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMObject of Class PayMClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM ' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers ' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Buying ' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM - Browse ' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers DataBrowse ' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Installodbc' , MINIMIZE",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
Return
*-------------------------------------------------------------------*
