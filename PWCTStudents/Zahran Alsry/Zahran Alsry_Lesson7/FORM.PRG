*---------------------------------------------------------------------------*
* Time : 04:58:22    Date : 05/26/2012
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
WIDTH 666 ;
HEIGHT 348 ;
ICON "PWCTICON" ;
TITLE "«‰‘«¡ ‰«›–… ÃœÌœ…" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {255,128,128} 

@ 23 ,325 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 218 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 72 ,324 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 218 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 120 ,325 TEXTBOX text3;
HEIGHT 32 ;
WIDTH 217 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 167 ,322 TEXTBOX text4;
HEIGHT 31 ;
WIDTH 218 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 25 ,138 LABEL lbl1 ;
VALUE "«·ÿÊ·  :" ;
WIDTH 70 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 68 ,131 LABEL lbl2 ;
VALUE "«·⁄—÷  :" ;
WIDTH 77 ;
HEIGHT 37 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 112 ,131 LABEL lbl3 ;
VALUE "«·⁄‰Ê«‰  :" ;
WIDTH 77 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 160 ,133 LABEL lbl4 ;
VALUE "«·«·Ê«‰  :" ;
WIDTH 75 ;
HEIGHT 44 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 228 ,230 BUTTONEX btn1;
CAPTION "«‰‘«¡ «·‰«›–…";
ON CLICK Createform()  ;
WIDTH 182 HEIGHT 37 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Createform
Height := win1.text1.Value
Width := win1.text2.Value
Title := win1.text3.Value
Colornum := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE "&title" ;
MODAL ;
BACKCOLOR {&Colornum} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_FORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«‰‘«¡ ‰«›–… ÃœÌœ…'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·ÿÊ·  :'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄—÷  :'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·⁄‰Ê«‰  :'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·«·Ê«‰  :'",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",70,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«‰‘«¡ «·‰«›–…'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Createform",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Createform",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Height = win1.text1.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Width = win1.text2.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Title = win1.text3.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Colornum = win1.text4.Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",98,102)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
Return
*-------------------------------------------------------------------*
