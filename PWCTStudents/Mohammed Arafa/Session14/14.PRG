*---------------------------------------------------------------------------*
* Time : 22:40:34    Date : 01/18/2012
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


Resistance R_14_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_14_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 452 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "⁄œ«œ" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,160} 

@ 11 ,230 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 137 ;
BACKCOLOR {255,255,128} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0} ;
NUMERIC 

@ 11 ,5 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 137 ;
BACKCOLOR {255,255,128} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0} ;
NUMERIC 

@ 13 ,395 LABEL lbl1 ;
VALUE "„‰" ;
WIDTH 41 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,0,160} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 13 ,161 LABEL lbl2 ;
VALUE "«·Ï" ;
WIDTH 41 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,0,160} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 147 ,121 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 98 ,121 BUTTONEX btn1;
CAPTION "⁄œ «·√‰";
ON CLICK mycount()  ;
WIDTH 200 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure mycount()
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x =num1 TO num2 STEP 1
x1 = STR ( x )
x1 = ALLTRIM ( x1 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x1
else
Win1.Edit1.VALUE := x1
endif
Next
return


End Of Resistance

INIT PROCEDURE Init_14
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '⁄œ«œ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·Ï'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '⁄œ «·√‰'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycount",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycount ( Event : CLICK )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x =num1 To num2 Step 1)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","x1 = CONVERT x TO STRING",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","x1 = All Trim x1",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x1) to Editbox (Edit1) of Window (Win1)",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
