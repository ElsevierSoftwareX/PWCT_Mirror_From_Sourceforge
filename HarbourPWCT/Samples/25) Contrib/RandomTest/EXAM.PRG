*---------------------------------------------------------------------------*
* Time : 17:04:49    Date : 10/05/2010
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


Resistance R_EXAM_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EXAM_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 329 ;
HEIGHT 292 ;
ICON "PWCTICON" ;
TITLE "«·⁄„·Ì«  «·Õ”«»Ì… »—„Ã… «»—«ÂÌ„ ⁄»œ «··«Â" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} ;
NOTIFYTOOLTIP " ÿ»Ìﬁ ⁄·Ï «·»—„Ã… »œÊ‰ ﬂÊœ »«” Œœ«„ œ«·…  Ê·Ìœ «·«—ﬁ«„ «·⁄‘Ê«∆Ì…" 

win1.Center ( )
@ 69 ,186 BUTTONEX btn1;
CAPTION "Ã„⁄";
ON CLICK theadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ ·· œ—Ì» ⁄·Ï ⁄„·Ì… «·Ã„⁄"
@ 66 ,8 BUTTONEX btn2;
CAPTION "ÿ—Õ";
ON CLICK theminus()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ ·· œ—Ì» ⁄·Ï ⁄„·Ì… «·ÿ—Õ"
@ 127 ,187 BUTTONEX btn3;
CAPTION "÷—»";
ON CLICK theplus()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ ·· œ—Ì» ⁄·Ï ⁄„·Ì… «·÷—»"
@ 128 ,9 BUTTONEX btn4;
CAPTION "ﬁ”„…";
ON CLICK thedivi()  ;
WIDTH 101 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ ·· œ—Ì» ⁄·Ï ⁄„·Ì… «·ﬁ”„…"
@ 212 ,104 BUTTONEX btn5;
CAPTION "Œ—ÊÃ";
ON CLICK myexit1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ ··Œ—ÊÃ „‰ «·»—‰«„Ã"
@ 9 ,7 LABEL lbl1 ;
VALUE " „«—Ì‰ ⁄·Ï «·⁄„·Ì«  «·Õ”«»Ì…" ;
WIDTH 284 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc theadd
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 367 ;
HEIGHT 331 ;
ICON "PWCTICON" ;
TITLE " œ—Ì»«  ⁄·Ï ⁄„·Ì… «·Ã„⁄" ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,128,0} 

win2.Center ( )
@ 71 ,38 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 53 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 71 ,90 TEXTBOX t1;
HEIGHT 33 ;
WIDTH 29 ;
VALUE "+" ;
READONLY ;
FONT "arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 71 ,117 TEXTBOX t2;
HEIGHT 33 ;
WIDTH 52 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 120 ,37 TEXTBOX text2;
HEIGHT 36 ;
WIDTH 131 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 190 ,213 BUTTONEX b1;
CAPTION "Ã·» ”ƒ«·";
ON CLICK add()  ;
WIDTH 119 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 245 ,212 BUTTONEX b2;
CAPTION " Õﬁﬁ „‰ «·«Ã«»…";
ON CLICK ans_add()  ;
WIDTH 118 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 244 ,9 BUTTONEX b3;
CAPTION "Œ—ÊÃ";
ON CLICK myexit2()  ;
WIDTH 114 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 14 ,29 LABEL lbl1 ;
VALUE " œ—Ì» ⁄·Ï ⁄„·Ì… «·Ã„⁄" ;
WIDTH 236 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 73 ,242 LABEL lbl2 ;
VALUE "«·”ƒ«·" ;
WIDTH 97 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 123 ,244 LABEL lbl3 ;
VALUE "«·≈Ã«»…" ;
WIDTH 99 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 189 ,13 TEXTBOX pro;
HEIGHT 27 ;
WIDTH 49 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 189 ,70 LABEL lb1 ;
VALUE "„Ã„Ê⁄ «·œ—Ã« " ;
WIDTH 98 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win2"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win2"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win2

Return Nil
Proc theminus
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 367 ;
HEIGHT 331 ;
ICON "PWCTICON" ;
TITLE " œ—Ì»«  ⁄·Ï ⁄„·Ì… «·ÿ—Õ" ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,128,0} 

win3.Center ( )
@ 73 ,16 TEXTBOX text3;
HEIGHT 33 ;
WIDTH 57 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 124 ,29 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 115 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 196 ,211 BUTTONEX m1;
CAPTION "Ã·» ”ƒ«·";
ON CLICK minus()  ;
WIDTH 119 HEIGHT 34 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 245 ,212 BUTTONEX m2;
CAPTION " Õﬁﬁ „‰ «·«Ã«»…";
ON CLICK ans_minus()  ;
WIDTH 118 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 244 ,9 BUTTONEX m3;
CAPTION "Œ—ÊÃ";
ON CLICK myexit3()  ;
WIDTH 114 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 14 ,29 LABEL l1 ;
VALUE " œ—Ì» ⁄·Ï ⁄„·Ì… «·ÿ—Õ" ;
WIDTH 236 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 73 ,242 LABEL l2 ;
VALUE "«·”ƒ«·" ;
WIDTH 97 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 123 ,244 LABEL l3 ;
VALUE "«·≈Ã«»…" ;
WIDTH 99 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 73 ,73 TEXTBOX t3;
HEIGHT 33 ;
WIDTH 27 ;
VALUE "-" ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 73 ,99 TEXTBOX t4;
HEIGHT 33 ;
WIDTH 52 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 192 ,47 TEXTBOX pro2;
HEIGHT 27 ;
WIDTH 49 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 193 ,101 LABEL z1 ;
VALUE "„Ã„Ê⁄ «·œ—Ã« " ;
WIDTH 106 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win3"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win3"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win3

Return Nil
Proc theplus
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 367 ;
HEIGHT 331 ;
ICON "PWCTICON" ;
TITLE " œ—Ì»«  ⁄·Ï ⁄„·Ì… «·÷—»" ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,128,0} 

win4.Center ( )
@ 74 ,53 TEXTBOX text5;
HEIGHT 33 ;
WIDTH 54 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 121 ,46 TEXTBOX text6;
HEIGHT 33 ;
WIDTH 149 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 196 ,211 BUTTONEX P1;
CAPTION "Ã·» ”ƒ«·";
ON CLICK plus()  ;
WIDTH 119 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 245 ,212 BUTTONEX P2;
CAPTION " Õﬁﬁ „‰ «·«Ã«»…";
ON CLICK ans_plus()  ;
WIDTH 118 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 244 ,9 BUTTONEX P3;
CAPTION "Œ—ÊÃ";
ON CLICK myexit4()  ;
WIDTH 114 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 14 ,29 LABEL l4 ;
VALUE " œ—Ì» ⁄·Ï ⁄„·Ì… «·÷—»" ;
WIDTH 236 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 73 ,242 LABEL l5 ;
VALUE "«·”ƒ«·" ;
WIDTH 97 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 123 ,244 LABEL l6 ;
VALUE "«·≈Ã«»…" ;
WIDTH 99 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 74 ,107 TEXTBOX t5;
HEIGHT 33 ;
WIDTH 27 ;
VALUE "◊" ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 192 ,47 TEXTBOX pro3;
HEIGHT 27 ;
WIDTH 49 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 74 ,135 TEXTBOX t6;
HEIGHT 33 ;
WIDTH 52 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 193 ,101 LABEL z2 ;
VALUE "„Ã„Ê⁄ «·œ—Ã« " ;
WIDTH 106 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win4"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win4"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win4

Return Nil
Proc thedivi
DEFINE WINDOW win5 ;
AT 10 ,10 ;
WIDTH 367 ;
HEIGHT 331 ;
ICON "PWCTICON" ;
TITLE " œ—Ì»«  ⁄·Ï ⁄„·Ì… «·ﬁ”„…" ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,128,0} 

win5.Center ( )
@ 73 ,56 TEXTBOX text7;
HEIGHT 35 ;
WIDTH 59 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 120 ,37 TEXTBOX text8;
HEIGHT 35 ;
WIDTH 156 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 196 ,211 BUTTONEX D1;
CAPTION "Ã·» ”ƒ«·";
ON CLICK divi()  ;
WIDTH 119 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 245 ,212 BUTTONEX D2;
CAPTION " Õﬁﬁ „‰ «·«Ã«»…";
ON CLICK ans_divi()  ;
WIDTH 118 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 244 ,9 BUTTONEX D3;
CAPTION "Œ—ÊÃ";
ON CLICK myexit5()  ;
WIDTH 114 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 14 ,29 LABEL l7 ;
VALUE " œ—Ì» ⁄·Ï ⁄„·Ì… «·ﬁ”„…" ;
WIDTH 236 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 73 ,242 LABEL l8 ;
VALUE "«·”ƒ«·" ;
WIDTH 97 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 123 ,244 LABEL l9 ;
VALUE "«·≈Ã«»…" ;
WIDTH 99 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 73 ,115 TEXTBOX t7;
HEIGHT 35 ;
WIDTH 27 ;
VALUE "˜" ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 192 ,47 TEXTBOX pro4;
HEIGHT 27 ;
WIDTH 49 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 73 ,141 TEXTBOX t8;
HEIGHT 35 ;
WIDTH 48 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 193 ,101 LABEL z3 ;
VALUE "„Ã„Ê⁄ «·œ—Ã« " ;
WIDTH 106 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win5"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win5"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win5

Return Nil
Proc myexit1
WIN1.Release ( )
Return Nil
Proc myexit2
WIN2.Release ( )
Return Nil
Proc myexit3
WIN3.Release ( )
Return Nil
Proc myexit4
WIN4.Release ( )
Return Nil
Proc myexit5
WIN5.Release ( )
Return Nil
Proc add
n1 := int(rand()*30)
n2 := int(rand()*20)
n1 = STR ( n1 )
n2 = STR ( n2 )
n1 = ALLTRIM ( n1 )
n2 = ALLTRIM ( n2 )
win2.text1.Value := n1
win2.t2.Value := n2
win2.text2.Value := ""
win2.text2.SetFocus ( )
Return Nil
Proc ans_add
s1 = VAL ( win2.text1.value )
s2 = VAL ( win2.t2.value )
n3 := s1+s2
pro1 = VAL ( win2.pro.value )
an = VAL ( win2.text2.value )
IF an=n3
MyOut := MSGBOX("„„ «“ «Ã«»… ’ÕÌÕ…","«Ã«»…")
pro1 := pro1+10
pro1 = STR ( pro1 )
pro1 = ALLTRIM ( pro1 )
win2.pro.Value := pro1
win2.text1.Value := ""
win2.t2.Value := ""
win2.text2.Value := ""
ELSE
MyOut := MSGBOX("≈Ã«»… Œ«ÿ∆… ”Ì „ Œ’„ 10 œ—Ã«  „‰ —’Ìœﬂ Õ«Ê· „—… √Œ—Ï"," ÕﬁÌﬁ «Ã«»…")
win2.text2.Value := ""
win2.text2.SetFocus ( )
pro1 := pro1-10
pro1 = STR ( pro1 )
pro1 = ALLTRIM ( pro1 )
win2.pro.Value := pro1
ENDIF
Return Nil
Proc minus
min1 := int(rand()*10)
min2 := int(rand()*20)
min1 = STR ( min1 )
min2 = STR ( min2 )
min1 = ALLTRIM ( min1 )
min2 = ALLTRIM ( min2 )
win3.text3.Value := min1
win3.t4.Value := min2
win3.text4.Value := ""
win3.text4.SetFocus ( )
Return Nil
Proc ans_minus
s3 = VAL ( win3.text3.value )
s4 = VAL ( win3.t4.value )
n4 := s4-s3
pro2 = VAL ( win3.pro2.value )
an1 = VAL ( win3.text4.value )
IF an1=n4
MyOut := MSGBOX("„„ «“ «Ã«»… ’ÕÌÕ…","«Ã«»…")
pro2 := pro2+10
pro2 = STR ( pro2 )
pro2 = ALLTRIM ( pro2 )
win3.pro2.Value := pro2
win3.text3.Value := ""
win3.t4.Value := ""
win3.text4.Value := ""
ELSE
MyOut := MSGBOX("≈Ã«»… Œ«ÿ∆… ”Ì „ Œ’„ 10 œ—Ã«  „‰ —’Ìœﬂ Õ«Ê· „—… √Œ—Ï"," ÕﬁÌﬁ «Ã«»…")
win3.text4.Value := ""
win3.text4.SetFocus ( )
pro2 := pro2-10
pro2 = STR ( pro2 )
pro2 = ALLTRIM ( pro2 )
win3.pro2.Value := pro2
ENDIF
Return Nil
Proc plus
p1 := int(rand()*10)
p2 := int(rand()*20)
p1 = STR ( p1 )
p2 = STR ( p2 )
p1 = ALLTRIM ( p1 )
p2 = ALLTRIM ( p2 )
win4.text5.Value := p1
win4.t6.Value := p2
win4.text6.Value := ""
win4.text6.SetFocus ( )
Return Nil
Proc ans_plus
s5 = VAL ( win4.text5.value )
s6 = VAL ( win4.t6.value )
n5 := s5*s6
pro3 = VAL ( win4.pro3.value )
an2 = VAL ( win4.text6.value )
IF an2=n5
MyOut := MSGBOX("„„ «“ «Ã«»… ’ÕÌÕ…","«Ã«»…")
pro3 := pro3+10
pro3 = STR ( pro3 )
pro3 = ALLTRIM ( pro3 )
win4.pro3.Value := pro3
win4.text5.Value := ""
win4.text6.Value := ""
win4.t6.Value := ""
ELSE
MyOut := MSGBOX("≈Ã«»… Œ«ÿ∆… ”Ì „ Œ’„ 10 œ—Ã«  „‰ —’Ìœﬂ Õ«Ê· „—… √Œ—Ï"," ÕﬁÌﬁ «Ã«»…")
win4.text6.Value := ""
win4.text6.SetFocus ( )
pro3 := pro3-10
pro3 = STR ( pro3 )
pro3 = ALLTRIM ( pro3 )
win4.pro3.Value := pro3
ENDIF
Return Nil
Proc divi
di1 := int(rand()*10)
di2 := int(rand()*40)
di1 = STR ( di1 )
di2 = STR ( di2 )
di1 = ALLTRIM ( di1 )
di2 = ALLTRIM ( di2 )
win5.text7.Value := di1
win5.t8.Value := di2
win5.text8.Value := ""
win5.text8.SetFocus ( )
Return Nil
Proc ans_divi
s7 = VAL ( win5.text7.value )
s8 = VAL ( win5.t8.value )
n6 := s8/s7
pro4 = VAL ( win5.pro4.value )
an3 = VAL ( win5.text8.value )
IF an3=n6
MyOut := MSGBOX("„„ «“ «Ã«»… ’ÕÌÕ…","«Ã«»…")
pro4 := pro4+10
pro4 = STR ( pro4 )
pro4 = ALLTRIM ( pro4 )
win5.pro4.Value := pro4
win5.text7.Value := ""
win5.text8.Value := ""
win5.t8.Value := ""
ELSE
MyOut := MSGBOX("≈Ã«»… Œ«ÿ∆… ”Ì „ Œ’„ 10 œ—Ã«  „‰ —’Ìœﬂ Õ«Ê· „—… √Œ—Ï"," ÕﬁÌﬁ «Ã«»…")
win5.text8.Value := ""
win5.text8.SetFocus ( )
pro4 := pro4-10
pro4 = STR ( pro4 )
pro4 = ALLTRIM ( pro4 )
win5.pro4.Value := pro4
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_EXAM
START DOUBLES
Return
*-------------------------------------------------------------------*
