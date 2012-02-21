*---------------------------------------------------------------------------*
* Time : 00:57:55    Date : 02/17/2012
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


Resistance R_TEST14_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST14_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 631 ;
HEIGHT 383 ;
ICON "PWCTICON" ;
TITLE "Count" ;
MAIN ;
BACKCOLOR {179,199,253} 

@ 18 ,78 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 18 ,353 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 18 ,13 LABEL lbl1 ;
VALUE "From" ;
WIDTH 58 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,64,128}
@ 20 ,308 LABEL lbl2 ;
VALUE "To" ;
WIDTH 57 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,64,128}
@ 70 ,241 BUTTONEX btn1;
CAPTION "Count ";
ON CLICK Count()  ;
WIDTH 108 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 114 ,150 EDITBOX edit1;
WIDTH 314 ;
HEIGHT 203;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Count
Num1 := win1.text1.Value
Num2 := win1.text2.Value
FOR x = Num1 TO Num2 STEP 1
x1 = STR ( x )
x1 = ALLTRIM ( x1 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x1
else
Win1.Edit1.VALUE := x1
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST14
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Count'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'From'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'To'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Count '",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Count",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Count",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Num1 = win1.text1.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Num2 = win1.text2.Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = Num1 To Num2 Step 1)",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","x1 = CONVERT x TO STRING",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","x1 = All Trim x1",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x1) to Editbox (Edit1) of Window (Win1)",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
Return
*-------------------------------------------------------------------*
