*---------------------------------------------------------------------------*
* Time : 23:09:34    Date : 12/07/2011
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
WIDTH 205 ;
HEIGHT 348 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ" ;
MAIN ;
BACKCOLOR {0,128,255} 

@ 8 ,145 LABEL lbl1 ;
VALUE "„‹‹‹‹‰" ;
WIDTH 47 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 50 ,145 LABEL lbl2 ;
VALUE "≈·‹‹‹‹Ï" ;
WIDTH 47 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 4 ,19 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 100 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 46 ,19 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 100 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 86 ,19 EDITBOX edit1;
WIDTH 100 ;
HEIGHT 166;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 265 ,19 BUTTONEX btn1;
CAPTION "⁄‹‹‹‹œ «·«‰";
ON CLICK mycounter()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 183 ,148 BUTTONEX btn2;
CAPTION "≈€·«ﬁ";
ON CLICK myclose()  ;
WIDTH 37 HEIGHT 109 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc mycounter
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x = num1 TO num2 STEP 1
x3 = STR ( x )
x3 = ALLTRIM ( x3 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x3
else
Win1.Edit1.VALUE := x3
endif
Next
Return Nil
Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
Return
*-------------------------------------------------------------------*
