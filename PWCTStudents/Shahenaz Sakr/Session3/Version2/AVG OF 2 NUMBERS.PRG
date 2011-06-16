*---------------------------------------------------------------------------*
* Time : 14:49:55    Date : 06/15/2011
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


Resistance R_AVG_OF_2_NUMBERS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AVG_OF_2_NUMBERS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 485 ;
HEIGHT 453 ;
ICON "PWCTICON" ;
TITLE "Avg Calculation" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 84 ,7 LABEL lbl1 ;
VALUE "Enter 1st number" ;
WIDTH 146 ;
HEIGHT 37 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {128,0,64}
@ 152 ,7 LABEL lbl2 ;
VALUE "Enter 2nd number" ;
WIDTH 146 ;
HEIGHT 37 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {128,0,64}
@ 285 ,7 LABEL lbl3 ;
VALUE "The Avg Of Two Numbers " ;
WIDTH 213 ;
HEIGHT 41 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {128,0,64}
@ 237 ,54 BUTTONEX btn1;
CAPTION "Press here to calculate the avg";
FONTCOLOR {0,64,128};
BACKCOLOR {128,128,255};
ON CLICK calc()  ;
WIDTH 327 HEIGHT 31 ;
FONT "Arial Narrow" SIZE 18 ;
TOOLTIP ""
@ 80 ,244 TEXTBOX text1;
HEIGHT 38 ;
WIDTH 200 ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,255} 

@ 145 ,241 TEXTBOX text2;
HEIGHT 35 ;
WIDTH 203 ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,255} 

@ 284 ,245 TEXTBOX text3;
HEIGHT 38 ;
WIDTH 200 ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,255} 

@ -2 ,76 LABEL lbl4 ;
VALUE "You are wellcome" ;
WIDTH 269 ;
HEIGHT 40 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 378 ,169 BUTTONEX btn2;
CAPTION "Close";
FONTCOLOR {255,0,0};
BACKCOLOR {192,192,192};
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
avg := (num1+num2)/2
avg = STR ( avg )
avg = ALLTRIM ( avg )
win1.text3.Value := avg
Return Nil


End Of Resistance

INIT PROCEDURE Init_AVG_OF_2_NUMBERS
START DOUBLES
Return
*-------------------------------------------------------------------*
