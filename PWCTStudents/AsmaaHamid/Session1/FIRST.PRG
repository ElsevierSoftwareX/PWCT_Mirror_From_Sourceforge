*---------------------------------------------------------------------------*
* Time : 19:31:02    Date : 07/25/2010
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


Resistance R_FIRST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FIRST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Asmaa Hamid" ;
MAIN ;
BACKCOLOR {128,128,128} 

@ 45 ,112 LABEL lbl1 ;
VALUE "Thanks Alot" ;
WIDTH 199 ;
HEIGHT 60 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,128}
@ 216 ,279 BUTTONEX btn1;
CAPTION "Close";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 44 ;
FONT "Arial" SIZE 26 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_FIRST
START DOUBLES
Return
*-------------------------------------------------------------------*
