*---------------------------------------------------------------------------*
* Time : 09:24:11    Date : 07/31/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
* GUI Framework               : HarbourMiniGUI Extended
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


Resistance R_FORM_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FORM_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 756 ;
HEIGHT 410 ;
ICON "PWCTICON" ;
TITLE "Form " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 71 ,196 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 203 ;
FONT "Curlz MT" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 127 ,101 TEXTBOX text2;
HEIGHT 38 ;
WIDTH 203 ;
FONT "Curlz MT" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 182 ,101 TEXTBOX text3;
HEIGHT 37 ;
WIDTH 202 ;
FONT "Curlz MT" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 131 ,13 LABEL lbl1 ;
VALUE "height" ;
WIDTH 80 ;
HEIGHT 37 ;
FONT "Matura MT Script Capitals" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 187 ,13 LABEL lbl3 ;
VALUE "width" ;
WIDTH 67 ;
HEIGHT 39 ;
FONT "Matura MT Script Capitals" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 243 ,13 LABEL lbl2 ;
VALUE "color" ;
WIDTH 79 ;
HEIGHT 39 ;
FONT "Matura MT Script Capitals" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 72 ,13 LABEL lbl4 ;
VALUE "Window Title" ;
WIDTH 170 ;
HEIGHT 44 ;
FONT "Matura MT Script Capitals" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 58 ,542 IMAGE image1;
PICTURE "CLIPART.JPG";
STRETCH ;
WIDTH 162 HEIGHT 222
@ 7 ,161 LABEL lbl5 ;
VALUE "Create Your window form" ;
WIDTH 423 ;
HEIGHT 45 ;
FONT "Snap ITC" SIZE 20  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 302 ,317 BUTTONEX btn1;
CAPTION "Create";
FONTCOLOR {255,0,128};
ON CLICK myform()  ;
WIDTH 111 HEIGHT 38 ;
FONT "Forte" SIZE 16 ;
TOOLTIP ""
@ 236 ,97 LABEL lblcolor ;
VALUE "click to set the window backcolor" ;
ACTION setcolor()  ;
WIDTH 407 ;
HEIGHT 31 ;
FONT "Jokerman" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myform
newform := true
title := win1.text1.Value
height := win1.text2.Value
width := win1.text3.Value
IF title==""
MyOut := MSGExclamation("please enter the title","error")
newform := false
ENDIF
IF height==""
MyOut := MSGExclamation("please enter the height","error")
newform := false
ENDIF
IF width==""
MyOut := MSGExclamation("please enter the width","error")
newform := false
ENDIF
IF newform==false
Return 0
ENDIF
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE "&title" ;
MODAL ;
NOSIZE ;
BACKCOLOR win1.lblcolor.backcolor 

END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
Proc setcolor
GetColor := GetColor ()
win1.lblcolor.BackColor := GetColor
Return Nil


End Of Resistance

INIT PROCEDURE Init_FORM
START DOUBLES
Return
*-------------------------------------------------------------------*
