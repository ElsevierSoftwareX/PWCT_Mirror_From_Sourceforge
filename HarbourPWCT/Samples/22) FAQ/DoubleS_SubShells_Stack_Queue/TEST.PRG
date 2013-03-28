*---------------------------------------------------------------------------*
* Time : 18:37:38    Date : 09/25/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Test Stack & Queue using DoubleS SubShells" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 56 ,333 BUTTONEX btn1;
CAPTION "Test Stack";
ON CLICK mywork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 99 ,334 BUTTONEX btn2;
CAPTION "Test Queue";
ON CLICK mywork2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mywork
Select Address test:myshell:mystack
STACK_PUSH  1
STACK_PUSH  2
STACK_PUSH  3
v1 = STACK_POP
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v1
else
Win1.Edit1.VALUE := v1
endif
v1 = STACK_POP
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v1
else
Win1.Edit1.VALUE := v1
endif
v1 = STACK_POP
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v1
else
Win1.Edit1.VALUE := v1
endif
Return Nil
Proc mywork2
Select Address test:myshell:myqueue
QUEUE_PUSH  1
QUEUE_PUSH  2
QUEUE_PUSH  3
v1 = QUEUE_FRONT
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v1
else
Win1.Edit1.VALUE := v1
endif
v1 = QUEUE_FRONT
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v1
else
Win1.Edit1.VALUE := v1
endif
v1 = QUEUE_FRONT
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v1
else
Win1.Edit1.VALUE := v1
endif
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
