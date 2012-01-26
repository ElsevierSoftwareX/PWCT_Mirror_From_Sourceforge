*---------------------------------------------------------------------------*
* Time : 16:51:19    Date : 01/22/2012
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


Resistance R_PERCANTAGE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PERCANTAGE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Percantage" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {0,128,64} 

@ 64 ,214 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 122 ,214 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 191 ,215 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 73 ,88 LABEL lbl1 ;
VALUE "Degree" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 130 ,89 LABEL lbl2 ;
VALUE "Sum" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 199 ,89 LABEL lbl3 ;
VALUE "Percantage" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 257 ,182 BUTTONEX btn1;
CAPTION "Calculate";
ON CLICK Calc()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Perc := (num1/num2)*100
Perc = STR ( Perc )
Perc = ALLTRIM ( Perc )
win1.text3.Value := Perc+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_PERCANTAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Percantage'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Degree'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Sum'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Percantage'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate'",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Perc = (num1/num2)*100",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Perc = CONVERT Perc TO STRING",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Perc = All Trim Perc",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Perc+' '+'%'",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*
