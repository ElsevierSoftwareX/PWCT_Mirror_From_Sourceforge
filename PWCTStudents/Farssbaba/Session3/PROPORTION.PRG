*---------------------------------------------------------------------------*
* Time : 23:32:52    Date : 05/17/2011
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


Resistance R_PROPORTION_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROPORTION_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 329 ;
HEIGHT 276 ;
ICON "PWCTICON" ;
TITLE "«·‰”»… «·„∆ÊÌ…" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 19 ,238 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 114 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 68 ,226 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì" ;
WIDTH 124 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 119 ,230 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 117 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 9 ,12 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 

@ 58 ,12 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 

@ 113 ,12 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 

@ 166 ,11 BUTTONEX btn1;
CAPTION "√Õ”» «·‰”»… «·„∆ÊÌ…";
FONTCOLOR {0,0,255};
ON CLICK Calc()  ;
WIDTH 201 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1/num2)*100
Pers = STR ( Pers )
Pers = ALLTRIM ( Pers )
win1.text3.Value := Pers+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_PROPORTION
START DOUBLES
Return
*-------------------------------------------------------------------*
