*---------------------------------------------------------------------------*
* Time : 14:34:37    Date : 03/18/2012
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
AboutObject = AboutClass()
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
MENUITEM "About " Action AboutObject:ShowWindow()
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 16 ,39 LABEL lbl1 ;
VALUE "The main window " ;
WIDTH 187 ;
HEIGHT 52 ;
FONT "0,255,64" SIZE 16  ;
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
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SUB1.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object AboutObject of Class AboutClass",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main window'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,15)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About ' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The main window '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",48,48)
Return
*-------------------------------------------------------------------*
