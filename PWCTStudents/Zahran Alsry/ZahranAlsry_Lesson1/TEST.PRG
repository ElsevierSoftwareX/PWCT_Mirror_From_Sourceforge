*---------------------------------------------------------------------------*
* Time : 16:30:00    Date : 03/08/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Õ”«» «·‰”»… «·„∆ÊÌ…" ;
MAIN ;
BACKCOLOR {128,255,128} 

@ 61 ,12 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 115 ,13 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 169 ,13 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} 

@ 238 ,98 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»…";
ON CLICK calc()  ;
WIDTH 236 HEIGHT 53 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 63 ,249 LABEL lbl1 ;
VALUE "„Ã„Ê⁄ «·ÿ«·»" ;
WIDTH 198 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {128,0,64}
@ 119 ,250 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ï" ;
WIDTH 200 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {128,0,64}
@ 171 ,245 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 208 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {128,0,64}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+ " "+ "%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Õ”«» «·‰”»… «·„∆ÊÌ…'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”» «·‰”»…'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc()",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„Ã„Ê⁄ «·ÿ«·»'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ï'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»… «·„∆ÊÌ…'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","pers = All Trim pers",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers+ ' '+ '%'",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*
