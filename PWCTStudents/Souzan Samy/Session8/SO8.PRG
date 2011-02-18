*---------------------------------------------------------------------------*
* Time : 12:00:16    Date : 02/18/2011
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


Resistance R_SO8_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SO8_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "" ;
MAIN ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 156 ,71 LABEL lbl1 ;
VALUE "0" ;
WIDTH 104 ;
HEIGHT 44 ;
FONT "Arial Narrow" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,64,128}
@ 151 ,334 BUTTONEX btn1;
CAPTION "ÇÖÝ 2";
FONTCOLOR {128,0,64};
ON CLICK count()  ;
WIDTH 107 HEIGHT 44 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc count
count := win1.lbl1.Value
count = VAL ( count )
count := count+2
count = STR ( count )
count = ALLTRIM ( count )
win1.lbl1.Value := count
Return Nil


End Of Resistance

INIT PROCEDURE Init_SO8
START DOUBLES
Return
*-------------------------------------------------------------------*
