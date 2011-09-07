*---------------------------------------------------------------------------*
* Time : 02:23:18    Date : 09/07/2011
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


Resistance R_8_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_8_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 706 ;
HEIGHT 489 ;
ICON "PWCTICON" ;
TITLE "app8 - Mohammed Fathy" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ -16 ,-344 IMAGE cir;
PICTURE "CIR.JPG";
STRETCH ;
WIDTH 657 HEIGHT 288
@ 69 ,50 LABEL lbl1 ;
VALUE "0" ;
WIDTH 182 ;
HEIGHT 206 ;
AUTOSIZE ;
FONT "Arial" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 290 ,8 BUTTONEX asc;
CAPTION "Count Ascending";
ON CLICK count1()  ;
WIDTH 170 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 290 ,203 BUTTONEX des;
CAPTION "Count Descending";
ON CLICK count2()  ;
WIDTH 180 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 14 ,403 IMAGE updown;
PICTURE "UPDOWN.JPG";
STRETCH ;
WIDTH 279 HEIGHT 396
@ 345 ,203 BUTTONEX close;
CAPTION "Close";
ON CLICK exit()  ;
WIDTH 180 HEIGHT 41 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 345 ,8 BUTTONEX reset;
CAPTION "Reset";
ON CLICK res()  ;
WIDTH 170 HEIGHT 41 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc count1
num1 := win1.lbl1.Value
num1 = VAL ( num1 )
num1 := num1 + 1
num1 = STR ( num1 )
num1 = ALLTRIM ( num1 )
win1.lbl1.Value := num1
Return Nil
Proc count2
num2 := win1.lbl1.Value
num2 = VAL ( num2 )
num2 := num2 - 1
num2 = STR ( num2 )
num2 = ALLTRIM ( num2 )
win1.lbl1.Value := num2
Return Nil
Proc exit
win1.Release ( )
Return Nil
Proc res
num3 := win1.lbl1.Value
num3 = VAL ( num3 )
num3 := 0
num3 = STR ( num3 )
num3 = ALLTRIM ( num3 )
win1.lbl1.Value := num3
Return Nil


End Of Resistance

INIT PROCEDURE Init_8
START DOUBLES
Return
*-------------------------------------------------------------------*
