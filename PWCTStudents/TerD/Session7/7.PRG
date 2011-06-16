*---------------------------------------------------------------------------*
* Time : 17:56:45    Date : 06/16/2011
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


Resistance R_7_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_7_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· ﬁ‰Ì…«·ÃœÌœ…" ;
MAIN ;
BACKCOLOR {0,255,64} 

@ 237 ,361 BUTTONEX btn1;
CAPTION "«ŸÂ«—";
ON CLICK myssd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 311 ,9 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK myx()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 51 ,8 LABEL lbl1 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 142 ,11 LABEL lbl2 ;
VALUE "‰’ «·—”«·…" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 42 ,152 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 236 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 95 ,152 TEXTBOX text2;
HEIGHT 114 ;
WIDTH 236 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myssd
add := win1.text1.Value
gmal := win1.text2.Value
MyOut := MSGINFO(gmal,add)
Return Nil
Proc myx
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_7
START DOUBLES
Return
*-------------------------------------------------------------------*
