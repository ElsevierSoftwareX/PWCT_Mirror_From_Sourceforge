*---------------------------------------------------------------------------*
* Time : 10:10:41    Date : 10/05/2011
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


Resistance R_HELLO_WORLD_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLO_WORLD_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "hello" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255} 

@ 278 ,318 LABEL lbl1 ;
VALUE "hello world" ;
WIDTH 146 ;
HEIGHT 51 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,64,128}
@ 21 ,16 LABEL lbl2 ;
VALUE "hello world" ;
WIDTH 139 ;
HEIGHT 51 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,64,128}
@ 17 ,330 LABEL lbl3 ;
VALUE "hello world" ;
WIDTH 149 ;
HEIGHT 59 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,64,128}
@ 275 ,19 LABEL lbl4 ;
VALUE "hello world" ;
WIDTH 134 ;
HEIGHT 46 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,64,128}
@ 162 ,172 BUTTONEX btn1;
CAPTION "close";
ON CLICK myclose()  ;
WIDTH 113 HEIGHT 57 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HELLO_WORLD
START DOUBLES
Return
*-------------------------------------------------------------------*
