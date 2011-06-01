*---------------------------------------------------------------------------*
* Time : 11:25:53    Date : 05/22/2011
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


Resistance R_MSG_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MSG_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 287 ;
ICON "PWCTICON" ;
TITLE "«· Õﬂ„ »„—»⁄ ‰’" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {85,148,210} 

@ 30 ,156 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {245,245,245} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 64 ,156 TEXTBOX text2;
HEIGHT 100 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {245,245,245} ;
RIGHTALIGN ;
NOTABSTOP ;
FONTCOLOR {0,0,0} 

@ 203 ,206 BUTTONEX btn1;
CAPTION "≈ŸÂ«— «·—”«·…";
FONTCOLOR {0,0,255};
ON CLICK msg()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
BOLD ;
FLAT ;
TOOLTIP ""
@ 39 ,389 LABEL lbl1 ;
VALUE "«·⁄‰‹‹Ê«‰" ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {85,148,210} ;
FONTCOLOR {0,0,0}
@ 76 ,374 LABEL lbl2 ;
VALUE "‰’ «·—”«·…" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {85,148,210} ;
FONTCOLOR {0,0,0}
@ 203 ,18 BUTTONEX btnclose;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
BOLD ;
FLAT ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc msg
title := win1.text1.Value
mymsg := win1.text2.Value
MyOut := MSGINFO(mymsg,title)
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MSG
START DOUBLES
Return
*-------------------------------------------------------------------*
