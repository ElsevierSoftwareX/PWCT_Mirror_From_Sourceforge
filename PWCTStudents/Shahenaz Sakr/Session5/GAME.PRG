*---------------------------------------------------------------------------*
* Time : 19:45:01    Date : 06/16/2011
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


Resistance R_GAME_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_GAME_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 385 ;
HEIGHT 264 ;
ICON "PWCTICON" ;
TITLE "where R U game" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 12 ,189 BUTTONEX btn1;
CAPTION "Iam here";
FONTCOLOR {128,64,64};
BACKCOLOR {255,128,128};
ON GOTFOCUS hide1()  ;
WIDTH 158 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
ITALIC ;
TOOLTIP ""
@ 169 ,6 BUTTONEX btn2;
CAPTION "No, no : Iam here";
FONTCOLOR {128,64,64};
BACKCOLOR {255,128,128};
ON GOTFOCUS hide2()  ;
WIDTH 158 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
ITALIC ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

win1.btn2.Hide ( )
Proc hide1
win1.btn1.Hide ( )
win1.btn2.Show ( )
Return Nil
Proc hide2
win1.btn2.Hide ( )
win1.btn1.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_GAME
START DOUBLES
Return
*-------------------------------------------------------------------*
