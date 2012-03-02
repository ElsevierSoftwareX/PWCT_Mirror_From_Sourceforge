*---------------------------------------------------------------------------*
* Time : 04:52:23    Date : 03/01/2012
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


Resistance R_NNNNNNNNNN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NNNNNNNNNN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 390 ;
HEIGHT 370 ;
ICON "PWCTICON" ;
TITLE " DESIGN NEW WINDOW " ;
MAIN ;
BACKCOLOR {0,128,192} 

@ 30 ,128 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 78 ,129 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 126 ,131 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 174 ,131 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 31 ,17 LABEL lbl1 ;
VALUE "height " ;
WIDTH 80 ;
HEIGHT 37 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,0,255} ;
FONTCOLOR {0,0,0}
@ 78 ,17 LABEL lbl2 ;
VALUE "width " ;
WIDTH 81 ;
HEIGHT 34 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,0,255} ;
FONTCOLOR {0,0,0}
@ 122 ,20 LABEL lbl3 ;
VALUE "color " ;
WIDTH 79 ;
HEIGHT 37 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,0,255} ;
FONTCOLOR {0,0,0}
@ 169 ,20 LABEL lbl4 ;
VALUE "title " ;
WIDTH 82 ;
HEIGHT 32 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,0,255} ;
FONTCOLOR {0,0,0}
@ 222 ,77 BUTTONEX btn1;
CAPTION " creat form";
ON CLICK createform()  ;
WIDTH 131 HEIGHT 46 ;
FONT "Blackadder ITC" SIZE 18 ;
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
TITLE "&title  " ;
MODAL ;
BACKCOLOR {&colornum} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_NNNNNNNNNN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' DESIGN NEW WINDOW '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'height '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'width '",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'color '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'title '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' creat form'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action createform()",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure createform",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text1.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text2.Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","colornum = win1.text3.Value",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text4.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title  '",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
Return
*-------------------------------------------------------------------*
