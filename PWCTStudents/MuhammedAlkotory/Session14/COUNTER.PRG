*---------------------------------------------------------------------------*
* Time : 05:18:35    Date : 10/14/2011
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


Resistance R_COUNTER_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 333 ;
HEIGHT 327 ;
ICON "PWCTICON" ;
TITLE "counter" ;
MAIN ;
BACKCOLOR {0,255,255} 

@ 26 ,291 LABEL lbl1 ;
VALUE "„‰" ;
WIDTH 35 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 29 ,176 LABEL lbl2 ;
VALUE "«·Ï" ;
WIDTH 36 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 26 ,220 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 56 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 25 ,107 TEXTBOX text2;
HEIGHT 37 ;
WIDTH 53 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 26 ,14 BUTTONEX btn1;
CAPTION "«»œ√ «·«‰";
ON CLICK mycounter()  ;
WIDTH 67 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 67 ,10 EDITBOX edit1;
WIDTH 307 ;
HEIGHT 213;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycounter
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x = num1 TO num2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
Return
*-------------------------------------------------------------------*
