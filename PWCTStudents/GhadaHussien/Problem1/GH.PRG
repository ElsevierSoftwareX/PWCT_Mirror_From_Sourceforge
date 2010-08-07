*---------------------------------------------------------------------------*
* Time : 22:26:16    Date : 08/06/2010
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


Resistance R_GH_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_GH_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 591 ;
HEIGHT 417 ;
ICON "PWCTICON" ;
TITLE "ghada calc" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {128,255,0} 

@ 25 ,6 LABEL lbl1 ;
VALUE "the first" ;
WIDTH 92 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {255,128,0}
@ 90 ,6 LABEL lbl2 ;
VALUE "the second" ;
WIDTH 100 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {255,128,64}
@ 155 ,6 LABEL lbl3 ;
VALUE "precentage" ;
WIDTH 103 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 25 ,125 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 90 ,125 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 159 ,125 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,255,255} ;
INPUTMASK ""
@ 154 ,345 BUTTONEX btn1;
CAPTION "calculate precentage";
FONTCOLOR {255,128,0};
BACKCOLOR {192,192,192};
ON CLICK calc()  ;
WIDTH 168 HEIGHT 39 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 222 ,6 LABEL lbl4 ;
VALUE "sum" ;
WIDTH 99 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 218 ,125 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,255,255} ;
INPUTMASK ""
@ 212 ,345 BUTTONEX btn2;
CAPTION "calculate sum";
FONTCOLOR {255,128,0};
BACKCOLOR {192,192,192};
ON CLICK sum()  ;
WIDTH 169 HEIGHT 38 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+" "+"%"
Return Nil
Proc sum
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
sum := (num1+num2)
sum = STR ( sum )
sum = ALLTRIM ( sum )
win1.text4.Value := sum
Return Nil


End Of Resistance

INIT PROCEDURE Init_GH
START DOUBLES
Return
*-------------------------------------------------------------------*
