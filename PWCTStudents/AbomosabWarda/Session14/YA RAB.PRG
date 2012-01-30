*---------------------------------------------------------------------------*
* Time : 23:18:23    Date : 01/27/2012
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


Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "counter" ;
MAIN ;
BACKCOLOR {255,0,255} 

@ 4 ,116 LABEL lbl1 ;
VALUE "*(Automatic Counter)*" ;
WIDTH 248 ;
HEIGHT 35 ;
FONT "Bauhaus 93" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 49 ,34 LABEL lbl2 ;
VALUE "From" ;
WIDTH 110 ;
HEIGHT 34 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,255}
@ 103 ,34 LABEL lbl3 ;
VALUE "To" ;
WIDTH 109 ;
HEIGHT 26 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {128,0,128}
@ 50 ,164 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 249 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 99 ,164 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 250 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 143 ,34 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Bernard MT Condensed" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 213 ,282 BUTTONEX btn1;
CAPTION "Count Now";
ON CLICK mycounter()  ;
WIDTH 136 HEIGHT 37 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycounter
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x = num1 TO num2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '*(Automatic Counter)*'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'From'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'To'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Count Now'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycounter()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycounter",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
Return
*-------------------------------------------------------------------*
