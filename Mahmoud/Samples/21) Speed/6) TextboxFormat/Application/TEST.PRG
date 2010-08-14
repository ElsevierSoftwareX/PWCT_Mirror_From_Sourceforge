*---------------------------------------------------------------------------*
* Time : 00:35:15    Date : 03/27/2010
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
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 537 ;
HEIGHT 244 ;
ICON "PWCTICON" ;
TITLE "Textbox Format" ;
MAIN ;
BACKCOLOR {64,0,128} 

@ 112 ,163 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Times New Roman" SIZE 18 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {128,255,0} ;
INPUTMASK "9999.99"
@ 54 ,50 LABEL lbl1 ;
VALUE "Use InputMask property to control the input format" ;
WIDTH 427 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1



End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
