*---------------------------------------------------------------------------*
* Time : 00:33:12    Date : 07/16/2010
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


Resistance R_CALCULATE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CALCULATE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 419 ;
HEIGHT 378 ;
ICON "PWCTICON" ;
TITLE "Nariman" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 94 ,11 LABEL lbl1 ;
VALUE "Degree" ;
WIDTH 102 ;
HEIGHT 38 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 147 ,11 LABEL lbl2 ;
VALUE "Total" ;
WIDTH 100 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 213 ,11 LABEL lbl3 ;
VALUE "persentage" ;
WIDTH 138 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 24 ,74 LABEL lbl4 ;
VALUE "calculate persentage degree" ;
WIDTH 281 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 296 ,197 BUTTONEX btn1;
CAPTION "Calculate";
ON CLICK calculate()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,154 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 147 ,154 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 217 ,154 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calculate
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
persentage := (num1/num2)*100
persentage = STR ( persentage )
persentage = ALLTRIM ( persentage )
win1.text3.Value := persentage+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_CALCULATE
START DOUBLES
Return
*-------------------------------------------------------------------*
