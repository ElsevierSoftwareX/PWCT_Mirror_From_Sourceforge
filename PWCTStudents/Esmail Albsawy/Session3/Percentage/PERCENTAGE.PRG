*---------------------------------------------------------------------------*
* Time : 22:25:22    Date : 08/05/2011
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


Resistance R_PERCENTAGE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PERCENTAGE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 381 ;
HEIGHT 375 ;
ICON "PWCTICON" ;
TITLE "Õ”«» «·‰”»… «·„∆ÊÌ… ·ÿ«·»" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 37 ,253 LABEL lbl1 ;
VALUE "„Ã„Ê⁄ «·ÿ«·»" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,64,128}
@ 102 ,253 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,64,128}
@ 175 ,253 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,64,128}
@ 37 ,43 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,64,128} 

@ 102 ,43 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,64,128} 

@ 175 ,43 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0} 

@ 241 ,82 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ… ··ÿ«·»";
ON CLICK calc()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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

INIT PROCEDURE Init_PERCENTAGE
START DOUBLES
Return
*-------------------------------------------------------------------*
