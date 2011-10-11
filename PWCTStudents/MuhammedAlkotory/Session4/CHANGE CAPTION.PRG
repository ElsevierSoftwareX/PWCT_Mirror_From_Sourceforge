*---------------------------------------------------------------------------*
* Time : 18:44:23    Date : 10/11/2011
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


Resistance R_CHANGE_CAPTION_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHANGE_CAPTION_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " €ÌÌ— Œ’«∆’ «·«œÊ—« " ;
MAIN ;
BACKCOLOR {255,128,64} 

@ 33 ,73 LABEL lbl1 ;
VALUE "„‰ ÂÊ „»—„Ã  ﬁ‰ÌÂ «·»—„ÃÂ »œÊ‰ ﬂÊœø" ;
WIDTH 301 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 257 ,159 LABEL lbl2 ;
VALUE "" ;
WIDTH 192 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 148 ,149 BUTTONEX btn1;
CAPTION "«÷€ÿ ·ﬂÏ  ⁄—›";
ON CLICK mycap()  ;
WIDTH 139 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycap
win1.lbl2.Value := "„ „Õ„Êœ ›«Ìœ"
Return Nil


End Of Resistance

INIT PROCEDURE Init_CHANGE_CAPTION
START DOUBLES
Return
*-------------------------------------------------------------------*
