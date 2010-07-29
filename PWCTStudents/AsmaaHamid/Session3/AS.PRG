*---------------------------------------------------------------------------*
* Time : 02:22:41    Date : 07/29/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 574 ;
HEIGHT 427 ;
ICON "PWCTICON" ;
TITLE "calc" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 27 ,454 LABEL lbl1 ;
VALUE "«·„Ã„Ê⁄" ;
ON CLICK calc()  ;
WIDTH 81 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BOLD ;
ITALIC ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,128}
@ 70 ,424 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì" ;
WIDTH 111 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BOLD ;
ITALIC ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,128}
@ 113 ,427 LABEL lbl3 ;
VALUE "«·‰”»Â «·„∆ÊÌÂ" ;
WIDTH 108 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BOLD ;
ITALIC ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,128}
@ 258 ,465 LABEL lbl5 ;
VALUE "Õ«’· «·Ã„⁄" ;
WIDTH 94 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BOLD ;
ITALIC ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,128}
@ 308 ,448 LABEL lbl6 ;
VALUE "Õ«’· «·ÿ—Õ" ;
WIDTH 111 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BOLD ;
ITALIC ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,128}
@ 171 ,278 BUTTONEX btn1;
CAPTION "«·‰”»Â «·„∆ÊÌÂ";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK calc()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
ITALIC ;
TOOLTIP ""
@ 251 ,84 BUTTONEX btn2;
CAPTION "Õ«’· «·Ã„⁄";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
ITALIC ;
TOOLTIP ""
@ 303 ,84 BUTTONEX btn4;
CAPTION "Õ«’· «·ÿ—Õ";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK sub()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
ITALIC ;
TOOLTIP ""
@ 346 ,299 BUTTONEX btn5;
CAPTION "Œ—ÊÃ";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK myclose()  ;
WIDTH 79 HEIGHT 35 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 28 ,178 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
@ 64 ,178 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
@ 250 ,203 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
@ 299 ,203 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
@ 107 ,178 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} ;
INPUTMASK ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose()
win1.Release ( )
Return Nil
Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
percent := (num1/num2)*100
pers = STR ( percent )
pers = ALLTRIM ( pers )
win1.text6.Value := pers+" "+"%"
Return Nil
Proc add
add = VAL ( win1.text1.value )
addd = VAL ( win1.text2.value )
add := add+addd
add = STR ( add )
add = ALLTRIM ( add )
win1.text3.Value := add
Return Nil
Proc sub
sub = VAL ( win1.text1.value )
subb = VAL ( win1.text2.value )
sub := sub-subb
sub = STR ( sub )
sub = ALLTRIM ( sub )
win1.text4.Value := sub
Return Nil


End Of Resistance

INIT PROCEDURE Init_AS
START DOUBLES
Return
*-------------------------------------------------------------------*
