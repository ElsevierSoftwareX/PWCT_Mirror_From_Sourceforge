*---------------------------------------------------------------------------*
* Time : 20:39:39    Date : 07/26/2011
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


Resistance R_HIDE_GAME_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HIDE_GAME_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "play with me" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,4 LABEL lbl1 ;
VALUE "So you think you can play with me dude !!!" ;
WIDTH 476 ;
HEIGHT 46 ;
FONT "Britannic Bold" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 316 ,158 BUTTONEX btn1;
CAPTION "you cant catch me";
ON CLICK hid1()  ;
WIDTH 183 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 72 ,247 BUTTONEX btn2;
CAPTION "I am not here";
ON CLICK hid2()  ;
WIDTH 165 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 43 ,6 IMAGE image1;
PICTURE "RMOM.JPG";
STRETCH ;
WIDTH 226 HEIGHT 196
END WINDOW

win1.btn2.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc hid1
win1.btn1.Hide ( )
win1.btn2.Show ( )
Return Nil
Proc hid2
win1.btn2.Hide ( )
win1.btn1.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HIDE_GAME
START DOUBLES
Return
*-------------------------------------------------------------------*
