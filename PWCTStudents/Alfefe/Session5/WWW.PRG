*---------------------------------------------------------------------------*
* Time : 01:43:30    Date : 08/13/2011
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


Resistance R_WWW_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WWW_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Ì‰ «‰«" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 103 ,217 BUTTONEX btn1;
CAPTION "Â‰«";
ON CLICK hide1()  ;
WIDTH 78 HEIGHT 48 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 207 ,245 BUTTONEX btn2;
CAPTION "»· Â‰«";
ON CLICK hide2()  ;
WIDTH 78 HEIGHT 48 ;
FONT "Arial" SIZE 20 ;
INVISIBLE ;
TOOLTIP ""
@ 201 ,370 BUTTONEX btn3;
CAPTION "»· Â‰«";
ON CLICK hide3()  ;
WIDTH 78 HEIGHT 48 ;
FONT "Arial" SIZE 20 ;
INVISIBLE ;
TOOLTIP ""
@ 135 ,64 BUTTONEX btn4;
CAPTION "»· Â‰«";
ON CLICK hide4()  ;
WIDTH 82 HEIGHT 47 ;
FONT "Arial" SIZE 20 ;
INVISIBLE ;
TOOLTIP ""
@ 285 ,138 BUTTONEX btn5;
CAPTION "»· Â‰«";
ON CLICK hide5()  ;
WIDTH 82 HEIGHT 47 ;
FONT "Arial" SIZE 20 ;
INVISIBLE ;
TOOLTIP ""
@ 14 ,82 LABEL lbl1 ;
VALUE "·⁄»… Â·  ⁄·„ «Ì‰ «‰«" ;
WIDTH 309 ;
HEIGHT 51 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc hide1
win1.btn1.Hide ( )
win1.btn2.Show ( )
Return Nil
Proc hide2
win1.btn2.Hide ( )
win1.btn3.Show ( )
Return Nil
Proc hide3
win1.btn3.Hide ( )
win1.btn4.Show ( )
Return Nil
Proc hide4
win1.btn4.Hide ( )
win1.btn5.Show ( )
Return Nil
Proc hide5
win1.btn5.Hide ( )
win1.btn1.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WWW
START DOUBLES
Return
*-------------------------------------------------------------------*
