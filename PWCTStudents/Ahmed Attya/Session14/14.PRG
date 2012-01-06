*---------------------------------------------------------------------------*
* Time : 09:23:54    Date : 01/04/2012
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
WIDTH 500 ;
HEIGHT 284 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·«—»⁄ ⁄‘—" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 15 ,447 LABEL lbl1 ;
VALUE "„‰" ;
WIDTH 32 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 65 ,444 LABEL lbl2 ;
VALUE "≈·Ì" ;
WIDTH 35 ;
HEIGHT 39 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 14 ,275 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 132 ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 60 ,277 TEXTBOX text2;
HEIGHT 35 ;
WIDTH 130 ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 130 ,284 BUTTONEX btn1;
CAPTION "«·⁄œ«œ";
FONTCOLOR {0,0,0};
ON CLICK mycounter()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 10 ,10 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 183 ,285 BUTTONEX btn2;
CAPTION "„⁄ «·”·«„Â";
FONTCOLOR {255,0,0};
ON CLICK myexit()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Designed by PWCT by Ahmed Attya"

DATE

CLOCK

END STATUSBAR

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
Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_14
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·«—»⁄ ⁄‘—'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '≈·Ì'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",29,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·⁄œ«œ'",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycounter()",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '„⁄ «·”·«„Â'",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myexit()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Designed by PWCT by Ahmed Attya' )",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Date",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycounter",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
Return
*-------------------------------------------------------------------*
