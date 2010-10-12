*---------------------------------------------------------------------------*
* Time : 22:28:30    Date : 10/10/2010
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
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_HELLO_WORLD_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLO_WORLD_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 431 ;
HEIGHT 292 ;
ICON "PWCTICON" ;
TITLE "Hello World" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 11 ,16 LABEL lbl1 ;
VALUE "Hello World" ;
WIDTH 121 ;
HEIGHT 40 ;
FONT "Arial Narrow" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 214 ,313 BUTTONEX btn1;
CAPTION "Close";
ON CLICK Myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Narrow" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HELLO_WORLD
START DOUBLES
Return
*-------------------------------------------------------------------*
