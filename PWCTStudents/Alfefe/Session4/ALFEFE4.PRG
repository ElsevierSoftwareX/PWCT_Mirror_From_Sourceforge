*---------------------------------------------------------------------------*
* Time : 13:47:00    Date : 08/12/2011
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


Resistance R_ALFEFE4_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFEFE4_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 462 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "„‰ ÂÊ „»—„Ã  ﬂ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 22 ,66 LABEL lbl1 ;
VALUE "„‰ ÂÊ „»—„Ã  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
WIDTH 338 ;
HEIGHT 39 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 189 ,55 LABEL lbl2 ;
VALUE "" ;
WIDTH 345 ;
HEIGHT 61 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 98 ,96 BUTTONEX btn1;
CAPTION "«÷€ÿ Â‰« ·„⁄—›… «·ÃÊ«»";
ON CLICK mycaption ()  ;
WIDTH 253 HEIGHT 45 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 287 ,15 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK close()  ;
WIDTH 104 HEIGHT 42 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycaption
win1.lbl2.Value := "«‰Â «·‹ „ \ „Õ„Êœ ›«Ìœ"
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALFEFE4
START DOUBLES
Return
*-------------------------------------------------------------------*
