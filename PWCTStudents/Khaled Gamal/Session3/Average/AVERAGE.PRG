*---------------------------------------------------------------------------*
* Time : 16:22:42    Date : 01/22/2012
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


Resistance R_AVERAGE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AVERAGE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Average" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {0,128,255} ;
NOTIFYTOOLTIP "Hello in my program" 

@ 201 ,183 BUTTONEX btn1;
CAPTION "Calculate";
ON CLICK Calculate()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
BOLD ;
ITALIC ;
NOXPSTYLE ;
TOOLTIP ""
@ 56 ,165 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 125 ,166 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 60 ,43 LABEL lbl1 ;
VALUE "Number 1" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BOLD ;
BACKCOLOR {236,233,216} ;
BORDER ;
FONTCOLOR {255,0,255}
@ 133 ,46 LABEL lbl2 ;
VALUE "Number 2" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BOLD ;
BACKCOLOR {236,233,216} ;
BORDER ;
FONTCOLOR {255,0,255}
@ 263 ,173 LABEL lbl3 ;
VALUE "Result" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calculate
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
result := (num1+num2)/2
result = STR ( result )
win1.lbl3.Value := result
Return Nil


End Of Resistance

INIT PROCEDURE Init_AVERAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Average'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calculate()",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number 1'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Number 2'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Result'",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calculate",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","result = (num1+num2)/2",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","result = CONVERT result TO STRING",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := result",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*
