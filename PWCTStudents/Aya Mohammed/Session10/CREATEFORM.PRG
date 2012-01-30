*---------------------------------------------------------------------------*
* Time : 00:48:07    Date : 01/29/2012
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


Resistance R_CREATEFORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CREATEFORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Create New Window" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 27 ,182 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 82 ,182 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 148 ,182 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 211 ,182 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 32 ,48 LABEL lbl1 ;
VALUE "height" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 87 ,48 LABEL lbl2 ;
VALUE "Width" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 156 ,48 LABEL lbl3 ;
VALUE "Color" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 221 ,48 LABEL lbl4 ;
VALUE "Window title" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 278 ,182 BUTTONEX btn1;
CAPTION "Create Form";
ON CLICK Createform()  ;
WIDTH 200 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Createform
height := win1.text1.Value
Width := win1.text2.Value
title := win1.text4.Value
Colornum := win1.text3.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &Width ;
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

INIT PROCEDURE Init_CREATEFORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Create New Window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'height'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Width'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Color'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Window title'",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Create Form'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Createform",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Createform",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text1.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Width = win1.text2.Value",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text4.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Colornum = win1.text3.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
Return
*-------------------------------------------------------------------*
