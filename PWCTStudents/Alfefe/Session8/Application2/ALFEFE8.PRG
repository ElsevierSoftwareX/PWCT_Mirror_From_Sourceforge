*---------------------------------------------------------------------------*
* Time : 20:56:03    Date : 08/15/2011
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


Resistance R_ALFEFE8_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFEFE8_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 222 ;
HEIGHT 385 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,0} 

@ 21 ,12 LABEL lbl1 ;
VALUE "0" ;
WIDTH 188 ;
HEIGHT 98 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 143 ,111 BUTTONEX btn1;
CAPTION "⁄œ  ’«⁄œÌ";
ON CLICK alfefe1()  ;
WIDTH 89 HEIGHT 44 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 143 ,12 BUTTONEX btn2;
CAPTION "⁄œ  ‰«“·Ì";
ON CLICK alfefe2()  ;
WIDTH 89 HEIGHT 44 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 197 ,12 BUTTONEX btn3;
CAPTION "⁄Êœ… «·Ï «·»œ«Ì…";
ON CLICK alfefe3()  ;
WIDTH 189 HEIGHT 49 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 280 ,12 BUTTONEX btn4;
CAPTION "Œ—ÊÃ";
ON CLICK close()  ;
WIDTH 191 HEIGHT 53 ;
FONT "Arial" SIZE 24 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc alfefe1
aa := win1.lbl1.Value
aa = VAL ( aa )
aa := aa+1
aa = STR ( aa )
aa = ALLTRIM ( aa )
win1.lbl1.Value := aa
Return Nil
Proc alfefe2
bb := win1.lbl1.Value
bb = VAL ( bb )
bb := bb-1
bb = STR ( bb )
bb = ALLTRIM ( bb )
win1.lbl1.Value := bb
Return Nil
Proc alfefe3
cc := win1.lbl1.Value
cc = VAL ( cc )
cc := cc*0
cc = STR ( cc )
cc = ALLTRIM ( cc )
win1.lbl1.Value := cc
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALFEFE8
START DOUBLES
Return
*-------------------------------------------------------------------*
