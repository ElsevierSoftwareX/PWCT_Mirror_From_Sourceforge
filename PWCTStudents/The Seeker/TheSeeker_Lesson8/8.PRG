*---------------------------------------------------------------------------*
* Time : 07:38:03    Date : 03/26/2012
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


Resistance R_8_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_8_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 19 ,456 LABEL lbl1 ;
VALUE "„‰ " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 14 ,266 LABEL lbl2 ;
VALUE "«·Ï " ;
WIDTH 38 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 9 ,163 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 84 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 9 ,359 TEXTBOX text2;
HEIGHT 31 ;
WIDTH 84 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 87 ,49 EDITBOX edit1;
WIDTH 341 ;
HEIGHT 211;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,18 BUTTONEX btn1;
CAPTION " ⁄œ «·«‰";
ON CLICK count()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure count()
num2 := win1.text1.Value
num1 := win1.text2.Value
FOR x = num1 TO num2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
return


End Of Resistance

INIT PROCEDURE Init_8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·Ï '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' ⁄œ «·«‰'",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count ( Event : CLICK )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text1.Value",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text2.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
Return
*-------------------------------------------------------------------*
