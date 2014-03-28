*---------------------------------------------------------------------------*
* Time : 01:33:41    Date : 03/29/2014
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
WIDTH 330 ;
HEIGHT 342 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Draw And Move " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

win1.Center ( )
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pStart()
DO WHILE  True
FOR x = 10 TO 200 STEP 10
DO pDraw WITH x
Next
FOR x = 200 TO 10 STEP -10
DO pDraw WITH x
Next
DO EVENTS
ENDDO
return
Proc pDraw( x )
DRAW RECTANGLE IN WINDOW win1;
AT x+10,x+10;
TO x+100,x+100;
PENCOLOR {255,255,255};
PENWIDTH 2;
FILLCOLOR {100,100,100}

SLEEPTIME  0.2
ERASE WINDOW win1
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Draw And Move '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( True )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 10 To 200 Step 10)",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure pDraw Parameters x",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 200 To 10 Step -10)",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure pDraw Parameters x",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","DO Events",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pDraw( x )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Rectangle from x+10,x+10 to x+100,x+100",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","SLEEP TIME 0.2",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Erase Window win1",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
