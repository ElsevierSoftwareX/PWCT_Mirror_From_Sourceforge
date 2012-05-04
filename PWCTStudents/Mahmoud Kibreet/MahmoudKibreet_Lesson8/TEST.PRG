*---------------------------------------------------------------------------*
* Time : 22:42:11    Date : 04/30/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 493 ;
HEIGHT 303 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ" ;
MAIN ;
BACKCOLOR {236,233,216} 

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
@ 12 ,124 LABEL lbl1 ;
VALUE "„‰" ;
WIDTH 30 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 14 ,287 LABEL lbl2 ;
VALUE "≈·Ï" ;
WIDTH 30 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 8 ,162 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 100 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 8 ,326 TEXTBOX text2;
HEIGHT 36 ;
WIDTH 100 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 54 ,5 EDITBOX edit1;
WIDTH 451 ;
HEIGHT 184;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 7 ,6 BUTTONEX btn1;
CAPTION "⁄œ «·«¯‰";
ON CLICK mycounter()  ;
WIDTH 100 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
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

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",11,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '≈·Ï'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '⁄œ «·«¯‰'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycounter()",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycounter",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*
