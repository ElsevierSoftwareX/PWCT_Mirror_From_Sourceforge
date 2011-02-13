*---------------------------------------------------------------------------*
* Time : 22:56:47    Date : 02/12/2011
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


Resistance R_SO7_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SO7_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 283 ,331 BUTTONEX btn1;
CAPTION "ok";
ON CLICK ok()  ;
WIDTH 100 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 287 ,27 BUTTONEX btn2;
CAPTION "close";
ON CLICK close()  ;
WIDTH 118 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 25 ,33 LABEL lbl1 ;
VALUE "title" ;
WIDTH 110 ;
HEIGHT 49 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 132 ,33 LABEL lbl2 ;
VALUE "message" ;
WIDTH 124 ;
HEIGHT 49 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 14 ,175 TEXTBOX text1;
HEIGHT 47 ;
WIDTH 196 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 128 ,178 TEXTBOX text2;
HEIGHT 108 ;
WIDTH 193 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc ok
sozi := win1.text1.Value
souzan := win1.text2.Value
MyOut := MSGBOX(souzan,sozi)
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SO7
START DOUBLES
Return
*-------------------------------------------------------------------*
