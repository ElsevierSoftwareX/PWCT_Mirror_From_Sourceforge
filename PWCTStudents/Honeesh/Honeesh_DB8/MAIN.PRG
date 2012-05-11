*---------------------------------------------------------------------------*
* Time : 14:37:09    Date : 05/10/2012
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
Set Procedure to "MASTERBY.PRG"
Set Procedure to "ReportParent.PRG"
Set Procedure to "ReSuppliers.PRG"
AboutObject = AboutClass()
BuyObject = BuyClass()
SuppliersObject = SuppliersClass()
PayMBrowseObject = PayMBrowseClass()
SuppDataBrowseObject = SuppDataBrowseClass()
BrowsePayMObject = BrowsePayMClass()
PayMObject = PayMClass()
OrdersObject = OrdersClass()
ReSuppliersObject = ReSuppliersClass()
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
MENUITEM "Orders " Action OrdersObject:Showwindow()
MENUITEM "ReSuppliers " Action ReSuppliersObject:Showwindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'MASTERBY.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReSuppliers.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BuyObject of Class BuyClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppliersObject of Class SuppliersClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMBrowseObject of Class PayMBrowseClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SuppDataBrowseObject of Class SuppDataBrowseClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BrowsePayMObject of Class BrowsePayMClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object PayMObject of Class PayMClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object OrdersObject of Class OrdersClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReSuppliersObject of Class ReSuppliersClass",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM ' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers ' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Buying ' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PayM - Browse ' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Suppliers DataBrowse ' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Browse Paym ' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Orders ' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ReSuppliers ' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Installodbc' , MINIMIZE",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
Return
*-------------------------------------------------------------------*
