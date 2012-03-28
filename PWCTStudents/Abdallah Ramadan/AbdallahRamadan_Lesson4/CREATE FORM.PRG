*---------------------------------------------------------------------------*
* Time : 13:36:07    Date : 03/26/2012
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
WIDTH 499 ;
HEIGHT 406 ;
ICON "PWCTICON" ;
TITLE "«‰‘«¡ ‰«›–…   " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 1 ,3 IMAGE image1;
PICTURE "HOME.JPG";
STRETCH ;
WIDTH 491 HEIGHT 357
@ 16 ,138 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 210 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 70 ,139 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 210 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 128 ,138 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 210 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 185 ,139 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 210 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 264 ,160 BUTTONEX btn1;
CAPTION "«‰‘«¡ ›Ê—„ ";
ON CLICK Create()  ;
WIDTH 139 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 21 ,364 LABEL lbl1 ;
VALUE "«·ÿÊ· " ;
WIDTH 105 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,255,128}
@ 73 ,365 LABEL lbl2 ;
VALUE "«·⁄—÷ " ;
WIDTH 110 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 129 ,370 LABEL lbl3 ;
VALUE "«··Ê‰ " ;
WIDTH 109 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,128,64}
@ 185 ,358 LABEL lbl4 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 99 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,128,128}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Create()
height := win1.text1.Value
Width := win1.text2.Value
colormun := win1.text3.Value
title := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &Width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE " &title" ;
MODAL ;
NOSIZE ;
BACKCOLOR {&colormun} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return


End Of Resistance

INIT PROCEDURE Init_CREATE_FORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«‰‘«¡ ‰«›–…   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'HOME.JPG'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«‰‘«¡ ›Ê—„ '",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Create",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·ÿÊ· '",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄—÷ '",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«··Ê‰ '",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·⁄‰Ê«‰ '",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",81,87)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Create ( Event : CLICK )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text1.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Width = win1.text2.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","colormun = win1.text3.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text4.Value",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' &title'",98,102)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",103,108)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
Return
*-------------------------------------------------------------------*
