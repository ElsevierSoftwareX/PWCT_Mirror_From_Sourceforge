*---------------------------------------------------------------------------*
* Time : 11:34:12    Date : 05/27/2011
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


Resistance R_CHANGECPTION_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHANGECPTION_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· Õﬂ„ ›Ì Õ’«∆’ «·«œÊ«  „‰ «œ«… «Œ—Ì »Ê«”ÿ… ’«·Õ «Õ„œ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {0,128,0} 

@ 46 ,124 LABEL lbl1 ;
VALUE "„‰ ÂÊ „»—„Ã  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
WIDTH 262 ;
HEIGHT 55 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {0,0,0}
@ 196 ,150 LABEL lbl2 ;
VALUE "" ;
WIDTH 297 ;
HEIGHT 46 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {0,0,0}
@ 116 ,161 BUTTONEX btn1;
CAPTION "«÷€ÿ Â‰« ·„⁄—›… «·ÃÊ«»";
ON CLICK mycaption()  ;
WIDTH 186 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycaption
win1.lbl2.Value := "«‰Â „Õ„Êœ ›«Ìœ"
Return Nil


End Of Resistance

INIT PROCEDURE Init_CHANGECPTION
START DOUBLES
Return
*-------------------------------------------------------------------*
