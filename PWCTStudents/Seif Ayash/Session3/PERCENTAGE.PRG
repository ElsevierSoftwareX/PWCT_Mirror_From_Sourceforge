*---------------------------------------------------------------------------*
* Time : 23:47:13    Date : 01/01/2012
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


Resistance R_PERCENTAGE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PERCENTAGE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "percentage" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {64,128,128} 

@ 46 ,352 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 108 ;
HEIGHT 38 ;
FONT "" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {128,64,64}
@ 117 ,351 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì" ;
WIDTH 108 ;
HEIGHT 38 ;
FONT "" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {128,64,64}
@ 188 ,353 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 108 ;
HEIGHT 38 ;
FONT "" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {128,64,64}
@ 284 ,96 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ…";
ON CLICK calc()  ;
WIDTH 250 HEIGHT 39 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 46 ,87 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0} 

@ 117 ,87 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0} 

@ 188 ,87 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
win1.text3.Value := pers
Return Nil


End Of Resistance

INIT PROCEDURE Init_PERCENTAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'percentage'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·œ—Ã…'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ì'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»… «·„∆ÊÌ…'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”» «·‰”»… «·„∆ÊÌ…'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
