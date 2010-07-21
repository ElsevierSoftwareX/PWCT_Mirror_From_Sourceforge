*---------------------------------------------------------------------------*
* Time : 04:03:27    Date : 07/06/2010
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


Resistance R_SAMARHAMDY_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAMARHAMDY_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 537 ;
HEIGHT 330 ;
ICON "PWCTICON" ;
TITLE "samarhamdy" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,128} 

@ 25 ,49 LABEL lbl1 ;
VALUE "Samarhamdy" ;
WIDTH 294 ;
HEIGHT 56 ;
FONT "" SIZE 24  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {128,0,128}
@ 232 ,402 BUTTONEX btn1;
CAPTION "Close";
ON CLICK MSGINFO( Myclose() ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAMARHAMDY
START DOUBLES
Return
*-------------------------------------------------------------------*
