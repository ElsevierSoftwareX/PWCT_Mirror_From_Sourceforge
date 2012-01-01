*---------------------------------------------------------------------------*
* Time : 21:40:42    Date : 12/30/2011
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


Resistance R_PROG11_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROG11_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 466 ;
HEIGHT 323 ;
ICON "PWCTICON" ;
TITLE "selecting window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,64} 

@ 11 ,56 LABEL lbl1 ;
VALUE "height" ;
WIDTH 64 ;
HEIGHT 32 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 11 ,272 LABEL lbl2 ;
VALUE "width" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 111 ,36 LABEL lbl3 ;
VALUE "window name" ;
WIDTH 128 ;
HEIGHT 33 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 166 ,45 LABEL lbl4 ;
VALUE "colour" ;
WIDTH 71 ;
HEIGHT 30 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 48 ,26 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 112 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 48 ,247 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 112 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 116 ,181 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 163 ,181 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 226 ,149 BUTTONEX btn1;
CAPTION "next";
ON CLICK new()  ;
WIDTH 104 HEIGHT 33 ;
FONT "Andalus" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure new()
l := win1.text1.Value
l = VAL ( l )
w := win1.text2.Value
w = VAL ( w )
n := win1.text3.Value
c := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH l ;
HEIGHT w ;
ICON "PWCTICON" ;
TITLE n ;
MODAL ;
BACKCOLOR {&c} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return


End Of Resistance

INIT PROCEDURE Init_PROG11
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'selecting window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'height'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'width'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'window name'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'colour'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'next'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action new",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure new ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","l = win1.text1.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","l = CONVERT l TO Numeric",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","w = win1.text2.Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","w = CONVERT w TO Numeric",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","n = win1.text3.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","c = win1.text4.Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : n",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
Return
*-------------------------------------------------------------------*
