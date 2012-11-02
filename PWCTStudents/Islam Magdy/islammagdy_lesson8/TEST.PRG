*---------------------------------------------------------------------------*
* Time : 06:04:20    Date : 10/23/2012
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
WIDTH 431 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "«· ⁄—› ⁄·Ï Ã„· «· Õﬂ„ control structure  " ;
MAIN ;
BACKCOLOR {128,64,64} 

@ 18 ,24 LISTBOX list1;
WIDTH 218 ;
HEIGHT 214 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 18 ,286 BUTTONEX btn1;
CAPTION "test «Œ »«— ";
ON CLICK pWork()  ;
WIDTH 111 HEIGHT 51 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 268 ,261 LABEL lbl1 ;
VALUE "from " ;
WIDTH 91 ;
HEIGHT 47 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 267 ,147 LABEL lbl2 ;
VALUE "to " ;
WIDTH 77 ;
HEIGHT 46 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 266 ,25 LABEL lbl3 ;
VALUE "step" ;
WIDTH 81 ;
HEIGHT 45 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 329 ,254 TEXTBOX textFrom;
HEIGHT 43 ;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 331 ,140 TEXTBOX textTo;
HEIGHT 41 ;
WIDTH 86 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 330 ,21 TEXTBOX textStep;
HEIGHT 41 ;
WIDTH 85 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 188 ,277 BUTTONEX btn2;
CAPTION "test 2 «Œ »«— ";
ON CLICK pWork2()  ;
WIDTH 113 HEIGHT 56 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
FOR x = 1 TO 10 STEP 1
Win1.List1.Additem ( "hello " )
x2 = STR ( x )
Win1.List1.Additem ( x2 )
IF x =5
Exit
ENDIF
Next
return
procedure pWork2()
nFrom := win1.textFrom.Value
nTo := win1.textTo.Value
nStep := win1.textStep.Value
win1.list1.DeleteAllItems ( )
FOR x = nFrom TO nTo STEP nStep
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· ⁄—› ⁄·Ï Ã„· «· Õﬂ„ control structure  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'test «Œ »«— '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'from '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'to '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'step'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textFrom  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textTo  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textStep  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'test 2 «Œ »«— '",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork2",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork ( Event : CLICK )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('hello ') to Listbox (List1) of Window (Win1)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x =5 )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Exit",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork2 ( Event : CLICK )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","nFrom = win1.textFrom.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","nTo = win1.textTo.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","nStep = win1.textStep.Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = nFrom To nTo Step nStep)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
Return
*-------------------------------------------------------------------*
