*---------------------------------------------------------------------------*
* Time : 22:18:45    Date : 09/05/2011
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


Resistance R_7_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_7_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 486 ;
HEIGHT 386 ;
ICON "PWCTICON" ;
TITLE "7th app - M.F" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {255,255,255} 

@ 42 ,9 LABEL lbl1 ;
VALUE "Message Title" ;
WIDTH 161 ;
HEIGHT 39 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 94 ,9 LABEL lbl2 ;
VALUE "Message" ;
WIDTH 146 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 263 ,89 BUTTONEX btn1;
CAPTION "Show message";
ON CLICK msg()  ;
WIDTH 165 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 263 ,290 BUTTONEX btn2;
CAPTION "Exit";
ON CLICK MSGINFO( title() ) ;
WIDTH 100 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 41 ,178 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 267 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 94 ,178 TEXTBOX text2;
HEIGHT 137 ;
WIDTH 267 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc msg
x1 := win1.text1.Value
x2 := win1.text2.Value
MyOut := MSGBOX(x2,x1)
Return Nil
Proc title
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_7
START DOUBLES
Return
*-------------------------------------------------------------------*
