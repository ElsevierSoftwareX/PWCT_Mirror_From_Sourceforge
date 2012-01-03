*---------------------------------------------------------------------------*
* Time : 12:31:37    Date : 12/29/2011
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
WIDTH 387 ;
HEIGHT 347 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·Õ«œÌ ⁄‘—" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 19 ,119 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 65 ,119 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 115 ,119 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 166 ,119 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 21 ,9 LABEL lbl1 ;
VALUE "Height" ;
WIDTH 103 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 67 ,9 LABEL lbl2 ;
VALUE "Width" ;
WIDTH 102 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 115 ,10 LABEL lbl3 ;
VALUE "Color" ;
WIDTH 99 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 167 ,6 LABEL lbl4 ;
VALUE "Title" ;
WIDTH 102 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 223 ,121 BUTTONEX btn1;
CAPTION "Creat Form";
ON CLICK creatform()  ;
WIDTH 149 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc creatform
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

@ 107 ,29 BUTTONEX btn2;
CAPTION "Nice To Meet You ..Bye";
FONTCOLOR {0,0,0};
ON CLICK closeform()  ;
WIDTH 352 HEIGHT 60 ;
FONT "Arial" SIZE 24 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
Proc closeform
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_11
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·Õ«œÌ ⁄‘—'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Height'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Width'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Color'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Title'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Creat Form'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action creatform()",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure creatform",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text1.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text2.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","colornum = win1.text3.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text4.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Nice To Meet You ..Bye'",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform()",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
Return
*-------------------------------------------------------------------*
