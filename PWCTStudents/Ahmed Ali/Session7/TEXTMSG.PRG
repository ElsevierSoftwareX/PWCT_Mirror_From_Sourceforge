*---------------------------------------------------------------------------*
* Time : 21:27:55    Date : 10/17/2011
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


Resistance R_TEXTMSG_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEXTMSG_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«ŸÂ«— «·—”«·…" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {255,128,255} 

@ 220 ,385 BUTTONEX btn1;
CAPTION "«ŸÂ«—";
ON CLICK msgbox()  ;
WIDTH 77 HEIGHT 30 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
@ 289 ,79 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK Myexit()  ;
WIDTH 87 HEIGHT 34 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
@ 50 ,368 LABEL lbl1 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 111 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 105 ,368 LABEL lbl2 ;
VALUE "‰’ «·—”«·…" ;
WIDTH 113 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 41 ,77 TEXTBOX text1;
HEIGHT 37 ;
WIDTH 279 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 95 ,78 TEXTBOX text2;
HEIGHT 91 ;
WIDTH 280 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myexit
win1.Release ( )
Return Nil
Proc msgbox
dido := win1.text1.Value
ahmed := win1.text2.Value
MyOut := MSGINFO(ahmed,dido)
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEXTMSG
START DOUBLES
Return
*-------------------------------------------------------------------*
