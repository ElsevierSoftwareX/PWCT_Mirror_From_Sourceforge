*---------------------------------------------------------------------------*
* Time : 03:01:33    Date : 03/03/2012
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


Resistance R_LESSON8_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON8_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 358 ;
HEIGHT 275 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ  " ;
MAIN ;
NOSIZE ;
BACKCOLOR {255,255,0} 

@ 8 ,323 LABEL lbl1 ;
VALUE "„‰ " ;
WIDTH 79 ;
HEIGHT 24 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0}
@ 7 ,190 LABEL lbl2 ;
VALUE "«·Ï " ;
WIDTH 67 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0}
@ 5 ,214 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 100 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0} ;
NUMERIC 

@ 6 ,105 TEXTBOX text2;
HEIGHT 31 ;
WIDTH 82 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0} ;
NUMERIC 

@ 43 ,13 EDITBOX edit1;
WIDTH 308 ;
HEIGHT 174;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 6 ,4 BUTTONEX btn1;
CAPTION "⁄œ «·√‰  ";
ON CLICK counter()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
DEFINE STATUSBAR 

DATE

CLOCK;
AMPM 

STATUSITEM "Ã«Â“"

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc counter
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

INIT PROCEDURE Init_LESSON8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·Ï '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '⁄œ «·√‰  '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action counter()",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Date",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure counter",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
Return
*-------------------------------------------------------------------*
