*---------------------------------------------------------------------------*
* Time : 13:30:39    Date : 03/21/2011
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


Resistance R_SO11_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SO11_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "design" ;
MAIN ;
BACKCOLOR {251,217,250} 

@ 28 ,55 LABEL lbl1 ;
VALUE "title" ;
WIDTH 100 ;
HEIGHT 44 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {251,219,251} ;
FONTCOLOR {128,0,64}
@ 91 ,55 LABEL lbl2 ;
VALUE "hight" ;
WIDTH 100 ;
HEIGHT 44 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {251,219,251} ;
FONTCOLOR {128,0,64}
@ 145 ,55 LABEL lbl3 ;
VALUE "width" ;
WIDTH 100 ;
HEIGHT 44 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {251,219,251} ;
FONTCOLOR {128,0,64}
@ 210 ,55 LABEL lbl4 ;
VALUE "color" ;
WIDTH 103 ;
HEIGHT 44 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {251,219,251} ;
FONTCOLOR {128,0,64}
@ 30 ,220 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 93 ,221 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 150 ,219 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 212 ,217 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 279 ,155 BUTTONEX btn1;
CAPTION "create";
FONTCOLOR {0,0,0};
BACKCOLOR {249,219,249};
WIDTH 153 HEIGHT 41 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc create
title := win1.text1.Value
hight := win1.text2.Value
width := win1.text3.Value
color := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &width ;
HEIGHT &hight ;
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

INIT PROCEDURE Init_SO11
START DOUBLES
Return
*-------------------------------------------------------------------*
