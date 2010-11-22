#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 12:50:05    Date : 10/05/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.4 (Nova) [2006-2009]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance R929449324_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R929449324_1() code
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
SS_ESARES("Circuits\Main\Main\Main",53)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 )",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 )",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","procedure",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure theadd",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win2 )",61,64)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",73,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t1  )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",80,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t2  )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",89,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b1 )",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b2 )",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b3 )",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",121,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",128,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",135,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( pro  )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",141,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lb1 )",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",149,153)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win2'",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",159,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure theminus",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win3 )",163,166)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",167,172)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Center ( )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",175,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",182,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( m1 )",187,188)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",190,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( m2 )",193,194)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",196,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( m3 )",199,200)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",202,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( l1 )",205,206)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",207,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( l2 )",212,213)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",214,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( l3 )",219,220)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",221,225)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t3  )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",227,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t4  )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",234,239)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( pro2  )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",241,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( z1 )",247,248)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",249,253)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win3'",254,256)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",257,258)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",259,260)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure theplus",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win4 )",263,266)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",267,272)
SS_ESASTEP("Circuits\Main\Main\Main","win4.Center ( )",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",275,280)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",282,286)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( P1 )",287,288)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",290,292)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( P2 )",293,294)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",296,298)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( P3 )",299,300)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",302,304)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( l4 )",305,306)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",307,311)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( l5 )",312,313)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",314,318)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( l6 )",319,320)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",321,325)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t5  )",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",327,332)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( pro3  )",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",334,339)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t6  )",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",341,346)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( z2 )",347,348)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",349,353)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win4'",354,356)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",357,358)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",359,360)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure thedivi",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win5 )",363,366)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",367,372)
SS_ESASTEP("Circuits\Main\Main\Main","win5.Center ( )",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",375,380)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",382,386)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( D1 )",387,388)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",390,392)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( D2 )",393,394)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",396,398)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( D3 )",399,400)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",402,404)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( l7 )",405,406)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",407,411)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( l8 )",412,413)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",414,418)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( l9 )",419,420)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",421,425)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t7  )",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",427,432)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( pro4  )",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",434,439)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t8  )",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",441,446)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( z3 )",447,448)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",449,453)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win5'",454,456)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",457,458)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",459,460)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",461,461)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit1",462,462)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","WIN1.Release ( )",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",464,464)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit2",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","WIN2.Release ( )",466,466)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit3",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","WIN3.Release ( )",469,469)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit4",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","WIN4.Release ( )",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",473,473)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit5",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","WIN5.Release ( )",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add",477,477)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = int(rand()*30)",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","n2 = int(rand()*20)",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = CONVERT n1 TO STRING",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","n2 = CONVERT n2 TO STRING",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = All Trim n1",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","n2 = All Trim n2",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text1.Value := n1",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","win2.t2.Value := n2",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text2.Value := ''",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text2.SetFocus ( )",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ans_add",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","s1 = CONVERT win2.text1.value TO Numeric",490,490)
SS_ESASTEP("Circuits\Main\Main\Main","s2 = CONVERT win2.t2.value TO Numeric",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","n3 = s1+s2",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","pro1 = CONVERT win2.pro.value TO Numeric",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","an = CONVERT win2.text2.value TO Numeric",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( an=n3 )",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„„ «“ «Ã«»… ’ÕÌÕ…' Title '«Ã«»…' Type: Message Box",496,496)
SS_ESASTEP("Circuits\Main\Main\Main","pro1 = pro1+10",497,497)
SS_ESASTEP("Circuits\Main\Main\Main","pro1 = CONVERT pro1 TO STRING",498,498)
SS_ESASTEP("Circuits\Main\Main\Main","pro1 = All Trim pro1",499,499)
SS_ESASTEP("Circuits\Main\Main\Main","win2.pro.Value := pro1",500,500)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text1.Value := ''",501,501)
SS_ESASTEP("Circuits\Main\Main\Main","win2.t2.Value := ''",502,502)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text2.Value := ''",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '≈Ã«»… Œ«ÿ∆… ”Ì „ Œ’„ 10 œ—Ã«  „‰ —’Ìœﬂ Õ«Ê· „—… √Œ—Ï' Title ' ÕﬁÌﬁ «Ã«»…' Type: Message Box",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text2.Value := ''",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text2.SetFocus ( )",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","pro1 = pro1-10",508,508)
SS_ESASTEP("Circuits\Main\Main\Main","pro1 = CONVERT pro1 TO STRING",509,509)
SS_ESASTEP("Circuits\Main\Main\Main","pro1 = All Trim pro1",510,510)
SS_ESASTEP("Circuits\Main\Main\Main","win2.pro.Value := pro1",511,511)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",512,512)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",513,513)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure minus",514,514)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","min1 = int(rand()*10)",515,515)
SS_ESASTEP("Circuits\Main\Main\Main","min2 = int(rand()*20)",516,516)
SS_ESASTEP("Circuits\Main\Main\Main","min1 = CONVERT min1 TO STRING",517,517)
SS_ESASTEP("Circuits\Main\Main\Main","min2 = CONVERT min2 TO STRING",518,518)
SS_ESASTEP("Circuits\Main\Main\Main","min1 = All Trim min1",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","min2 = All Trim min2",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text3.Value := min1",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","win3.t4.Value := min2",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text4.Value := ''",523,523)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text4.SetFocus ( )",524,524)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",525,525)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ans_minus",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","s3 = CONVERT win3.text3.value TO Numeric",527,527)
SS_ESASTEP("Circuits\Main\Main\Main","s4 = CONVERT win3.t4.value TO Numeric",528,528)
SS_ESASTEP("Circuits\Main\Main\Main","n4 = s4-s3",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","pro2 = CONVERT win3.pro2.value TO Numeric",530,530)
SS_ESASTEP("Circuits\Main\Main\Main","an1 = CONVERT win3.text4.value TO Numeric",531,531)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( an1=n4 )",532,532)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„„ «“ «Ã«»… ’ÕÌÕ…' Title '«Ã«»…' Type: Message Box",533,533)
SS_ESASTEP("Circuits\Main\Main\Main","pro2 = pro2+10",534,534)
SS_ESASTEP("Circuits\Main\Main\Main","pro2 = CONVERT pro2 TO STRING",535,535)
SS_ESASTEP("Circuits\Main\Main\Main","pro2 = All Trim pro2",536,536)
SS_ESASTEP("Circuits\Main\Main\Main","win3.pro2.Value := pro2",537,537)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text3.Value := ''",538,538)
SS_ESASTEP("Circuits\Main\Main\Main","win3.t4.Value := ''",539,539)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text4.Value := ''",540,540)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '≈Ã«»… Œ«ÿ∆… ”Ì „ Œ’„ 10 œ—Ã«  „‰ —’Ìœﬂ Õ«Ê· „—… √Œ—Ï' Title ' ÕﬁÌﬁ «Ã«»…' Type: Message Box",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text4.Value := ''",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text4.SetFocus ( )",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","pro2 = pro2-10",545,545)
SS_ESASTEP("Circuits\Main\Main\Main","pro2 = CONVERT pro2 TO STRING",546,546)
SS_ESASTEP("Circuits\Main\Main\Main","pro2 = All Trim pro2",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","win3.pro2.Value := pro2",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure plus",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = int(rand()*10)",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = int(rand()*20)",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = CONVERT p1 TO STRING",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = CONVERT p2 TO STRING",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = All Trim p1",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = All Trim p2",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text5.Value := p1",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","win4.t6.Value := p2",559,559)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text6.Value := ''",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text6.SetFocus ( )",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ans_plus",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","s5 = CONVERT win4.text5.value TO Numeric",564,564)
SS_ESASTEP("Circuits\Main\Main\Main","s6 = CONVERT win4.t6.value TO Numeric",565,565)
SS_ESASTEP("Circuits\Main\Main\Main","n5 = s5*s6",566,566)
SS_ESASTEP("Circuits\Main\Main\Main","pro3 = CONVERT win4.pro3.value TO Numeric",567,567)
SS_ESASTEP("Circuits\Main\Main\Main","an2 = CONVERT win4.text6.value TO Numeric",568,568)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( an2=n5 )",569,569)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„„ «“ «Ã«»… ’ÕÌÕ…' Title '«Ã«»…' Type: Message Box",570,570)
SS_ESASTEP("Circuits\Main\Main\Main","pro3 = pro3+10",571,571)
SS_ESASTEP("Circuits\Main\Main\Main","pro3 = CONVERT pro3 TO STRING",572,572)
SS_ESASTEP("Circuits\Main\Main\Main","pro3 = All Trim pro3",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","win4.pro3.Value := pro3",574,574)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text5.Value := ''",575,575)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text6.Value := ''",576,576)
SS_ESASTEP("Circuits\Main\Main\Main","win4.t6.Value := ''",577,577)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",578,578)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '≈Ã«»… Œ«ÿ∆… ”Ì „ Œ’„ 10 œ—Ã«  „‰ —’Ìœﬂ Õ«Ê· „—… √Œ—Ï' Title ' ÕﬁÌﬁ «Ã«»…' Type: Message Box",579,579)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text6.Value := ''",580,580)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text6.SetFocus ( )",581,581)
SS_ESASTEP("Circuits\Main\Main\Main","pro3 = pro3-10",582,582)
SS_ESASTEP("Circuits\Main\Main\Main","pro3 = CONVERT pro3 TO STRING",583,583)
SS_ESASTEP("Circuits\Main\Main\Main","pro3 = All Trim pro3",584,584)
SS_ESASTEP("Circuits\Main\Main\Main","win4.pro3.Value := pro3",585,585)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",586,586)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",587,587)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure divi",588,588)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","di1 = int(rand()*10)",589,589)
SS_ESASTEP("Circuits\Main\Main\Main","di2 = int(rand()*40)",590,590)
SS_ESASTEP("Circuits\Main\Main\Main","di1 = CONVERT di1 TO STRING",591,591)
SS_ESASTEP("Circuits\Main\Main\Main","di2 = CONVERT di2 TO STRING",592,592)
SS_ESASTEP("Circuits\Main\Main\Main","di1 = All Trim di1",593,593)
SS_ESASTEP("Circuits\Main\Main\Main","di2 = All Trim di2",594,594)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text7.Value := di1",595,595)
SS_ESASTEP("Circuits\Main\Main\Main","win5.t8.Value := di2",596,596)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text8.Value := ''",597,597)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text8.SetFocus ( )",598,598)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",599,599)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ans_divi",600,600)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","s7 = CONVERT win5.text7.value TO Numeric",601,601)
SS_ESASTEP("Circuits\Main\Main\Main","s8 = CONVERT win5.t8.value TO Numeric",602,602)
SS_ESASTEP("Circuits\Main\Main\Main","n6 = s8/s7",603,603)
SS_ESASTEP("Circuits\Main\Main\Main","pro4 = CONVERT win5.pro4.value TO Numeric",604,604)
SS_ESASTEP("Circuits\Main\Main\Main","an3 = CONVERT win5.text8.value TO Numeric",605,605)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( an3=n6 )",606,606)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„„ «“ «Ã«»… ’ÕÌÕ…' Title '«Ã«»…' Type: Message Box",607,607)
SS_ESASTEP("Circuits\Main\Main\Main","pro4 = pro4+10",608,608)
SS_ESASTEP("Circuits\Main\Main\Main","pro4 = CONVERT pro4 TO STRING",609,609)
SS_ESASTEP("Circuits\Main\Main\Main","pro4 = All Trim pro4",610,610)
SS_ESASTEP("Circuits\Main\Main\Main","win5.pro4.Value := pro4",611,611)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text7.Value := ''",612,612)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text8.Value := ''",613,613)
SS_ESASTEP("Circuits\Main\Main\Main","win5.t8.Value := ''",614,614)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",615,615)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '≈Ã«»… Œ«ÿ∆… ”Ì „ Œ’„ 10 œ—Ã«  „‰ —’Ìœﬂ Õ«Ê· „—… √Œ—Ï' Title ' ÕﬁÌﬁ «Ã«»…' Type: Message Box",616,616)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text8.Value := ''",617,617)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text8.SetFocus ( )",618,618)
SS_ESASTEP("Circuits\Main\Main\Main","pro4 = pro4-10",619,619)
SS_ESASTEP("Circuits\Main\Main\Main","pro4 = CONVERT pro4 TO STRING",620,620)
SS_ESASTEP("Circuits\Main\Main\Main","pro4 = All Trim pro4",621,621)
SS_ESASTEP("Circuits\Main\Main\Main","win5.pro4.Value := pro4",622,622)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",623,623)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",624,624)
Return
*-------------------------------------------------------------------*
