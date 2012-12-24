*---------------------------------------------------------------------------*
* Time : 01:26:11    Date : 12/14/2012
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
WIDTH 419 ;
HEIGHT 317 ;
ICON "PWCTICON" ;
TITLE "  «· ⁄—› ⁄·Ï Ã„· «· Õﬂ„ControlStructure" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LISTBOX list1;
WIDTH 284 ;
HEIGHT 203 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 16 ,295 BUTTONEX btn1;
CAPTION "test«·«Œ »«— ";
ON CLICK pWork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 225 ,6 LABEL lbl1 ;
VALUE "Form " ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 225 ,126 LABEL lbl2 ;
VALUE "To " ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 225 ,215 LABEL lbl3 ;
VALUE "Step " ;
WIDTH 47 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 220 ,38 TEXTBOX textForm;
HEIGHT 30 ;
WIDTH 50 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 222 ,146 TEXTBOX textTo;
HEIGHT 30 ;
WIDTH 50 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 222 ,244 TEXTBOX textStep;
HEIGHT 30 ;
WIDTH 50 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 222 ,300 BUTTONEX btn2;
CAPTION "test2 ";
ON CLICK pWork2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
FOR x = 1 TO 3 STEP 1
Win1.List1.Additem ( " „—Õ»«" )
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
return
procedure pWork2()
nForm := win1.textForm.Value
nTo := win1.textTo.Value
nStep := win1.textStep.Value
win1.list1.DeleteAllItems ( )
FOR x = nForm TO nTo STEP nStep
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  «· ⁄—› ⁄·Ï Ã„· «· Õﬂ„ControlStructure'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'test«·«Œ »«— '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Form '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'To '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Step '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textForm  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textTo  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textStep  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'test2 '",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork2",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork ( Event : CLICK )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 3 Step 1)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' „—Õ»«') to Listbox (List1) of Window (Win1)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork2 ( Event : CLICK )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","nForm = win1.textForm.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","nTo = win1.textTo.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","nStep = win1.textStep.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = nForm To nTo Step nStep)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",97,97)
Return
*-------------------------------------------------------------------*
