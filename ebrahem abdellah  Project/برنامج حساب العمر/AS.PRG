*---------------------------------------------------------------------------*
* Time : 11:10:01    Date : 05/29/2011
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


Resistance R_AS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AS_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 348 ;
HEIGHT 319 ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã Õ”«» „« „÷Ï „‰ ⁄„—ﬂ" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {255,128,64} 

win1.Center ( )
@ 13 ,135 LABEL lbl1 ;
VALUE "ÌÊ„" ;
WIDTH 35 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 13 ,81 LABEL lbl2 ;
VALUE "‘Â—" ;
WIDTH 35 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 12 ,17 LABEL lbl3 ;
VALUE "”‰…" ;
WIDTH 47 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 49 ,138 TEXTBOX text1;
HEIGHT 38 ;
WIDTH 35 ;
FONT "arial" SIZE 14 ;
TOOLTIP "√œŒ·  «—ÌŒ «·ÌÊ„ «·Õ«·Ï " ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 48 ,75 TEXTBOX text2;
HEIGHT 38 ;
WIDTH 35 ;
FONT "arial" SIZE 14 ;
TOOLTIP "√œŒ· «·‘Â— «·Õ«·Ï" ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 46 ,5 TEXTBOX text3;
HEIGHT 42 ;
WIDTH 51 ;
FONT "arial" SIZE 14 ;
TOOLTIP "√œŒ· «·”‰… «·Õ«·Ì…" ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 114 ,201 LABEL lbl5 ;
VALUE "«œŒ·  «—ÌŒ „Ì·«œﬂ" ;
WIDTH 122 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 49 ,197 LABEL lbl6 ;
VALUE " «œŒ·  «—ÌŒ «·ÌÊ„" ;
WIDTH 122 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 107 ,137 TEXTBOX text4;
HEIGHT 38 ;
WIDTH 35 ;
FONT "arial" SIZE 14 ;
TOOLTIP "√œŒ· ÌÊ„ „Ì·«œﬂ" ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 109 ,76 TEXTBOX text5;
HEIGHT 38 ;
WIDTH 35 ;
FONT "arial" SIZE 14 ;
TOOLTIP "√œŒ· ‘Â— „Ì·«œﬂ" ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 108 ,5 TEXTBOX text6;
HEIGHT 40 ;
WIDTH 51 ;
FONT "arial" SIZE 14 ;
TOOLTIP "√œŒ· ”‰… „Ì·«œﬂ" ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 167 ,137 TEXTBOX text7;
HEIGHT 38 ;
WIDTH 35 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 168 ,77 TEXTBOX text8;
HEIGHT 39 ;
WIDTH 36 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 171 ,6 TEXTBOX text9;
HEIGHT 37 ;
WIDTH 50 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 234 ,202 BUTTONEX btn1;
CAPTION "«Õ”»";
ON CLICK calc()  ;
WIDTH 122 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 179 ,188 LABEL L ;
VALUE "„÷Ï „‰ ⁄„—ﬂ «·¬‰" ;
WIDTH 137 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 233 ,22 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK myexit()  ;
WIDTH 122 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DO dd
ACTIVATE WINDOW win1

Proc calc
t1 = VAL ( win1.text1.value )
t2 = VAL ( win1.text2.value )
t3 = VAL ( win1.text3.value )
t4 = VAL ( win1.text4.value )
t5 = VAL ( win1.text5.value )
t6 = VAL ( win1.text6.value )
IF t4>t1
t1 := t1+30
t2 := t2-1
ENDIF
IF t5>t2
t3 := t3-1
t2 := t2+12
ENDIF
p := t1-t4
p1 := t2-t5
p2 := t3-t6
IF p>=30
p := p-30
p1 := p1+1
ENDIF
IF p1>12
p2 := p2+1
ENDIF
IF t3<=0
MyOut := MSGOKCANCEL(" «—ÌŒ Œÿ√  √ﬂœ „‰ «· «—ÌŒ «·„œŒ·","—”«·… Õÿ√")
p := 0
p1 := 0
p2 := 0
ENDIF
IF t6<=0
MyOut := MSGOKCANCEL(" «—ÌŒ Œÿ√  √ﬂœ „‰ «· «—ÌŒ «·„œŒ·","—”«·… Õÿ√")
p := 0
p1 := 0
p2 := 0
ENDIF
IF p2<0
MyOut := MSGOKCANCEL(" «—ÌŒ Œÿ√  √ﬂœ „‰ «· «—ÌŒ «·„œŒ·","—”«·… Õÿ√")
p := 0
p1 := 0
p2 := 0
ENDIF
IF p1<0
MyOut := MSGOKCANCEL(" «—ÌŒ Œÿ√  √ﬂœ „‰ «· «—ÌŒ «·„œŒ·","—”«·… Õÿ√")
p := 0
p1 := 0
p2 := 0
ENDIF
IF t6>t3
MyOut := MSGOKCANCEL(" «—ÌŒ Œÿ√  √ﬂœ „‰ «· «—ÌŒ «·„œŒ·","—”«·… Õÿ√")
p := 0
p1 := 0
p2 := 0
ENDIF
IF p<0
MyOut := MSGOKCANCEL(" «—ÌŒ Œÿ√  √ﬂœ „‰ «· «—ÌŒ «·„œŒ·","—”«·… Õÿ√")
p := 0
p1 := 0
p2 := 0
ENDIF
IF t4>31
MyOut := MSGOKCANCEL(" «—ÌŒ Œÿ√  √ﬂœ „‰ «· «—ÌŒ «·„œŒ·","—”«·… Õÿ√")
p := 0
p1 := 0
p2 := 0
win1.text4.SetFocus ( )
ENDIF
IF t4>29 .and. t5=2
MyOut := MSGOKCANCEL(" «—ÌŒ Œÿ√  √ﬂœ „‰ «· «—ÌŒ «·„œŒ· ‘Â— ›»—«Ì— 28ÌÊ„ «Ê 29 ÌÊ„","—”«·… Õÿ√")
p := 0
p1 := 0
p2 := 0
win1.text4.SetFocus ( )
ENDIF
p = STR ( p )
p1 = STR ( p1 )
p2 = STR ( p2 )
p = ALLTRIM ( p )
p1 = ALLTRIM ( p1 )
p2 = ALLTRIM ( p2 )
win1.text7.Value := p
win1.text8.Value := p1
win1.text9.Value := p2
IF t5>12
MyOut := MSGOKCANCEL(" «—ÌŒ Œÿ√  √ﬂœ „‰ «· «—ÌŒ «·„œŒ· «·”‰… 12 ‘Â— ›ﬁÿ","—”«·… Õÿ√")
p := 0
p1 := 0
p2 := 0
win1.text5.SetFocus ( )
ENDIF
Return Nil
Proc myexit
win1.Release ( )
Return Nil
Proc dd
set century on
date = DATE()
date = DTOC ( date )
y = SUBSTR(date,7,10)
win1.text3.Value := y
m = SUBSTR(date,1,2)
win1.text2.Value := m
d = SUBSTR(date,4,4)
win1.text1.Value := d
win1.text4.SetFocus ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_AS
START DOUBLES
Return
*-------------------------------------------------------------------*
