*---------------------------------------------------------------------------*
* Time : 22:00:44    Date : 08/14/2011
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


Resistance R_DESIGN_WINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DESIGN_WINDOW_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 382 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Design window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 31 ,117 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 210 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 79 ,117 TEXTBOX text2;
HEIGHT 40 ;
WIDTH 210 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 127 ,116 TEXTBOX text3;
HEIGHT 40 ;
WIDTH 210 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 177 ,117 TEXTBOX text4;
HEIGHT 40 ;
WIDTH 210 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 27 ,23 LABEL lbl1 ;
VALUE "Height" ;
WIDTH 90 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 75 ,23 LABEL lbl2 ;
VALUE "Width" ;
WIDTH 90 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 123 ,23 LABEL lbl3 ;
VALUE "title" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 173 ,23 LABEL lbl4 ;
VALUE "Bg color" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 241 ,109 BUTTONEX btn1;
CAPTION "Create Window";
FONTCOLOR {0,64,128};
ON CLICK createform()  ;
WIDTH 173 HEIGHT 38 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc createform
height := win1.text1.Value
width := win1.text2.Value
title := win1.text3.Value
bg := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE "&title" ;
MODAL ;
BACKCOLOR {&bg} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_DESIGN_WINDOW
START DOUBLES
Return
*-------------------------------------------------------------------*
