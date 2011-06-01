*---------------------------------------------------------------------------*
* Time : 16:15:45    Date : 05/17/2011
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


Resistance R_3_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_3_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 482 ;
HEIGHT 379 ;
ICON "PWCTICON" ;
TITLE "«· ÿ»Ìﬁ —ﬁ„3 Õ”«» «·„⁄œ· «·⁄«„ ·ÿ«·»" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 21 ,365 LABEL lbl1 ;
VALUE "„⁄œ· «·›’· «·√Ê·" ;
WIDTH 96 ;
HEIGHT 24 ;
FONT "Tahoma" SIZE 9  ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 22 ,178 LABEL lbl2 ;
VALUE "„⁄œ· «·›’· «·À«‰Ì" ;
WIDTH 100 ;
HEIGHT 23 ;
FONT "Tahoma" SIZE 9  ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 265 ,212 LABEL lbl3 ;
VALUE "«·„⁄œ· «·⁄‹‹‹‹‹‹‹‹‹«„" ;
WIDTH 93 ;
HEIGHT 28 ;
FONT "Tahoma" SIZE 9  ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 21 ,10 LABEL lbl4 ;
VALUE "„⁄œ· «·›’· «·À«·À" ;
WIDTH 100 ;
HEIGHT 23 ;
FONT "Tahoma" SIZE 9  ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 58 ,376 TEXTBOX text1;
HEIGHT 20 ;
WIDTH 76 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0} 

@ 58 ,196 TEXTBOX text2;
HEIGHT 20 ;
WIDTH 76 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0} 

@ 58 ,25 TEXTBOX text4;
HEIGHT 20 ;
WIDTH 76 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0} 

@ 303 ,220 TEXTBOX text3;
HEIGHT 20 ;
WIDTH 76 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,255} 

@ 303 ,320 BUTTONEX btn1;
CAPTION "Õ”«» «·„⁄œ· «·⁄«„";
FONTCOLOR {0,0,0};
ON CLICK Calc()  ;
WIDTH 133 HEIGHT 20 ;
FONT "Arial" SIZE 11 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num3 = VAL ( win1.text4.value )
Pers := (num1+num2+num3)/3
Pers = STR ( Pers )
Pers = ALLTRIM ( Pers )
win1.text3.Value := Pers
Return Nil


End Of Resistance

INIT PROCEDURE Init_3
START DOUBLES
Return
*-------------------------------------------------------------------*
