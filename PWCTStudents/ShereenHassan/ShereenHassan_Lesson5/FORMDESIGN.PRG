*---------------------------------------------------------------------------*
* Time : 11:16:00    Date : 02/27/2012
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


Resistance R_FORMDESIGN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FORMDESIGN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 397 ;
HEIGHT 402 ;
ICON "PWCTICON" ;
TITLE " Form Design " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {198,171,209} 

@ 31 ,57 LABEL lbl1 ;
VALUE "Design Your Window " ;
WIDTH 261 ;
HEIGHT 48 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BOLD ;
BACKCOLOR {236,233,216} ;
BORDER ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 89 ,17 LABEL lbl2 ;
VALUE "Title : " ;
WIDTH 61 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 140 ,17 LABEL lbl3 ;
VALUE "Width : " ;
WIDTH 74 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 193 ,17 LABEL lbl4 ;
VALUE "Height :" ;
WIDTH 74 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 246 ,17 LABEL lbl5 ;
VALUE "Color :" ;
WIDTH 72 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 93 ,95 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 143 ,95 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 194 ,95 TEXTBOX text3;
HEIGHT 32 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 243 ,95 TEXTBOX text4;
HEIGHT 32 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 318 ,263 BUTTONEX btn1;
CAPTION "Creat Form ";
ON CLICK FormDesign()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 316 ,24 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure FormDesign()
title := win1.text1.Value
width := win1.text2.Value
height := win1.text3.Value
color := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE "&title" ;
MODAL ;
BACKCOLOR {&color} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_FORMDESIGN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Form Design '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Design Your Window '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Title : '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Width : '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Height :'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Color :'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",62,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",69,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",76,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",83,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Creat Form '",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FormDesign",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FormDesign ( Event : CLICK )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text1.Value",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text2.Value",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text3.Value",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","color = win1.text4.Value",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",111,115)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",116,120)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",123,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
Return
*-------------------------------------------------------------------*
