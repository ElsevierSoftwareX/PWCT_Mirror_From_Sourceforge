*---------------------------------------------------------------------------*
* Time : 00:05:37    Date : 06/10/2012
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


Resistance R_LESSON10_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON10_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 552 ;
HEIGHT 465 ;
ICON "PWCTICON" ;
TITLE "«· ⁄—› ⁄·Ï Ã„· «· Õﬂ„  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 25 ,24 LISTBOX list1;
WIDTH 264 ;
HEIGHT 314 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 26 ,364 BUTTONEX btn1;
CAPTION "«·«Œ »«— ";
ON CLICK pwork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 171 ,419 LABEL lbl1 ;
VALUE ":„‰ " ;
WIDTH 50 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 213 ,419 LABEL lbl2 ;
VALUE ":«·Ï " ;
WIDTH 46 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 253 ,419 LABEL lbl3 ;
VALUE ":„ﬁœ«— «·“Ì«œ… " ;
WIDTH 95 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 171 ,322 TEXTBOX from;
HEIGHT 28 ;
WIDTH 95 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 209 ,322 TEXTBOX to;
HEIGHT 28 ;
WIDTH 95 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 250 ,322 TEXTBOX step;
HEIGHT 28 ;
WIDTH 95 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 294 ,319 BUTTONEX btn2;
CAPTION " ÿ»Ìﬁ";
ON CLICK doit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pwork()
FOR x = 1 TO 100 STEP 1
Win1.List1.Additem ( "„—Õ»«" )
x = STR ( x )
Win1.List1.Additem ( x )
x = VAL ( x )
Next
return
procedure doit()
from := win1.from.Value
to := win1.to.Value
step := win1.step.Value
win1.list1.DeleteAllItems ( )
FOR x = from TO to STEP step
Win1.List1.Additem ( "„—Õ»«" )
x = STR ( x )
x = ALLTRIM ( x )
Win1.List1.Additem ( x )
x = VAL ( x )
Next
return


End Of Resistance

INIT PROCEDURE Init_LESSON10
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· ⁄—› ⁄·Ï Ã„· «· Õﬂ„  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·«Œ »«— '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pwork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ':„‰ '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ':«·Ï '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ':„ﬁœ«— «·“Ì«œ… '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( from  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( to  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( step  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ÿ»Ìﬁ'",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action doit",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pwork ( Event : CLICK )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 100 Step 1)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('„—Õ»«') to Listbox (List1) of Window (Win1)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","x = CONVERT x TO STRING",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x) to Listbox (List1) of Window (Win1)",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","x = CONVERT x TO Numeric",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure doit ( Event : CLICK )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","from = win1.from.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","to = win1.to.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","step = win1.step.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = from To to Step step)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('„—Õ»«') to Listbox (List1) of Window (Win1)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","x = CONVERT x TO STRING",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","x = All Trim x",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x) to Listbox (List1) of Window (Win1)",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","x = CONVERT x TO Numeric",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
Return
*-------------------------------------------------------------------*
