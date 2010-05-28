*---------------------------------------------------------------------------*
* Time : 07:23:55    Date : 05/28/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.5 (Speed) [2006-2010]  
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


Resistance R_PWCT_CLOCK_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PWCT_CLOCK_15speed1() code
DEFINE WINDOW winclock ;
AT 10 ,10 ;
WIDTH 539 ;
HEIGHT 223 ;
ICON "PWCTICON" ;
TITLE "PWCT Clock" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

winclock.Center ( )
@ 4 ,2 TEXTBOX text1;
HEIGHT 156 ;
WIDTH 522 ;
READONLY ;
FONT "Arial" SIZE 85 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {215,0,215}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action clock()
DEFINE STATUSBAR ;
BOLD 

DATE;
WIDTH 100 

CLOCK;
WIDTH 100;
AMPM 

KEYBOARD;
WIDTH 100 

END STATUSBAR

END WINDOW

ACTIVATE WINDOW winclock

Proc clock
mrabn = TIME()
winclock.text1.Value := mrabn
Return Nil


End Of Resistance

INIT PROCEDURE Init_PWCT_CLOCK
START DOUBLES
Return
*-------------------------------------------------------------------*
