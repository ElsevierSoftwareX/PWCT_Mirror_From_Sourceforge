*---------------------------------------------------------------------------*
* Time : 00:52:45    Date : 07/04/2011
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


Resistance R_4_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_4_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 575 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· Õﬂ„ ›Ì «·Œ’«∆’ 4" ;
MAIN ;
BACKCOLOR {0,64,128} 

@ 31 ,75 LABEL lbl1 ;
VALUE "„‰ ÂÊ „»—„Ã  ﬁ‰Ì… «·»—„ÃÂ „‰ €Ì— ﬂÊœ" ;
WIDTH 468 ;
HEIGHT 67 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,255}
@ 252 ,118 LABEL lbl2 ;
VALUE "" ;
WIDTH 294 ;
HEIGHT 58 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,255}
@ 126 ,113 BUTTONEX btn1;
CAPTION "«÷€ÿ Â‰« ·„⁄—›… «·ÃÊ«»";
ON CLICK mycaption()  ;
WIDTH 274 HEIGHT 42 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycaption
win1.lbl2.Value := "„Õ„Êœ ›«Ìœ"
Return Nil


End Of Resistance

INIT PROCEDURE Init_4
START DOUBLES
Return
*-------------------------------------------------------------------*
