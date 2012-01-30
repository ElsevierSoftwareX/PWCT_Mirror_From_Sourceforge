*---------------------------------------------------------------------------*
* Time : 20:18:03    Date : 01/30/2012
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


Resistance R_FORM_DESIGN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FORM_DESIGN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 477 ;
HEIGHT 331 ;
ICON "PWCTICON" ;
TITLE "Design new window" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,255} 

@ 53 ,41 TEXTBOX text1;
HEIGHT 38 ;
WIDTH 180 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 52 ,237 TEXTBOX text2;
HEIGHT 40 ;
WIDTH 180 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 113 ,158 TEXTBOX text3;
HEIGHT 39 ;
WIDTH 261 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 175 ,158 TEXTBOX text4;
HEIGHT 39 ;
WIDTH 261 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,83 LABEL lbl1 ;
VALUE "Height :" ;
WIDTH 80 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 11 ,290 LABEL lbl2 ;
VALUE "Width :" ;
WIDTH 80 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 113 ,50 LABEL lbl3 ;
VALUE "Color :" ;
WIDTH 100 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 175 ,50 LABEL lbl4 ;
VALUE "Title :" ;
WIDTH 100 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 237 ,180 BUTTONEX btn1;
CAPTION "Create form";
ON CLICK createform()  ;
WIDTH 148 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc createform
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
NOSIZE ;
BACKCOLOR {&colornum} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_FORM_DESIGN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Design new window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Height :'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Width :'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Color :'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Title :'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Create form'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action createform",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure createform",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text1.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text2.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","colornum = win1.text3.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text4.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",94,99)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
Return
*-------------------------------------------------------------------*
