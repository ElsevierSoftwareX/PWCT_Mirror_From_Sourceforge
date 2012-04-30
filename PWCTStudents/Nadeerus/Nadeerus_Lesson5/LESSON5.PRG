*---------------------------------------------------------------------------*
* Time : 00:14:21    Date : 04/29/2012
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


Resistance R_LESSON5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 420 ;
HEIGHT 324 ;
ICON "PWCTICON" ;
TITLE "windows design" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {0,128,255} 

@ 41 ,233 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 92 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 42 ,43 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 92 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 112 ,85 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 157 ,83 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 41 ,331 LABEL lbl1 ;
VALUE "«·«— ›«⁄ :" ;
WIDTH 53 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 44 ,142 LABEL lbl2 ;
VALUE "«·⁄—÷ :" ;
WIDTH 53 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 114 ,290 LABEL lbl3 ;
VALUE "«··Ê‰ :" ;
WIDTH 36 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 162 ,289 LABEL lbl4 ;
VALUE "«·⁄‰Ê«‰ :" ;
WIDTH 47 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 214 ,132 BUTTONEX btn1;
CAPTION " ﬂÊÌ‰ «·≈ÿ«—";
ON CLICK co()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure co()
h := win1.text1.Value
w := win1.text2.Value
color := win1.text3.Value
title := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &w ;
HEIGHT &h ;
ICON "PWCTICON" ;
TITLE "&title" ;
MODAL ;
NOSIZE ;
BACKCOLOR {&color} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return


End Of Resistance

INIT PROCEDURE Init_LESSON5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'windows design'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«— ›«⁄ :'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄—÷ :'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",51,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«··Ê‰ :'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·⁄‰Ê«‰ :'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",67,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' ﬂÊÌ‰ «·≈ÿ«—'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action co",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure co ( Event : CLICK )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","h = win1.text1.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","w = win1.text2.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","color = win1.text3.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text4.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",94,99)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
Return
*-------------------------------------------------------------------*
