*---------------------------------------------------------------------------*
* Time : 07:36:34    Date : 07/31/2010
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


Resistance R_PER_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PER_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "FATEN" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 0 ,6 IMAGE image1;
PICTURE "L.JPG";
STRETCH ;
WIDTH 500 HEIGHT 359
@ 187 ,300 TEXTBOX text1;
HEIGHT 24 ;
WIDTH 133 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 218 ,299 TEXTBOX text2;
HEIGHT 27 ;
WIDTH 134 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 249 ,299 TEXTBOX text3;
HEIGHT 27 ;
WIDTH 135 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 313 ,178 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ…";
FONTCOLOR {0,0,0};
ON CLICK CALC()  ;
WIDTH 173 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 186 ,438 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 51 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 219 ,437 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 250 ,438 LABEL lbl3 ;
VALUE "«·‰”»…" ;
WIDTH 50 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc CALC
NUM1 = VAL ( WIN1.TEXT1.VALUE )
NUM2 = VAL ( WIN1.TEXT2.VALUE )
PERS := (NUM1/NUM2)*100
PERS = STR ( PERS )
pers = ALLTRIM ( pers )
WIN1.TEXT3.Value := PERS+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_PER
START DOUBLES
Return
*-------------------------------------------------------------------*
