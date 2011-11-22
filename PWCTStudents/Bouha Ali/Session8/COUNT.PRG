*---------------------------------------------------------------------------*
* Time : 01:11:13    Date : 11/22/2011
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


Resistance R_COUNT_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNT_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 430 ;
HEIGHT 137 ;
ICON "PWCTICON" ;
TITLE "counter" ;
MAIN ;
BACKCOLOR {255,128,0} 

@ 29 ,187 LABEL lbl1 ;
VALUE "0" ;
WIDTH 60 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 29 ,276 BUTTONEX btn1;
CAPTION "Count";
ON CLICK mycount()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 29 ,33 BUTTONEX btn2;
CAPTION "Discount";
ON CLICK mydiscount()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycount
num1 := win1.lbl1.Value
num1 = VAL ( num1 )
num1 := num1+1
num1 = STR ( num1 )
num1 = ALLTRIM ( num1 )
win1.lbl1.Value := num1
Return Nil
Proc mydiscount
num1 := win1.lbl1.Value
num1 = VAL ( num1 )
num1 := num1-1
num1 = STR ( num1 )
num1 = ALLTRIM ( num1 )
win1.lbl1.Value := num1
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNT
START DOUBLES
Return
*-------------------------------------------------------------------*
