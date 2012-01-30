*---------------------------------------------------------------------------*
* Time : 19:28:54    Date : 01/27/2012
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


Resistance R_11_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_11_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Design new form" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,128} 

@ 67 ,166 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {255,255,255} 

@ 119 ,164 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {255,255,255} 

@ 173 ,164 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {255,255,255} 

@ 227 ,163 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {255,255,255} 

@ 67 ,29 LABEL lbl1 ;
VALUE "Height" ;
WIDTH 104 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 117 ,29 LABEL lbl2 ;
VALUE "Width" ;
WIDTH 102 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 174 ,29 LABEL lbl3 ;
VALUE "Title" ;
WIDTH 105 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 231 ,29 LABEL lbl4 ;
VALUE "Back color" ;
WIDTH 109 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 294 ,119 BUTTONEX btn1;
CAPTION "Create form";
ON CLICK create()  ;
WIDTH 205 HEIGHT 39 ;
FONT "Bernard MT Condensed" SIZE 20 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure create()
height := win1.text1.Value
width := win1.text2.Value
title := win1.text3.Value
colornum := win1.text4.Value
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

return


End Of Resistance

INIT PROCEDURE Init_11
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Design new form'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Height'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Width'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Title'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Back color'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Create form'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action create",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure create ( Event : CLICK )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text1.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text2.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text3.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","colornum = win1.text4.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
Return
*-------------------------------------------------------------------*
