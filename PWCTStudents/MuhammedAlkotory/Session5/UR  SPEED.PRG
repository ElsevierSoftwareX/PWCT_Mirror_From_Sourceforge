*---------------------------------------------------------------------------*
* Time : 00:05:54    Date : 10/12/2011
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


Resistance R_UR__SPEED_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_UR__SPEED_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ur speed" ;
MAIN ;
BACKCOLOR {0,0,255} 

@ 139 ,83 BUTTONEX btn1;
CAPTION "«÷€ÿ  „— Ì‰ »”—⁄Â Ê” Õ’·  ⁄·Ï Ã«∆“Â";
ON CLICK hide1()  ;
WIDTH 335 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 328 ,20 BUTTONEX btn2;
CAPTION "√‰« Â‰«";
ON CLICK hide2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 222 ,28 BUTTONEX btn3;
CAPTION "‘ﬂ·ﬂ »ÿÏ¡!!";
ON CLICK hide3()  ;
WIDTH 100 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 74 ,206 BUTTONEX btn4;
CAPTION "»«Ì‰ ⁄·Ìﬂ «Ê· „—Â  ” Œœ„ «·›«—Â";
ON CLICK hide4()  ;
WIDTH 249 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 256 ,214 BUTTONEX btn5;
CAPTION "√‰  „‘ ⁄«Ê“  ﬂ”» Ê·« «ÌÂ!!";
ON CLICK hide5()  ;
WIDTH 259 HEIGHT 29 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 14 ,44 BUTTONEX btn6;
CAPTION "·Ê „⁄—› ‘ «·„—Â œÏ Â—Ã⁄ﬂ „‰ «·«Ê· ";
ON CLICK hide6()  ;
WIDTH 287 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

win1.btn2.Hide ( )
win1.btn3.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Hide ( )
win1.btn6.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc hide1
win1.btn1.Hide ( )
win1.btn2.Show ( )
win1.btn3.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Hide ( )
win1.btn6.Hide ( )
Return Nil
Proc hide2
win1.btn1.Hide ( )
win1.btn2.Hide ( )
win1.btn3.Show ( )
win1.btn4.Hide ( )
win1.btn5.Hide ( )
win1.btn6.Hide ( )
Return Nil
Proc hide3
win1.btn1.Hide ( )
win1.btn2.Hide ( )
win1.btn3.Hide ( )
win1.btn4.Show ( )
win1.btn5.Hide ( )
win1.btn6.Hide ( )
Return Nil
Proc hide4
win1.btn1.Hide ( )
win1.btn2.Hide ( )
win1.btn3.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Show ( )
win1.btn6.Hide ( )
Return Nil
Proc hide5
win1.btn1.Hide ( )
win1.btn2.Hide ( )
win1.btn3.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Hide ( )
win1.btn6.Show ( )
Return Nil
Proc hide6
win1.btn1.Show ( )
win1.btn2.Hide ( )
win1.btn3.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Hide ( )
win1.btn6.Hide ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_UR__SPEED
START DOUBLES
Return
*-------------------------------------------------------------------*
