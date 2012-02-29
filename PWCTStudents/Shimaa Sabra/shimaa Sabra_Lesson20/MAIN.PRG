*---------------------------------------------------------------------------*
* Time : 23:38:43    Date : 02/28/2012
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
Set Procedure to "SUB1.PRG"
Set Procedure to "Persdata.PRG"
Set Procedure to "Custumers.PRG"
AboutObject = AboutClass()
CustumersDataObject = CustumersDataClass()
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
MENUITEM "Custumers" Action CustumersDataObject:ShowWindow()
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SUB1.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Persdata.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Custumers.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustumersDataObject of Class CustumersDataClass",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome'",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Custumers' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome To New Application '",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
Return
*-------------------------------------------------------------------*
