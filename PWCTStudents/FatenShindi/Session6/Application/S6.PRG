*---------------------------------------------------------------------------*
* Time : 13:49:25    Date : 08/01/2010
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


Resistance R_S6_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_S6_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 760 ;
HEIGHT 468 ;
ICON "PWCTICON" ;
TITLE "⁄œ«œ›« ‰" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 0 ,-6 IMAGE image1;
PICTURE "7.JPG";
STRETCH ;
WIDTH 764 HEIGHT 440
@ 13 ,709 LABEL lbl1 ;
VALUE "„‰" ;
WIDTH 37 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 15 ,564 LABEL lbl2 ;
VALUE "«·Ï" ;
WIDTH 31 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 16 ,633 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 63 ;
BACKCOLOR {255,196,196} ;
FONTCOLOR {128,128,0} ;
INPUTMASK "99999"
@ 14 ,437 TEXTBOX text2;
HEIGHT 31 ;
WIDTH 61 ;
BACKCOLOR {255,202,202} ;
FONTCOLOR {128,128,0} ;
INPUTMASK "99999"
@ 14 ,227 BUTTONEX btn1;
CAPTION "⁄œ «·«‰";
FONTCOLOR {128,128,0};
ON CLICK MYCOUNTER()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
BOLD ;
ITALIC ;
TOOLTIP ""
@ 96 ,519 EDITBOX edit1;
WIDTH 235 ;
HEIGHT 311;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,176,176} ;
FONTCOLOR {128,128,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MYCOUNTER
NUM1 := WIN1.TEXT1.Value
NUM2 := WIN1.TEXT2.Value
num1 = VAL ( num1 )
num2 = VAL ( num2 )
FOR x = NUM1 TO NUM2 STEP 1
X2 = STR ( X )
X2 = ALLTRIM ( X2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + X2
else
Win1.Edit1.VALUE := X2
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_S6
START DOUBLES
Return
*-------------------------------------------------------------------*
