*---------------------------------------------------------------------------*
* Time : 02:04:48    Date : 04/08/2012
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


Resistance R_TEST_1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 467 ;
HEIGHT 308 ;
ICON "PWCTICON" ;
TITLE "Percentage" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 34 ,109 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,250} 

@ 83 ,110 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,250} 

@ 136 ,110 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,250} 

@ 194 ,132 BUTTONEX btn1;
CAPTION "Õ”» «·‰”»… «·„∆ÊÌ…";
ON CLICK Calc()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 36 ,331 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 86 ,327 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ï" ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 136 ,329 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1/num2)*100
Pers = STR ( Pers )
Pers = ALLTRIM ( Pers )
win1.text3.Value := Pers+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST_1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Percentage'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Õ”» «·‰”»… «·„∆ÊÌ…'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc()",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·œ—Ã…'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ï'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»… «·„∆ÊÌ…'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1/num2)*100",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = CONVERT Pers TO STRING",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = All Trim Pers",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers+' '+'%'",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
Return
*-------------------------------------------------------------------*
