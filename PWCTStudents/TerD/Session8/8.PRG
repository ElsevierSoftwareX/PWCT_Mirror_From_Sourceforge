*---------------------------------------------------------------------------*
* Time : 00:56:11    Date : 06/17/2011
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


Resistance R_8_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_8_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 482 ;
HEIGHT 304 ;
ICON "PWCTICON" ;
TITLE "ÇáÚÏÏ ÇáíÏæì" ;
MAIN ;
BACKCOLOR {0,64,128} 

@ 62 ,201 LABEL lbl1 ;
VALUE "0" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,255}
@ 142 ,157 BUTTONEX btn1;
CAPTION "ÚÏ";
ON CLICK counnum ()  ;
WIDTH 105 HEIGHT 45 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc counnum
counnum := win1.lbl1.Value
counnum = VAL ( counnum )
counnum := counnum+1
counnum = STR ( counnum )
counnum = ALLTRIM ( counnum )
win1.lbl1.Value := counnum
Return Nil


End Of Resistance

INIT PROCEDURE Init_8
START DOUBLES
Return
*-------------------------------------------------------------------*
