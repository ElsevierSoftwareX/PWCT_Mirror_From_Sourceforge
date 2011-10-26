*---------------------------------------------------------------------------*
* Time : 02:19:45    Date : 10/24/2011
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


Resistance R_WINBACKCOLOR_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WINBACKCOLOR_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window - Random Back Color" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE TIMER Timer1 INTERVAL 1000 ;
Action setbackcolor()
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc setbackcolor
v1 := rand()*100
v2 := rand()*100
v3 := rand()*100
win1.Backcolor := {v1,v2,v3}


End Of Resistance

INIT PROCEDURE Init_WINBACKCOLOR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window - Random Back Color'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure setbackcolor",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = rand()*100",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = rand()*100",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = rand()*100",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Backcolor := {v1,v2,v3}",22,22)
Return
*-------------------------------------------------------------------*
