*---------------------------------------------------------------------------*
* Time : 05:35:17    Date : 08/10/2010
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_HELLO_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLO_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 564 ;
HEIGHT 270 ;
ICON "PWCTICON" ;
TITLE "Hello" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,128} 

@ 3 ,106 LABEL lbl1 ;
VALUE " Hello" ;
WIDTH 291 ;
HEIGHT 134 ;
FONT "Arial Rounded MT Bold" SIZE 72  ;
BACKCOLOR {255,128,128} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 159 ,2 BUTTONEX btn1;
CAPTION "Close";
ON CLICK MSGINFO( myclose() ) ;
WIDTH 127 HEIGHT 42 ;
FONT "Arial Rounded MT Bold" SIZE 20 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1

Proc myclose()
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HELLO
START DOUBLES
Return
*-------------------------------------------------------------------*
