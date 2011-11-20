*---------------------------------------------------------------------------*
* Time : 10:40:49    Date : 11/20/2011
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


Resistance R_SHOW_MESSAGE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SHOW_MESSAGE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 466 ;
HEIGHT 399 ;
ICON "PWCTICON" ;
TITLE "Show Message" ;
MAIN ;
NOSIZE ;
BACKCOLOR {79,171,22} 

@ 300 ,23 BUTTONEX btn1;
CAPTION "close";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 295 ,333 BUTTONEX btn2;
CAPTION "show";
ON CLICK boxmsg()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 24 ,193 LABEL lbl1 ;
VALUE "Title" ;
WIDTH 99 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {77,167,46} ;
FONTCOLOR {0,0,0}
@ 104 ,193 LABEL lbl2 ;
VALUE "Text" ;
WIDTH 104 ;
HEIGHT 37 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {77,167,46} ;
FONTCOLOR {0,0,0}
@ 66 ,128 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {0,0,0} 

@ 146 ,104 TEXTBOX text2;
HEIGHT 117 ;
WIDTH 255 ;
BACKCOLOR {103,160,218} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc boxmsg
bouha := win1.text1.Value
ahmed := win1.text2.Value
MyOut := MSGINFO(ahmed,bouha)
Return Nil


End Of Resistance

INIT PROCEDURE Init_SHOW_MESSAGE
START DOUBLES
Return
*-------------------------------------------------------------------*
