*---------------------------------------------------------------------------*
* Time : 14:57:31    Date : 03/25/2012
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


Resistance R_CREATE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CREATE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 411 ;
HEIGHT 402 ;
ICON "PWCTICON" ;
TITLE "create new window  " ;
MAIN ;
BACKCOLOR {0,255,128} 

@ 49 ,157 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 99 ,157 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 149 ,157 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 199 ,157 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 51 ,2 LABEL lbl1 ;
VALUE "Height " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 95 ,2 LABEL lbl2 ;
VALUE "Width " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 139 ,2 LABEL lbl3 ;
VALUE "Color " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 183 ,2 LABEL lbl4 ;
VALUE "Title" ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 283 ,131 BUTTONEX btn1;
CAPTION "create ";
ON CLICK create()  ;
WIDTH 120 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure create()
cheight := win1.text1.Value
cwidth := win1.text2.Value
ccolor := win1.text3.Value
ctitle := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &cwidth ;
HEIGHT &cheight ;
ICON "PWCTICON" ;
TITLE "&ctitle  " ;
MODAL ;
BACKCOLOR &ccolor 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return


End Of Resistance

INIT PROCEDURE Init_CREATE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'create new window  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Height '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Width '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Color '",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Title'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'create '",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action create",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure create ( Event : CLICK )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","cheight = win1.text1.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","cwidth = win1.text2.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","ccolor = win1.text3.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","ctitle = win1.text4.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&ctitle  '",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",106,106)
Return
*-------------------------------------------------------------------*
