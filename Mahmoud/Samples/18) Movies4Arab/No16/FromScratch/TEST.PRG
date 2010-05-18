#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 13:10:34    Date : 01/12/2009
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
New Server test Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        c1                            
				Branch     b1                            
					Resistance r1                            
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RVKKJY1() address Code Unit : Circuits\c1\b1\r1


CALL RESISTANCE Circuits\c1\b1\r1
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\c1\b1\r1
Resistance RVKKJY1() code
msginfo("message from goal")
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "Text Here";
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1



End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\c1\b1\r1",50)
SS_ESAGOAL("Circuits\c1\b1\r1","g1")
SS_ESASTEP("Circuits\c1\b1\r1","s1",0,0)
SS_ESASTEP("Circuits\c1\b1\r1","my code",1,1)
SS_ESASTEP("Circuits\c1\b1\r1","Define Window  ( win1 )",2,5)
SS_ESASTEP("Circuits\c1\b1\r1","Window Events",0,0)
SS_ESASTEP("Circuits\c1\b1\r1","Window Properties",6,10)
SS_ESASTEP("Circuits\c1\b1\r1","Window Controls",0,0)
SS_ESASTEP("Circuits\c1\b1\r1","Define New Button ( btn1 )",11,12)
SS_ESASTEP("Circuits\c1\b1\r1","Button Events",0,0)
SS_ESASTEP("Circuits\c1\b1\r1","Button Properties",13,15)
SS_ESASTEP("Circuits\c1\b1\r1","End Of Window",16,17)
SS_ESASTEP("Circuits\c1\b1\r1","Activate window",18,19)
Return
*-------------------------------------------------------------------*
