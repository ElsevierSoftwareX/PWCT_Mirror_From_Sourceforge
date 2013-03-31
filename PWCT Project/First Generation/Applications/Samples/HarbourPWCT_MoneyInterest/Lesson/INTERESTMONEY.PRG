*---------------------------------------------------------------------------*
* Time : 07:13:48    Date : 10/22/2011
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


Resistance R_INTERESTMONEY_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_INTERESTMONEY_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 402 ;
HEIGHT 372 ;
ICON "win1" ;
TITLE " Interest sample - by Sameh Kamel" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 292 ,270 BUTTONEX btn1;
CAPTION "Close";
ON CLICK Sameh()  ;
WIDTH 103 HEIGHT 34 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 245 ,142 BUTTONEX btn2;
CAPTION "Total";
ON CLICK Compute()  ;
WIDTH 231 HEIGHT 36 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 77 ,143 TEXTBOX text2;
HEIGHT 35 ;
WIDTH 231 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 127 ,143 TEXTBOX text3;
HEIGHT 35 ;
WIDTH 231 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 197 ,143 TEXTBOX text4;
HEIGHT 35 ;
WIDTH 231 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 162 ,247 LABEL lbl1 ;
VALUE "=" ;
WIDTH 110 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 27 ,44 LABEL lbl2 ;
VALUE "Balance" ;
WIDTH 75 ;
HEIGHT 43 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 77 ,14 LABEL lbl3 ;
VALUE "Percentage" ;
WIDTH 118 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 124 ,62 LABEL lbl4 ;
VALUE "Years" ;
WIDTH 65 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 29 ,143 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 231 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Sameh
win1.Release ( )
Return Nil
Proc Compute
Mon = VAL ( win1.text1.value )
Int = VAL ( win1.text2.value )
Years = VAL ( win1.text3.value )
Total := Mon*(1+Int)^Years
Total = STR ( Total )
Total = ALLTRIM ( Total )
win1.text4.Value := Total
Return Nil


End Of Resistance

INIT PROCEDURE Init_INTERESTMONEY
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Interest sample - by Sameh Kamel'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Sameh",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Total'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Compute",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '='",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Balance'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Percentage'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Years'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",81,85)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sameh",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Compute",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Mon = CONVERT win1.text1.value TO Numeric",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Int = CONVERT win1.text2.value TO Numeric",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Years = CONVERT win1.text3.value TO Numeric",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Total = Mon*(1+Int)^Years",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Total = CONVERT Total TO STRING",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Total = All Trim Total",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := Total",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
Return
*-------------------------------------------------------------------*
