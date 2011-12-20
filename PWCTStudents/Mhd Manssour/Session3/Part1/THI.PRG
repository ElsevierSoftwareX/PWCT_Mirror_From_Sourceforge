*---------------------------------------------------------------------------*
* Time : 01:50:08    Date : 12/17/2011
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


Resistance R_THI_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_THI_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "my third app" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 21 ,176 LABEL lbl1 ;
VALUE "Õ”«» „”«Õ… Ê „ÕÌÿ „” ÿÌ·" ;
WIDTH 217 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 69 ,371 LABEL lbl2 ;
VALUE "«·ÿÊ·" ;
WIDTH 96 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 108 ,371 LABEL lbl3 ;
VALUE "««·⁄—÷" ;
WIDTH 96 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 166 ,371 LABEL lbl4 ;
VALUE "«·„”«Õ…" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 221 ,371 LABEL lbl5 ;
VALUE "«·„ÕÌÿ" ;
WIDTH 97 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 63 ,129 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 197 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 108 ,129 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 161 ,129 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 217 ,129 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 277 ,193 BUTTONEX btn1;
CAPTION "«Õ”»";
ON CLICK CalcArea()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc CalcArea
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Area := num1*num2
Area = STR ( Area )
win1.text3.Value := Area
Length := (num1+num2)*2
Length = STR ( Length )
win1.text4.Value := Length
Return Nil


End Of Resistance

INIT PROCEDURE Init_THI
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'my third app'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Õ”«» „”«Õ… Ê „ÕÌÿ „” ÿÌ·'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·ÿÊ·'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '««·⁄—÷'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·„”«Õ…'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '«·„ÕÌÿ'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”»'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CalcArea()",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CalcArea",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Area = num1*num2",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Area = CONVERT Area TO STRING",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Area",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Length = (num1+num2)*2",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Length = CONVERT Length TO STRING",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := Length",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
Return
*-------------------------------------------------------------------*
