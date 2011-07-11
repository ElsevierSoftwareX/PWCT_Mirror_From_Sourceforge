*---------------------------------------------------------------------------*
* Time : 15:57:23    Date : 07/11/2011
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


Resistance R_11_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_11_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {0,255,64} 

@ 54 ,153 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 210 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 98 ,151 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 210 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 141 ,152 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 210 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 188 ,149 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 210 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 49 ,21 LABEL lbl1 ;
VALUE "height :" ;
WIDTH 102 ;
HEIGHT 24 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 94 ,21 LABEL lbl2 ;
VALUE "width:" ;
WIDTH 108 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 190 ,26 LABEL lbl4 ;
VALUE "title :" ;
WIDTH 101 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,255,64} ;
FONTCOLOR {0,0,0}
@ 266 ,188 BUTTONEX btn1;
CAPTION "«‰‘«¡";
ON CLICK crnt()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 141 ,24 LABEL lbl3 ;
VALUE "color" ;
WIDTH 102 ;
HEIGHT 27 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc crnt
height := win1.text1.Value
width := win1.text2.Value
color := win1.text3.Value
title := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE "&title" ;
MODAL ;
BACKCOLOR {&color} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_11
START DOUBLES
Return
*-------------------------------------------------------------------*
