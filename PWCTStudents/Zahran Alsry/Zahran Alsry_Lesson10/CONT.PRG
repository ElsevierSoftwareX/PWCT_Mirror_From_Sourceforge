*---------------------------------------------------------------------------*
* Time : 04:49:54    Date : 05/30/2012
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


Resistance R_CONT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ" ;
MAIN ;
BACKCOLOR {255,128,192} 

@ 32 ,422 LABEL lbl1 ;
VALUE "„‰" ;
WIDTH 50 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 34 ,268 LABEL lbl2 ;
VALUE "«·Ï" ;
WIDTH 50 ;
HEIGHT 47 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 34 ,318 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 83 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 32 ,157 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 101 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 35 ,9 BUTTONEX btn1;
CAPTION "⁄œ «·«‰";
ON CLICK mycounter()  ;
WIDTH 98 HEIGHT 36 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 82 ,10 EDITBOX edit1;
WIDTH 393 ;
HEIGHT 182;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

return
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

INIT PROCEDURE Init_CONT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·Ï'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '⁄œ «·«‰'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycounter",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycounter",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
Return
*-------------------------------------------------------------------*
