*---------------------------------------------------------------------------*
* Time : 18:50:59    Date : 08/04/2010
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


Resistance R_CALCULATOR_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CALCULATOR_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 439 ;
HEIGHT 399 ;
ICON "PWCTICON" ;
TITLE "Shereen Hassan" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {128,255,128} 

@ 10 ,145 LABEL lbl1 ;
VALUE "   My Calculator" ;
WIDTH 156 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}
@ 78 ,12 LABEL lbl2 ;
VALUE "First Number" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 123 ,9 LABEL lbl3 ;
VALUE "Second Number" ;
WIDTH 110 ;
HEIGHT 26 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 171 ,11 LABEL lbl4 ;
VALUE "Result" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 72 ,134 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "0." ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 117 ,133 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "0." ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 161 ,133 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 235 ,17 BUTTONEX btn1;
CAPTION "SUM(+)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Sum()  ;
WIDTH 59 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,87 BUTTONEX btn2;
CAPTION "SUB(-)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Sub()  ;
WIDTH 55 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 234 ,155 BUTTONEX btn3;
CAPTION "MUL(*)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Mul()  ;
WIDTH 57 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 234 ,225 BUTTONEX btn4;
CAPTION "DIV(/)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Mydiv()  ;
WIDTH 59 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,289 BUTTONEX btn5;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,255};
ON CLICK Myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 233 ,299 BUTTONEX btn6;
CAPTION "Pers(%)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Mypers()  ;
WIDTH 65 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 286 ,16 BUTTONEX btn7;
CAPTION "Clear";
ON CLICK Clear()  ;
WIDTH 70 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myclose
win1.Release ( )
Return Nil
Proc Mypers
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+" "+"%"
Return Nil
Proc Mydiv
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
div := num1/num2
div = STR ( div )
div = ALLTRIM ( div )
win1.text3.Value := div
Return Nil
Proc Mul
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
mul := num1*num2
mul = STR ( mul )
mul = ALLTRIM ( mul )
win1.text3.Value := mul
Return Nil
Proc Sub
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
sub := num1-num2
sub = STR ( sub )
sub = ALLTRIM ( sub )
win1.text3.Value := sub
Return Nil
Proc Sum
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
sum := num1+num2
sum = STR ( sum )
sum = ALLTRIM ( sum )
win1.text3.Value := sum
Return Nil
Proc Clear
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num3 = VAL ( win1.text3.value )
num1 := 0
num2 := 0
num3 := 0
num1 = STR ( num1 )
num2 = STR ( num2 )
num3 = STR ( num3 )
num1 = ALLTRIM ( num1 )
num2 = ALLTRIM ( num2 )
num3 = ALLTRIM ( num3 )
win1.text1.Value := num1
win1.text2.Value := num2
win1.text3.Value := num3
Return Nil


End Of Resistance

INIT PROCEDURE Init_CALCULATOR
START DOUBLES
Return
*-------------------------------------------------------------------*
