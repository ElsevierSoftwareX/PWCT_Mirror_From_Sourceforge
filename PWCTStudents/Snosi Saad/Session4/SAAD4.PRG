*---------------------------------------------------------------------------*
* Time : 19:34:05    Date : 05/20/2011
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


Resistance R_SAAD4_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD4_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 533 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "«· ·«⁄» »«·√“—«—" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 386 ,211 BUTTONEX btnshow;
CAPTION "≈ŸÂ«— «·√“—«—";
ON CLICK Myshow()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 165 ,95 BUTTONEX btn1;
CAPTION "01";
ON CLICK Myhide1()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 165 ,211 BUTTONEX btn2;
CAPTION "02";
ON CLICK Myhide2()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 165 ,326 BUTTONEX btn3;
CAPTION "03";
ON CLICK Myhide3()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 206 ,95 BUTTONEX btn4;
CAPTION "04";
ON CLICK Myhide4()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 206 ,211 BUTTONEX btn5;
CAPTION "05";
ON CLICK Myhide5()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 206 ,326 BUTTONEX btn6;
CAPTION "06";
ON CLICK Myhide6()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 247 ,95 BUTTONEX btn7;
CAPTION "07";
ON CLICK Myhide7()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 247 ,211 BUTTONEX btn8;
CAPTION "08";
ON CLICK Myhide8()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 247 ,326 BUTTONEX btn9;
CAPTION "09";
ON CLICK Myhide9()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 45 ,189 LABEL t4 ;
VALUE "!! «· ÿ»Ìﬁ —ﬁ„ 04" ;
WIDTH 145 ;
HEIGHT 33 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
END WINDOW

win1.btnshow.Hide ( )
win1.t4.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc Myhide1
win1.btn1.Hide ( )
win1.t4.Hide ( )
Return Nil
Proc Myhide2
win1.btn2.Hide ( )
win1.t4.Hide ( )
Return Nil
Proc Myhide3
win1.btn3.Hide ( )
win1.t4.Hide ( )
Return Nil
Proc Myhide4
win1.btn4.Hide ( )
win1.t4.Hide ( )
Return Nil
Proc Myhide5
win1.btn5.Hide ( )
win1.t4.Hide ( )
Return Nil
Proc Myhide6
win1.btn6.Hide ( )
win1.t4.Hide ( )
Return Nil
Proc Myhide7
win1.btn7.Hide ( )
win1.t4.Hide ( )
Return Nil
Proc Myhide8
win1.btn8.Hide ( )
win1.btnshow.Show ( )
win1.t4.Hide ( )
Return Nil
Proc Myhide9
win1.btn9.Hide ( )
win1.t4.Hide ( )
Return Nil
Proc Myshow
win1.btn1.Show ( )
win1.btn2.Show ( )
win1.btn3.Show ( )
win1.btn4.Show ( )
win1.btn5.Show ( )
win1.btn6.Show ( )
win1.btn7.Show ( )
win1.btn8.Show ( )
win1.btn9.Show ( )
win1.t4.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD4
START DOUBLES
Return
*-------------------------------------------------------------------*
