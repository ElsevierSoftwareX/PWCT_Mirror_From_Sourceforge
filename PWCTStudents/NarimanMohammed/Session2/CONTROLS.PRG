*---------------------------------------------------------------------------*
* Time : 05:52:15    Date : 07/15/2010
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


Resistance R_CONTROLS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONTROLS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 472 ;
HEIGHT 328 ;
ICON "PWCTICON" ;
TITLE "NARIMAN" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 24 ,20 LABEL lbl1 ;
VALUE "Computer's Parts" ;
WIDTH 249 ;
HEIGHT 65 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 253 ,352 BUTTONEX btn1;
CAPTION "Exit";
FONTCOLOR {128,0,255};
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 253 ,239 BUTTONEX btn2;
CAPTION "Details";
FONTCOLOR {128,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
ADJUST ;
TOOLTIP ""
@ 59 ,28 LISTBOX list1;
WIDTH 188 ;
HEIGHT 182 ;
ITEMS {"scanner","printer","speaker","Hard","mouse","keyboard","flash memory","monitor"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 254 ,28 COMBOBOX combo1;
WIDTH 188 ;
ITEMS {"scanner","printer","speaker","Hard","mouse","keyboard","flash memory","monitor"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,0}
@ 56 ,293 IMAGE image1;
PICTURE "N100000725834989_7973.JPG";
WIDTH 130 HEIGHT 103
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_CONTROLS
START DOUBLES
Return
*-------------------------------------------------------------------*
