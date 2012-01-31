*---------------------------------------------------------------------------*
* Time : 03:12:21    Date : 01/31/2012
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
WIDTH 526 ;
HEIGHT 456 ;
ICON "PERCENT.PNG" ;
TITLE "Percentage " ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {255,255,255} 

@ 22 ,11 LABEL lbl1 ;
VALUE " percentage Calculation" ;
WIDTH 233 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 54 ,15 LABEL lbl2 ;
VALUE " " ;
WIDTH 452 ;
HEIGHT 3 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {0,0,0}
@ 79 ,217 LABEL lbl3 ;
VALUE "Number  " ;
WIDTH 75 ;
HEIGHT 19 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 162 ,218 LABEL lbl4 ;
VALUE "Total " ;
WIDTH 80 ;
HEIGHT 18 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 241 ,213 LABEL lbl5 ;
VALUE " percentage " ;
WIDTH 90 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 63 ,11 IMAGE image2;
PICTURE "PERCENTAGE.JPG";
STRETCH ;
WIDTH 202 HEIGHT 364
@ 107 ,303 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 143 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 184 ,306 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 143 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 274 ,307 TEXTBOX text3;
HEIGHT 31 ;
WIDTH 143 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 361 ,395 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK Close()  ;
WIDTH 90 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 361 ,297 BUTTONEX btn3;
CAPTION "Equal";
ON CLICK calc()  ;
WIDTH 94 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pres := (num1/num2)*100
Pres = STR ( Pres )
Pres = ALLTRIM ( Pres )
win1.text3.Value := Pres+" "+"%"
Return Nil
procedure Close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_PERCENTAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Percentage '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' percentage Calculation'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Number  '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Total '",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : ' percentage '",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'PERCENTAGE.JPG'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Equal'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Pres = (num1/num2)*100",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Pres = CONVERT Pres TO STRING",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Pres = All Trim Pres",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pres+' '+'%'",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
Return
*-------------------------------------------------------------------*
