*---------------------------------------------------------------------------*
* Time : 18:01:26    Date : 10/10/2011
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


Resistance R_C1_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_C1_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 292 ;
HEIGHT 377 ;
ICON "PWCTICON" ;
TITLE "Mr. Ahmed" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 23 ,160 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 87 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
CENTERALIGN ;
FONTCOLOR {0,128,0}
@ 90 ,160 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ï" ;
WIDTH 86 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
CENTERALIGN ;
FONTCOLOR {0,128,0}
@ 161 ,161 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 87 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
CENTERALIGN ;
FONTCOLOR {0,128,0}
@ 222 ,61 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ…";
ON CLICK Calc()  ;
WIDTH 142 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 22 ,20 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 117 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,64,0} 

@ 88 ,20 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 115 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,64,0} 

@ 162 ,20 TEXTBOX text3;
HEIGHT 29 ;
WIDTH 115 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,64,0} 

@ 293 ,19 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK Myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+""+"%"
Return Nil
Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_C1
START DOUBLES
Return
*-------------------------------------------------------------------*
