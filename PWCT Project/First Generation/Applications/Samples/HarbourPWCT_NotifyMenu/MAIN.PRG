*---------------------------------------------------------------------------*
* Time : 22:30:43    Date : 10/05/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.09.30
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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
* Get parameters from command line
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Welcome  " ;
MAIN ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "PWCTICON" 

DEFINE NOTIFY MENU OF win1
POPUP "Main "
MENUITEM "Say Hello " Action MSGINFO( "Hello" )
MENUITEM "Say Welcome " Action MSGINFO( "Welcome" )
END POPUP
MENUITEM "Say Hello " Action MSGINFO( "Hello" )
MENUITEM "Say Welcome " Action MSGINFO( "Welcome" )
MENUITEM "Exit " Action win1.Release
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Notify Menu Of Parent Window : win1",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Main '",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Say Hello ' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Say Welcome ' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Say Hello ' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Say Welcome ' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","End of menu",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",23,25)
Return
*-------------------------------------------------------------------*
