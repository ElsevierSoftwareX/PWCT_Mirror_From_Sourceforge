*---------------------------------------------------------------------------*
* Time : 13:00:26    Date : 10/28/2011
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


Resistance R_MY_FIRST_STEP_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MY_FIRST_STEP_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 358 ;
HEIGHT 230 ;
ICON "PWCTICON" ;
TITLE "My First Step in PWCT" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 17 ,21 LABEL lbl1 ;
VALUE "Hello" ;
WIDTH 100 ;
HEIGHT 69 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 57 ,89 LABEL lbl2 ;
VALUE "My" ;
WIDTH 95 ;
HEIGHT 46 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0}
@ 100 ,132 LABEL lbl3 ;
VALUE "Best" ;
WIDTH 104 ;
HEIGHT 45 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 136 ,203 LABEL lbl4 ;
VALUE "Friends" ;
WIDTH 107 ;
HEIGHT 37 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {198,255,255} ;
FONTCOLOR {123,4,22}
@ 34 ,210 BUTTONEX btn1;
CAPTION "Good Luck";
ON CLICK Myclose()  ;
WIDTH 108 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MY_FIRST_STEP
START DOUBLES
Return
*-------------------------------------------------------------------*
