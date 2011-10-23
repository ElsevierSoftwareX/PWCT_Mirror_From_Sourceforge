*---------------------------------------------------------------------------*
* Time : 18:37:52    Date : 10/22/2011
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


Resistance R_WINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WINDOW_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window formation" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255} ;
FONT "Arial" SIZE 20 

@ 13 ,119 LABEL lbl1 ;
VALUE "height" ;
WIDTH 71 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,128,255} ;
CENTERALIGN ;
FONTCOLOR {0,128,0}
@ 13 ,301 LABEL lbl2 ;
VALUE "width" ;
WIDTH 71 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,128,255} ;
CENTERALIGN ;
FONTCOLOR {0,128,0}
@ 132 ,142 LABEL lbl3 ;
VALUE "title" ;
WIDTH 43 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,128,255} ;
CENTERALIGN ;
FONTCOLOR {0,128,0}
@ 205 ,98 LABEL lbl4 ;
VALUE "Bgcolor" ;
WIDTH 98 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,128,255} ;
CENTERALIGN ;
FONTCOLOR {0,128,0}
@ 57 ,113 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 124 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 

@ 57 ,282 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 113 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 

@ 132 ,188 TEXTBOX text3;
HEIGHT 29 ;
WIDTH 206 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 

@ 206 ,196 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 

@ 305 ,339 BUTTONEX btn1;
CAPTION "creat";
ON CLICK formcreate()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc formcreate
height := win1.text1.Value
width := win1.text2.Value
title := win1.text3.Value
color := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE "&title" ;
MODAL ;
NOSIZE ;
BACKCOLOR {&color} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_WINDOW
START DOUBLES
Return
*-------------------------------------------------------------------*
