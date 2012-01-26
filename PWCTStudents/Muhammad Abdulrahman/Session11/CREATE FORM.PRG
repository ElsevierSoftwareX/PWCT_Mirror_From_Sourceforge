*---------------------------------------------------------------------------*
* Time : 00:58:21    Date : 01/23/2012
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


Resistance R_CREATE_FORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CREATE_FORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 349 ;
HEIGHT 345 ;
ICON "PWCTICON" ;
TITLE "Desing New Window" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,128,128} 

@ 20 ,113 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 68 ,112 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 115 ,112 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 169 ,112 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 21 ,20 LABEL lbl1 ;
VALUE "Height" ;
WIDTH 81 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 73 ,20 LABEL lbl2 ;
VALUE "Width" ;
WIDTH 61 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 117 ,20 LABEL lbl3 ;
VALUE "Color" ;
WIDTH 62 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 173 ,20 LABEL lbl4 ;
VALUE "Titile" ;
WIDTH 66 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 242 ,87 BUTTONEX btn1;
CAPTION "Create Form";
ON CLICK createform()  ;
WIDTH 159 HEIGHT 28 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc CreateForm
height := win1.text1.Value
width := win1.text2.Value
colornum := win1.text3.Value
Title := win1.text4.Value
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

INIT PROCEDURE Init_CREATE_FORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Desing New Window'",1,5)
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
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Width'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Color'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Titile'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",69,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Create Form'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action createform()",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,83)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CreateForm",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text1.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text2.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","colornum = win1.text3.Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Title = win1.text4.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",99,104)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
Return
*-------------------------------------------------------------------*
