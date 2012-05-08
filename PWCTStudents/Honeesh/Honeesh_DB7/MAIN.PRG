*---------------------------------------------------------------------------*
* Time : 02:20:45    Date : 05/07/2012
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
Set Procedure to "BrowsePayM.PRG"
Set Procedure to "PayM.PRG"
AboutObject = AboutClass()
BuyObject = BuyClass()
SuppliersObject = SuppliersClass()
PayMBrowseObject = PayMBrowseClass()
SuppDataBrowseObject = SuppDataBrowseClass()
BrowsePayMObject = BrowsePayMClass()
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
MENUITEM "Browse Paym " Action BrowsePayMObject:Showwindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'BrowsePayM.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PayM.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BuyObject of Class BuyClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersObject of Class SuppliersClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMBrowseObject of Class PayMBrowseClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppDataBrowseObject of Class SuppDataBrowseClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BrowsePayMObject of Class BrowsePayMClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMObject of Class PayMClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM ' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers ' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Buying ' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM - Browse ' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers DataBrowse ' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Browse Paym ' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Installodbc' , MINIMIZE",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
Return
*-------------------------------------------------------------------*
