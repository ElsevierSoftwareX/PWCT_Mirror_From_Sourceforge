*---------------------------------------------------------------------------*
* Time : 18:44:54    Date : 07/08/2011
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


Resistance R_EMPLOEE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EMPLOEE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 722 ;
HEIGHT 497 ;
ICON "PWCTICON" ;
TITLE "»‹—‰‹‹«„Ã «·≈œ«—…" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 2 ,200 LABEL lbl1 ;
VALUE "≈œ«—… ‘∆Ê‰ „ÊŸ›Ì «· ‘€Ì· «·–« Ì" ;
WIDTH 262 ;
HEIGHT 81 ;
FONT "DecoType Naskh" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 392 ,16 BUTTONEX btn1;
CAPTION "Œ‹‹‹‹‹—ÊÃ";
ON CLICK myclose()  ;
WIDTH 94 HEIGHT 45 ;
FONT "Simplified Arabic" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_EMPLOEE
START DOUBLES
Return
*-------------------------------------------------------------------*
