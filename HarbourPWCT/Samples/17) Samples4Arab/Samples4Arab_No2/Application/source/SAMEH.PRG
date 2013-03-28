*---------------------------------------------------------------------------*
* Time : 04:45:33    Date : 10/22/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_SAMEH_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAMEH_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 341 ;
HEIGHT 318 ;
ICON "win1" ;
TITLE "Simple Calculator by Sameh Kamel" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 237 ,180 BUTTONEX btn1;
CAPTION "Close";
ON CLICK Sameh()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 179 ,229 BUTTONEX btn2;
CAPTION "+";
ON CLICK Sum()  ;
WIDTH 51 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 11 ,50 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 231 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 63 ,50 TEXTBOX text2;
HEIGHT 35 ;
WIDTH 231 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 132 ,49 TEXTBOX text3;
HEIGHT 35 ;
WIDTH 231 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 179 ,169 BUTTONEX btn3;
CAPTION "-";
ON CLICK Minus()  ;
WIDTH 51 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 179 ,109 BUTTONEX btn4;
CAPTION "×";
ON CLICK Multi()  ;
WIDTH 51 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 179 ,49 BUTTONEX btn5;
CAPTION "÷";
ON CLICK Div()  ;
WIDTH 51 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 98 ,158 LABEL lbl2 ;
VALUE "=" ;
WIDTH 110 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Sameh
win1.Release ( )
Return Nil
Proc Multi
num1 := win1.text1.Value
num2 := win1.text2.Value
win1.text3.Value := num1*num2
Return Nil
Proc Sum
num1 := win1.text1.Value
num2 := win1.text2.Value
win1.text3.Value := num1+num2
Return Nil
Proc Div
num1 := win1.text1.Value
num2 := win1.text2.Value
win1.text3.Value := num1/num2
Return Nil
Proc Minus
num1 := win1.text1.Value
num2 := win1.text2.Value
win1.text3.Value := num1-num2
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAMEH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Simple Calculator by Sameh Kamel'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Sameh()",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '+'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Sum()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",29,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '-'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Minus()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '×'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Multi()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '÷'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Div()",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '='",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,81)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sameh",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Multi",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num1*num2",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sum",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num1+num2",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Div",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num1/num2",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Minus",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num1-num2",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
Return
*-------------------------------------------------------------------*
