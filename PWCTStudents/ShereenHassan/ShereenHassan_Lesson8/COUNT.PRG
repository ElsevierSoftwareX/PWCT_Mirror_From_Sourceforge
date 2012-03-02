*---------------------------------------------------------------------------*
* Time : 23:13:16    Date : 02/29/2012
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


Resistance R_COUNT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 282 ;
HEIGHT 437 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ «·—ﬁ„Ï  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {249,217,242} 

@ 59 ,230 LABEL lbl1 ;
VALUE ": „‰  " ;
WIDTH 45 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 59 ,98 LABEL lbl2 ;
VALUE ": ≈·Ï  " ;
WIDTH 33 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 58 ,149 TEXTBOX text1;
HEIGHT 26 ;
WIDTH 74 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 58 ,21 TEXTBOX text2;
HEIGHT 26 ;
WIDTH 74 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 145 ,11 EDITBOX edit1;
WIDTH 248 ;
HEIGHT 208;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 112 ,157 BUTTONEX btn1;
CAPTION "⁄œ «·¬‰ ";
ON CLICK count()  ;
WIDTH 65 HEIGHT 28 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,142 LABEL lbl3 ;
VALUE "«·⁄œ«œ «·—ﬁ„Ï " ;
WIDTH 116 ;
HEIGHT 37 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 362 ,82 BUTTONEX btn2;
CAPTION "Œ—ÊÃ ";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 112 ,21 BUTTONEX btn3;
CAPTION "’›— «·⁄œ«œ ";
ON CLICK Reset()  ;
WIDTH 85 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure count()
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x = num1 TO num2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.edit1.VALUE)
Win1.edit1.VALUE := Win1.edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.edit1.VALUE := x2
endif
Next
return
procedure Close()
win1.Release ( )
return
procedure Reset()
win1.text1.Value := 0
win1.text2.Value := 0
win1.edit1.Value := 0
return


End Of Resistance

INIT PROCEDURE Init_COUNT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ «·—ﬁ„Ï  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ': „‰  '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ': ≈·Ï  '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '⁄œ «·¬‰ '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·⁄œ«œ «·—ﬁ„Ï '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ '",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '’›— «·⁄œ«œ '",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Reset",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count ( Event : CLICK )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (edit1) of Window (Win1)",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Reset ( Event : CLICK )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := 0",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
Return
*-------------------------------------------------------------------*
