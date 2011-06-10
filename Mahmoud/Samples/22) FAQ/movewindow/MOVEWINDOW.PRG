*---------------------------------------------------------------------------*
* Time : 18:47:07    Date : 06/06/2011
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


Resistance R_MOVEWINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MOVEWINDOW_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK moveactivewindow()  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

@ 0 ,40 LABEL lbl2 ;
VALUE "    Welcome " ;
ACTION moveactivewindow()  ;
WIDTH 420 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,64,64} ;
FONTCOLOR {0,255,128}
@ 181 ,124 LABEL lbl1 ;
VALUE "You can move the window" ;
ACTION moveactivewindow()  ;
WIDTH 252 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 0 ,461 BUTTONEX btn1;
CAPTION "X";
FONTCOLOR {0,255,128};
BACKCOLOR {64,0,64};
ON CLICK myclose()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
@ 0 ,1 BUTTONEX btn2;
CAPTION "-";
FONTCOLOR {0,255,128};
BACKCOLOR {64,0,64};
ON CLICK mymin()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MoveActiveWindow
DO postmessage WITH GetActiveWindow(), 161 , 2, 0
Return Nil
Proc myclose
win1.Release ( )
Return Nil
Proc mymin
win1.Minimize ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MOVEWINDOW
START DOUBLES
Return
*-------------------------------------------------------------------*
