*---------------------------------------------------------------------------*
* Time : 08:49:12    Date : 05/23/2011
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


Resistance R_SAAD_8_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_8_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 487 ;
HEIGHT 197 ;
ICON "PWCTICON" ;
TITLE "ÚÏÇÏ íÏæí" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {85,148,210} 

@ 16 ,42 LABEL lbl1 ;
VALUE "0" ;
WIDTH 236 ;
HEIGHT 137 ;
FONT "Baskerville Old Face" SIZE 72  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 62 ,355 BUTTONEX btn1;
CAPTION "ÃÖÝ 1";
ON CLICK pro()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
FLAT ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc pro
crn := win1.lbl1.Value
crn = VAL ( crn )
crn1 := crn+1
crn1 = STR ( crn1 )
crn1 = ALLTRIM ( crn1 )
win1.lbl1.Value := crn1
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD_8
START DOUBLES
Return
*-------------------------------------------------------------------*
