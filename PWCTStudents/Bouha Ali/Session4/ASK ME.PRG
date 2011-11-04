*---------------------------------------------------------------------------*
* Time : 23:52:03    Date : 11/03/2011
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


Resistance R_ASK_ME_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ASK_ME_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 606 ;
HEIGHT 346 ;
ICON "PWCTICON" ;
TITLE "„⁄·Ê„«  ⁄‰ „Œ —⁄  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
MAIN ;
BACKCOLOR {255,128,0} 

@ 22 ,276 LABEL lbl1 ;
VALUE "„‰ ÂÊ „ƒ””  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœø" ;
WIDTH 301 ;
HEIGHT 43 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 82 ,20 LABEL lbl2 ;
VALUE "" ;
ON CLICK myweb()  ;
WIDTH 207 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,255}
@ 20 ,20 BUTTONEX btn1;
CAPTION "·„⁄—›… «·ÃÊ«» «÷€ÿ Â‰«";
ON CLICK myinfor()  ;
WIDTH 206 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 211 ,115 LABEL lbl3 ;
VALUE "" ;
WIDTH 334 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {255,255,255}
@ 157 ,390 BUTTONEX btn2;
CAPTION "⁄‰Ê«‰ „Êﬁ⁄ «·„‘—Ê⁄";
ON CLICK myweb()  ;
WIDTH 189 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myinfor
Win1.lbl2.Value := "≈‰Â «·«” «– „Õ„Êœ ›«Ìœ"
Return Nil
Proc myweb
Win1.lbl3.Value := "http://pwct.org/index.html"
Return Nil


End Of Resistance

INIT PROCEDURE Init_ASK_ME
START DOUBLES
Return
*-------------------------------------------------------------------*
