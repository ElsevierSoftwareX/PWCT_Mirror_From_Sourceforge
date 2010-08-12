*---------------------------------------------------------------------------*
* Time : 16:36:14    Date : 08/12/2010
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_TEST2_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST2_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Zinab Percentage" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,128} 

@ 26 ,20 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 90 ,20 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 162 ,20 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 27 ,284 LABEL lbl1 ;
VALUE "      Degree" ;
WIDTH 162 ;
HEIGHT 40 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {0,0,0}
@ 84 ,283 LABEL lbl2 ;
VALUE " Total Degrees" ;
WIDTH 162 ;
HEIGHT 33 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {0,0,0}
@ 153 ,284 LABEL lbl3 ;
VALUE "  percentage" ;
WIDTH 162 ;
HEIGHT 40 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {0,0,0}
@ 235 ,142 BUTTONEX btn1;
CAPTION "Result";
FONTCOLOR {0,0,0};
ON CLICK Calc()  ;
WIDTH 170 HEIGHT 50 ;
FONT "Arial Rounded MT Bold" SIZE 28 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1/num2)*100
Pers = STR ( Pers )
Pers = ALLTRIM ( Pers )
win1.text3.Value := Pers+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST2
START DOUBLES
Return
*-------------------------------------------------------------------*
