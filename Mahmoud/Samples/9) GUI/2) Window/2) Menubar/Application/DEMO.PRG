*---------------------------------------------------------------------------*
* Time : 23:28:41    Date : 10/21/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action myexit()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1

Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",21,21)
Return
*-------------------------------------------------------------------*
