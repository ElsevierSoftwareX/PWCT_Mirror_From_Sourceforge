*---------------------------------------------------------------------------*
* Time : 22:52:02    Date : 05/17/2010
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_PROGRESS_BAR_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROGRESS_BAR_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 271 ;
HEIGHT 314 ;
ICON "PWCTICON" ;
TITLE "Progress bar by Sameh Kamel" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

win1.Center ( )
@ 5 ,7 LABEL lbl1 ;
VALUE "Progress Bar" ;
WIDTH 244 ;
HEIGHT 59 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 65 ,9 PROGRESSBAR Progress1;
RANGE 0 , 50 ;
VALUE 0 ;
WIDTH 203 ;
HEIGHT 24 ;
BACKCOLOR {255,255,255} ;
FORECOLOR {0,0,0} ;
TOOLTIP ""
@ 65 ,228 PROGRESSBAR Progress2;
RANGE 0 , 50 ;
VALUE 0 ;
WIDTH 25 ;
HEIGHT 203 ;
VERTICAL ;
SMOOTH ;
BACKCOLOR {255,255,255} ;
FORECOLOR {0,0,0} ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 50 ;
Action Loading()
@ 238 ,9 BUTTONEX btn1;
CAPTION "Return";
ON CLICK Restart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1

Proc Loading
PV := win1.Progress1.Value
PV2 := win1.Progress2.Value
IF PV=50
win1.Timer1.Value := False
ELSE
win1.Progress1.Value := PV+1
win1.Progress2.Value := PV2+1
ENDIF
Return Nil
Proc Restart
win1.Progress1.Value := 0
win1.Progress2.Value := 0
win1.Timer1.Enabled := True
Return Nil


End Of Resistance

INIT PROCEDURE Init_PROGRESS_BAR
START DOUBLES
Return
*-------------------------------------------------------------------*
