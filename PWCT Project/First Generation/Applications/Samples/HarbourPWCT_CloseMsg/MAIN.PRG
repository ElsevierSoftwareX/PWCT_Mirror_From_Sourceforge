*---------------------------------------------------------------------------*
* Time : 17:56:37    Date : 03/12/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.24
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
ON INTERACTIVECLOSE CloseApp()  ;
ICON "PWCTICON" ;
TITLE "Show Message on Close  " ;
MAIN ;
BACKCOLOR {236,233,216} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure CloseApp()
MyOut := MSGOKCANCEL("Are you sure ? ","Close Application")
Return myout
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Show Message on Close  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INTERACTIVECLOSE : Action CloseApp",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp - Event : INTERACTIVECLOSE",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ? ' Title 'Close Application' Type: Message Ok/Cancel",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Return myout",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",20,20)
Return
*-------------------------------------------------------------------*
