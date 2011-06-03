*---------------------------------------------------------------------------*
* Time : 22:12:51    Date : 06/01/2011
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
TITLE "«ŸÂ«— «·—”«·… »Ê«”ÿ… ’«·Õ «Õ„œ" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 228 ,229 BUTTONEX btn1;
CAPTION "«ŸÂ«—";
ON CLICK msgbox()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 227 ,34 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK messaoud()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 114 ,71 LABEL lbl1 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 102 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 55 ,85 LABEL lbl2 ;
VALUE "‰’ «·—”«·…" ;
WIDTH 98 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 117 ,189 TEXTBOX text1;
HEIGHT 88 ;
WIDTH 199 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 57 ,189 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc messaoud
win1.Release ( )
Return Nil
Proc msgbox
dido := win1.text1.Value
messaoud := win1.text2.Value
MyOut := MSGINFO(messaoud,dido)
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEXTMSG
START DOUBLES
Return
*-------------------------------------------------------------------*
