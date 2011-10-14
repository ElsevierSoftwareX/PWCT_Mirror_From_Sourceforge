*---------------------------------------------------------------------------*
* Time : 03:12:08    Date : 10/14/2011
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


Resistance R_DESIGN_FORM_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DESIGN_FORM_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 396 ;
HEIGHT 471 ;
ICON "PWCTICON" ;
TITLE "design newform" ;
MAIN ;
BACKCOLOR {0,255,64} 

@ 80 ,37 LABEL lbl1 ;
VALUE "height" ;
WIDTH 94 ;
HEIGHT 38 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 139 ,37 LABEL lbl2 ;
VALUE "width" ;
WIDTH 93 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 275 ,37 LABEL lbl3 ;
VALUE "title" ;
WIDTH 97 ;
HEIGHT 43 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 201 ,37 LABEL lbl4 ;
VALUE "color" ;
WIDTH 102 ;
HEIGHT 40 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 352 ,178 BUTTONEX btn1;
CAPTION "design";
ON CLICK design()  ;
WIDTH 117 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 76 ,127 TEXTBOX text1;
HEIGHT 38 ;
WIDTH 187 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 135 ,127 TEXTBOX text2;
HEIGHT 35 ;
WIDTH 181 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 205 ,127 TEXTBOX text3;
HEIGHT 38 ;
WIDTH 181 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 271 ,127 TEXTBOX text4;
HEIGHT 35 ;
WIDTH 182 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc design
height := win1.text1.Value
width := win1.text2.Value
colornum := win1.text3.Value
title := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE "&title" ;
MODAL ;
BACKCOLOR {&colornum} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_DESIGN_FORM
START DOUBLES
Return
*-------------------------------------------------------------------*
