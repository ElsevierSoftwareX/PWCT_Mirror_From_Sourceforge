*---------------------------------------------------------------------------*
* Time : 03:25:29    Date : 07/30/2011
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


Resistance R_COUNTER_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "counter" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 230 ,197 LABEL lbl1 ;
VALUE "0" ;
WIDTH 60 ;
HEIGHT 50 ;
AUTOSIZE ;
FONT "Matura MT Script Capitals" SIZE 24  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 156 ,121 LABEL lbl2 ;
VALUE "Count with us" ;
WIDTH 222 ;
HEIGHT 47 ;
FONT "Matura MT Script Capitals" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 307 ,157 BUTTONEX btn1;
CAPTION "Count";
FONTCOLOR {255,0,128};
ON CLICK countnum()  ;
WIDTH 119 HEIGHT 41 ;
FONT "arial" SIZE 24 ;
TOOLTIP ""
@ 7 ,35 IMAGE image1;
PICTURE "TEST.JPG";
STRETCH ;
WIDTH 372 HEIGHT 146
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc countnum
cou := win1.lbl1.Value
cou = VAL ( cou )
cou := cou+1
cou = STR ( cou )
cou = ALLTRIM ( cou )
win1.lbl1.Value := cou
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
Return
*-------------------------------------------------------------------*
