*---------------------------------------------------------------------------*
* Time : 18:38:11    Date : 10/19/2011
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
 * (Noun) *
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


Resistance R_3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 496 ;
HEIGHT 201 ;
ICON "PWCTICON" ;
TITLE "Average" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {116,241,169} 

@ 25 ,40 LABEL lbl1 ;
VALUE "Score (1)" ;
WIDTH 59 ;
HEIGHT 23 ;
FONT "Tahoma" SIZE 9  ;
BACKCOLOR {116,241,169} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 25 ,122 LABEL lbl2 ;
VALUE "Score (2)" ;
WIDTH 60 ;
HEIGHT 23 ;
FONT "Tahoma" SIZE 9  ;
BACKCOLOR {116,241,169} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 25 ,360 LABEL lbl3 ;
VALUE "Total Average" ;
WIDTH 93 ;
HEIGHT 28 ;
FONT "Tahoma" SIZE 9  ;
BACKCOLOR {116,241,169} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 25 ,202 LABEL lbl4 ;
VALUE "Score (3)" ;
WIDTH 70 ;
HEIGHT 23 ;
FONT "Tahoma" SIZE 9  ;
BACKCOLOR {116,241,169} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 65 ,40 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 76 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0} 

@ 65 ,122 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 76 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0} 

@ 65 ,202 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 76 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0} 

@ 65 ,363 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 76 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,255} 

@ 109 ,340 BUTTONEX btn1;
CAPTION "Calculate Average";
FONTCOLOR {0,0,0};
ON CLICK Calc()  ;
WIDTH 133 HEIGHT 30 ;
FONT "Arial" SIZE 11 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num3 = VAL ( win1.text4.value )
Pers := (num1+num2+num3)/3
Pers = STR ( Pers )
Pers = ALLTRIM ( Pers )
win1.text3.Value := Pers
Return Nil


End Of Resistance

INIT PROCEDURE Init_3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Average'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Score (1)'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Score (2)'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Total Average'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Score (3)'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate Average'",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc()",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT win1.text4.value TO Numeric",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1+num2+num3)/3",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = CONVERT Pers TO STRING",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = All Trim Pers",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
Return
*-------------------------------------------------------------------*
