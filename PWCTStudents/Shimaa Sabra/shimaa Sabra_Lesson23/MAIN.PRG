*---------------------------------------------------------------------------*
* Time : 01:09:32    Date : 03/09/2012
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
Set Procedure to "CUSTOMERBROWSE.PRG"
AboutObject = AboutClass()
CustomersDataObject = CustomersDataClass()
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
MENUITEM "Customers Browse" Action CustomersBrowseObject:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERBROWSE.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataObject of Class CustomersDataClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersBrowseObject of Class CustomersBrowseClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome'",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Custumers' )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Browse' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome To New Application '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*
