*---------------------------------------------------------------------------*
* Time : 14:26:36    Date : 06/04/2011
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


Resistance R_TIME_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TIME_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 519 ;
HEIGHT 425 ;
ICON "" ;
TITLE "«·Õ’Ê· ⁄·Ï «·Êﬁ  „Ã“¡ » ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ    // «»—«ÂÌ„ ⁄»œ «··«Â" ;
MAIN ;
BACKCOLOR {255,128,0} 

@ 65 ,283 LABEL lbl1 ;
VALUE "À«‰Ì…" ;
WIDTH 121 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 66 ,150 LABEL lbl2 ;
VALUE "œﬁÌﬁ…" ;
WIDTH 122 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 65 ,19 LABEL lbl3 ;
VALUE "”«⁄…" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 116 ,250 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 100 ;
READONLY ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 118 ,120 TEXTBOX text2;
HEIGHT 40 ;
WIDTH 100 ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 120 ,2 TEXTBOX text3;
HEIGHT 40 ;
WIDTH 100 ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 250 ,281 LABEL lbl4 ;
VALUE "À«‰Ì…" ;
WIDTH 121 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 255 ,155 LABEL lbl5 ;
VALUE "œﬁÌﬁ…" ;
WIDTH 122 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 258 ,24 LABEL lbl6 ;
VALUE "”«⁄…" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 304 ,252 TEXTBOX text4;
HEIGHT 40 ;
WIDTH 100 ;
READONLY ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 306 ,124 TEXTBOX text5;
HEIGHT 40 ;
WIDTH 100 ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 306 ,0 TEXTBOX text6;
HEIGHT 40 ;
WIDTH 100 ;
FONT "Arial" SIZE 25 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 10 ,274 LABEL lbl7 ;
VALUE "‰Ÿ«„ 24 ”«⁄…" ;
WIDTH 265 ;
HEIGHT 42 ;
FONT "Arial" SIZE 30  ;
BOLD ;
UNDERLINE ;
BACKCOLOR {255,128,0} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 188 ,281 LABEL lbl8 ;
VALUE "‰Ÿ«„ 12 ”«⁄…" ;
WIDTH 226 ;
HEIGHT 46 ;
FONT "Arial" SIZE 30  ;
BOLD ;
UNDERLINE ;
BACKCOLOR {255,128,0} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 307 ,365 LABEL lbl9 ;
VALUE "" ;
WIDTH 121 ;
HEIGHT 28 ;
FONT "Arial" SIZE 25  ;
BOLD ;
BACKCOLOR {255,128,0} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
END WINDOW

DO thetime
DO thetime1
ACTIVATE WINDOW win1
EndIF

Proc thetime
mytime = TIME()
h = SUBSTR(mytime,1,2)
win1.text3.Value := h
m = SUBSTR(mytime,4,2)
win1.text2.Value := m
s = SUBSTR(mytime,7,2)
win1.text1.Value := s
Return Nil
Proc thetime1
h1 := win1.text3.Value
m1 := win1.text2.Value
s1 := win1.text1.Value
h1 = VAL ( h1 )
IF h1>12
h2 := h1-12
h2 = STR ( h2 )
h2 = ALLTRIM ( h2 )
win1.text6.Value := h2
m1 := win1.text2.Value
win1.text5.Value := m1
s1 := win1.text1.Value
win1.text4.Value := s1
win1.lbl9.Value := "„”«¡«"
ENDIF
IF h1=12 .and. m1>0
h2 := h1-12
h2 = STR ( h2 )
h2 = ALLTRIM ( h2 )
win1.text6.Value := h2
m1 := win1.text2.Value
win1.text5.Value := m1
s1 := win1.text1.Value
win1.text4.Value := s1
win1.lbl9.Value := "„”«¡«"
ENDIF
IF h1=12 .and. s1>0
h2 := h1-12
h2 = STR ( h2 )
h2 = ALLTRIM ( h2 )
win1.text6.Value := h2
m1 := win1.text2.Value
win1.text5.Value := m1
s1 := win1.text1.Value
win1.text4.Value := s1
win1.lbl9.Value := "„”«¡«"
ENDIF
IF h1<=12
h1 = STR ( h1 )
win1.text6.Value := h1
win1.text5.Value := m1
win1.text4.Value := s1
win1.lbl9.Value := "’»«Õ«"
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TIME
START DOUBLES
Return
*-------------------------------------------------------------------*
