*---------------------------------------------------------------------------*
* Time : 19:39:29    Date : 10/21/2011
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 532 ;
HEIGHT 297 ;
ON INIT mydraw()  ;
ICON "PWCTICON" ;
TITLE "Draw Gradient" ;
MAIN ;
BACKCOLOR {236,233,216} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mydraw
FOR x = 1 TO 255 STEP 1
DRAW LINE IN WINDOW win1;
AT x,x;
TO x,200;
PENCOLOR {x,x,x};
PENWIDTH 1

y := 256-x
DRAW LINE IN WINDOW win1;
AT y,y+255;
TO y,455;
PENCOLOR {y,y,y};
PENWIDTH 1

Next


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Draw Gradient'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action mydraw",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydraw",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 255 Step 1)",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Line AT x,x TO x,200",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","y = 256-x",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Line AT y,y+255 TO y,455",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",32,32)
Return
*-------------------------------------------------------------------*
