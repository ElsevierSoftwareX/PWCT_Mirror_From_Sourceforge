*---------------------------------------------------------------------------*
* Time : 07:54:07    Date : 01/20/2011
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


Resistance R_SO3_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SO3_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 46 ,339 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 107 ;
HEIGHT 46 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {201,241,240} ;
FONTCOLOR {0,64,128}
@ 127 ,341 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì" ;
WIDTH 107 ;
HEIGHT 46 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {201,241,240} ;
FONTCOLOR {0,64,128}
@ 200 ,341 LABEL lbl3 ;
VALUE "«·‰”»Â «·„∆ÊÌ…" ;
WIDTH 107 ;
HEIGHT 46 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {201,241,240} ;
FONTCOLOR {0,64,128}
@ 51 ,40 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 131 ,40 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 207 ,40 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 285 ,40 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ…";
ON CLICK calc()  ;
WIDTH 255 HEIGHT 37 ;
FONT "Arial" SIZE 18 ;
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


End Of Resistance

INIT PROCEDURE Init_SO3
START DOUBLES
Return
*-------------------------------------------------------------------*
