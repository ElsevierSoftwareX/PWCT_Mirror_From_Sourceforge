*---------------------------------------------------------------------------*
* Time : 22:10:47    Date : 10/19/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
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


Resistance R_FORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FORM_18smart1() code
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
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 236 ,97 LABEL lblcolor ;
VALUE "click to set the window backcolor" ;
ON CLICK setcolor()  ;
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
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Form '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'height'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'width'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'color'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Window Title'",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'CLIPART.JPG'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Create Your window form'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Create'",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myform()",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblcolor ) , Caption : 'click to set the window backcolor'",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action setcolor()",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myform",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","newform = true",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text1.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text2.Value",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text3.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( title=='' )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'please enter the title' Title 'error' Type: Message Exclamation",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","newform = false",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( height=='' )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'please enter the height' Title 'error' Type: Message Exclamation",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","newform = false",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( width=='' )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'please enter the width' Title 'error' Type: Message Exclamation",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","newform = false",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( newform==false )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",114,118)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",119,124)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",127,129)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure setcolor",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","GetColor := Get Color",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblcolor.BackColor := GetColor",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
Return
*-------------------------------------------------------------------*
