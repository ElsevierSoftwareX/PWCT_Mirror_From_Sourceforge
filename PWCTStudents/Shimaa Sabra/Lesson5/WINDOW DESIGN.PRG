*---------------------------------------------------------------------------*
* Time : 22:17:01    Date : 02/02/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
#include "xhb.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
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


Resistance R_WINDOW_DESIGN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WINDOW_DESIGN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,200 ;
WIDTH 359 ;
HEIGHT 407 ;
ICON "PWCTICON" ;
TITLE " Window design" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {244,244,244} 

@ 23 ,319 LABEL lbl1 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 140 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {230,230,230} ;
FONTCOLOR {0,0,0}
@ 22 ,14 LABEL lbl2 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 142 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {232,232,232} ;
FONTCOLOR {0,0,0}
@ 161 ,14 LABEL lbl3 ;
VALUE " " ;
WIDTH 307 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {228,228,228} ;
FONTCOLOR {0,0,0}
@ 21 ,14 LABEL lbl4 ;
VALUE " " ;
WIDTH 307 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {229,229,229} ;
FONTCOLOR {0,0,0}
@ 12 ,23 LABEL lbl5 ;
VALUE "Define Window " ;
WIDTH 111 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {0,0,0}
@ 46 ,33 LABEL lbl6 ;
VALUE "Name " ;
WIDTH 57 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {244,244,244} ;
FONTCOLOR {0,0,0}
@ 82 ,178 LABEL lbl7 ;
VALUE "Height " ;
WIDTH 61 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {244,244,244} ;
FONTCOLOR {0,0,0}
@ 120 ,178 LABEL lbl8 ;
VALUE "Width " ;
WIDTH 51 ;
HEIGHT 19 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {244,244,244} ;
FONTCOLOR {0,0,0}
@ 81 ,33 LABEL lbl9 ;
VALUE "Top " ;
WIDTH 45 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {244,244,244} ;
FONTCOLOR {0,0,0}
@ 120 ,33 LABEL lbl10 ;
VALUE "Left " ;
WIDTH 54 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {244,244,244} ;
FONTCOLOR {0,0,0}
@ 40 ,92 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 79 ,92 TEXTBOX text2;
HEIGHT 27 ;
WIDTH 49 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 79 ,242 TEXTBOX text3;
HEIGHT 27 ;
WIDTH 51 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 118 ,92 TEXTBOX text4;
HEIGHT 28 ;
WIDTH 51 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 118 ,242 TEXTBOX text5;
HEIGHT 27 ;
WIDTH 50 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 195 ,14 LABEL lbl11 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 118 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {229,229,229} ;
FONTCOLOR {0,0,0}
@ 196 ,321 LABEL lbl12 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 117 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {230,230,230} ;
FONTCOLOR {0,0,0}
@ 311 ,15 LABEL lbl13 ;
VALUE " " ;
WIDTH 307 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {232,232,232} ;
FONTCOLOR {0,0,0}
@ 195 ,15 LABEL lbl14 ;
VALUE " " ;
WIDTH 308 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {232,232,232} ;
FONTCOLOR {0,0,0}
@ 186 ,24 LABEL lbl15 ;
VALUE "Window Optional" ;
WIDTH 125 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {245,245,245} ;
FONTCOLOR {0,0,0}
@ 226 ,30 LABEL lbl16 ;
VALUE "Title " ;
WIDTH 42 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {245,245,245} ;
FONTCOLOR {0,0,0}
@ 271 ,30 LABEL lbl17 ;
VALUE "Color " ;
WIDTH 53 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {245,245,245} ;
FONTCOLOR {0,0,0}
@ 222 ,96 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 268 ,97 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 328 ,175 BUTTONEX btn1;
CAPTION "OK ";
ON CLICK createWindow()  ;
WIDTH 78 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 328 ,257 BUTTONEX btn2;
CAPTION "Cancel ";
ON CLICK cancel()  ;
WIDTH 79 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 50 ,50 ;
WIDTH 359 ;
HEIGHT 407 ;
ICON "PWCTICON" ;
TITLE " Window design" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {244,244,244} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc createWindow
name := win1.text1.Value
top := win1.text2.Value
height := win1.text3.Value
left := win1.text4.Value
width := win1.text5.Value
title := win1.text6.Value
color := win1.text7.Value
if !iswindowdefined( &name )
DEFINE WINDOW &name ;
AT &top ,&left ;
WIDTH &width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE "&title " ;
MODAL ;
NOSIZE ;
BACKCOLOR {&color} 

END WINDOW

ACTIVATE WINDOW &name
EndIF

Return Nil
procedure cancel()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_WINDOW_DESIGN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Window design'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : ' '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Define Window '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Name '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Height '",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Width '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Top '",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Left '",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",90,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",102,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : ' '",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : ' '",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : ' '",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : ' '",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",136,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15 ) , Caption : 'Window Optional'",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",143,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16 ) , Caption : 'Title '",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",150,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17 ) , Caption : 'Color '",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",157,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",163,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",169,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'OK '",174,175)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action createWindow",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",177,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel '",180,181)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancel",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",183,185)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",186,187)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",188,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Window design'",191,195)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",196,202)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",203,204)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",205,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure createWindow",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","top = win1.text2.Value",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text3.Value",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","left = win1.text4.Value",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text5.Value",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text6.Value",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","color = win1.text7.Value",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( &name ) , Title : '&title '",216,220)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",221,226)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",227,228)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",229,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancel ( Event : CLICK )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",235,235)
Return
*-------------------------------------------------------------------*
