#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 22:03:03    Date : 01/06/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
			Atom test                          
				Shell myshell                       
					SubShell mystack                       
					SubShell myqueue                       
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT mystart()  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc mystart
Select Address test:myshell:mystack
STACK_PUSH  "1"
STACK_PUSH  "2"
STACK_PUSH  "3"
v1 = STACK_POP
v2 = STACK_POP
v3 = STACK_POP
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v1
else
Win1.Edit1.VALUE := v1
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v2
else
Win1.Edit1.VALUE := v2
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v3
else
Win1.Edit1.VALUE := v3
endif
Select Address test:myshell:myqueue
QUEUE_PUSH  "1"
QUEUE_PUSH  "2"
QUEUE_PUSH  "3"
v1 = QUEUE_FRONT
v2 = QUEUE_FRONT
v3 = QUEUE_FRONT
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v1
else
Win1.Edit1.VALUE := v1
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v2
else
Win1.Edit1.VALUE := v2
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v3
else
Win1.Edit1.VALUE := v3
endif
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",54)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Address test:myshell:mystack",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","STACK-Push  '1'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","STACK-Push  '2'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","STACK-Push  '3'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","STACK-POP To v1",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","STACK-POP To v2",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","STACK-POP To v3",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (v1) to Editbox (Edit1) of Window (Win1)",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (v2) to Editbox (Edit1) of Window (Win1)",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (v3) to Editbox (Edit1) of Window (Win1)",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Select Address test:myshell:myqueue",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","QUEUE - PUSH '1'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","QUEUE - PUSH '2'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","QUEUE - PUSH '3'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = QUEUE-FRONT",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = QUEUE-FRONT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = QUEUE-FRONT",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (v1) to Editbox (Edit1) of Window (Win1)",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (v2) to Editbox (Edit1) of Window (Win1)",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (v3) to Editbox (Edit1) of Window (Win1)",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
