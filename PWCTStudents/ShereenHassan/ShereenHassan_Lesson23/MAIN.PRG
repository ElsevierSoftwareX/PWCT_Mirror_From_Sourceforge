*---------------------------------------------------------------------------*
* Time : 20:51:16    Date : 03/24/2012
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




























Set Procedure to "SUB1.PRG"
Set Procedure to "SYSDATABASE.PRG"
Set Procedure to "CUSTOMERS.PRG"
Set Procedure to "CUSTOMERSBROWSE.PRG"
AboutObject = AboutClass()
CustomerObject = CustomersDataClass()
CustomersBrowseObject = CustomersBrowseClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 540 ;
ICON "PWCTICON" ;
TITLE "Main window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {250,191,251} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Customer Data " Action CustomerObject:showwindow()
MENUITEM "Customers Browes " Action CustomersBrowseObject :showwindow()
MENUITEM "About " Action AboutObject:ShowWindow()
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 37 ,9 LABEL lbl1 ;
VALUE "Welcome To Our Company" ;
WIDTH 766 ;
HEIGHT 70 ;
FONT "0,255,64" SIZE 36  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,128,64}
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Setting",1,30)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SUB1.PRG'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SYSDATABASE.PRG'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERS.PRG'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERSBROWSE.PRG'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerObject of Class CustomersDataClass",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main window'",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",44,51)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customer Data ' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browes ' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome To Our Company'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",72,78)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*
