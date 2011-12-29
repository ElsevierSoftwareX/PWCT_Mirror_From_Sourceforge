*---------------------------------------------------------------------------*
* Time : 20:22:42    Date : 12/28/2011
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
WIDTH 303 ;
HEIGHT 190 ;
ICON "PWCTICON" ;
TITLE "Percentage" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 112 ,87 BUTTONEX btn1;
CAPTION "Calculate";
FONTCOLOR {0,0,255};
ON CLICK Percentage()  ;
WIDTH 190 HEIGHT 28 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 7 ,78 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 39 ,80 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 71 ,80 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 

@ 10 ,45 LABEL lbl1 ;
VALUE "Mark" ;
WIDTH 34 ;
HEIGHT 22 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 41 ,41 LABEL lbl2 ;
VALUE "Total" ;
WIDTH 34 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 75 ,8 LABEL lbl3 ;
VALUE "Percentage" ;
WIDTH 70 ;
HEIGHT 23 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Percentage
num1 := win1.text1.Value
num2 := win1.text2.Value
num1 = VAL ( num1 )
num2 = VAL ( num2 )
Pers := (num1/num2)*100
Str = STR ( Pers )
Str = ALLTRIM ( Str )
win1.text3.Value := Str
Return Nil


End Of Resistance

INIT PROCEDURE Init_PERCENTAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Percentage'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate'",12,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Percentage",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Mark'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Total'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Percentage'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Percentage",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO Numeric",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT num2 TO Numeric",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1/num2)*100",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Str = CONVERT Pers TO STRING",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Str = All Trim Str",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Str",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",73,73)
Return
*-------------------------------------------------------------------*
