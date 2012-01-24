*---------------------------------------------------------------------------*
* Time : 11:12:37    Date : 01/23/2012
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


Resistance R_LESSON14_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON14_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 393 ;
HEIGHT 350 ;
ICON "PWCTICON" ;
TITLE "Lesson 14  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 60 ,325 LABEL lbl1 ;
VALUE "דה " ;
WIDTH 40 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 103 ,316 LABEL lbl2 ;
VALUE "ֵבל " ;
WIDTH 58 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 64 ,199 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 110 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 102 ,199 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 110 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 142 ,99 EDITBOX edit1;
WIDTH 173 ;
HEIGHT 152;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 82 ,44 BUTTONEX btn1;
CAPTION "Start";
ON CLICK mycounter()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
BOLD ;
TOOLTIP ""
@ 15 ,85 LABEL lbl3 ;
VALUE "Automatic Counter" ;
WIDTH 212 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
DEFINE STATUSBAR ;
BOLD 

STATUSITEM "Mahmoud Albadawey"

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
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

INIT PROCEDURE Init_LESSON14
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 14  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'דה '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'ֵבל '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Start'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycounter",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Automatic Counter'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Mahmoud Albadawey' )",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycounter",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",95,95)
Return
*-------------------------------------------------------------------*
