*---------------------------------------------------------------------------*
* Time : 01:19:03    Date : 03/10/2012
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
set date japan
set cent on

Set Procedure to "SUB1.PRG"
Set Procedure to "Persdata.PRG"
Set Procedure to "Custumers.PRG"
Set Procedure to "CUSTOMERBROWSE1.PRG"
Set Procedure to "CUSTDATABROWSE.PRG"
Set Procedure to "CUSTOMERBROWSE.PRG"
AboutObject = AboutClass()
CustomersDataObject = CustomersDataClass()
CustomersBrowse1Object = CustomersBrowse1Class()
CustDataBrowseObject = CustDataBrowseClass()
CustomersBrowseObject = CustomersBrowseClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 370 ;
HEIGHT 258 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
MAIN ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Custumers" Action CustomersDataObject:ShowWindow()
MENUITEM "Customers Browse" Action CustomersBrowse1Object:ShowWindow()
MENUITEM "Customers Data/Search" Action CustDataBrowseObject:ShowWindow()
MENUITEM "Customers Search by Country-Combobox" Action CustomersBrowseObject:ShowWindow()
MENUITEM "About" Action AboutObject:showWindow()
MENUITEM "Close" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 22 ,13 LABEL lbl1 ;
VALUE "Welcome To New Application " ;
WIDTH 279 ;
HEIGHT 40 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
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
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","set date settings",3,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SUB1.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Persdata.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Custumers.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERBROWSE1.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTDATABROWSE.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERBROWSE.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowse1Object of Class CustomersBrowse1Class",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustDataBrowseObject of Class CustDataBrowseClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome'",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Custumers' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data/Search' )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Search by Country-Combobox' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome To New Application '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
Return
*-------------------------------------------------------------------*
