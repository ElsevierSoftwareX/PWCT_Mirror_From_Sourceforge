*---------------------------------------------------------------------------*
* Time : 19:10:01    Date : 09/20/2012
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
WIDTH 594 ;
HEIGHT 365 ;
ICON "PWCTICON" ;
TITLE " Control Structure " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 5 ,462 BUTTONEX btn1;
CAPTION "Test ";
ON CLICK pWork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ -2 ,4 LISTBOX list1;
WIDTH 406 ;
HEIGHT 259 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 289 ,6 LABEL lbl1 ;
VALUE "From " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 288 ,137 LABEL lbl2 ;
VALUE "To " ;
WIDTH 37 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 287 ,255 LABEL lbl3 ;
VALUE "Step" ;
WIDTH 48 ;
HEIGHT 26 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 281 ,42 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 93 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 281 ,154 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 102 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 279 ,291 TEXTBOX text3;
HEIGHT 37 ;
WIDTH 122 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 289 ,461 BUTTONEX btn2;
CAPTION "Test2 ";
ON CLICK pWork2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 41 ,464 BUTTONEX btn3;
CAPTION "Clear ";
ON CLICK clear()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 115 ,465 BUTTONEX btn4;
CAPTION "jjgj";
ON CLICK size()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
FOR x = 1 TO 5 STEP 2
Win1.List1.Additem ( "Hello Everybody " )
x2 = STR ( x )
Win1.List1.Additem ( x2 )
Next
return
procedure pWork2()
win1.list1.DeleteAllItems ( )
nFrom := win1.text1.Value
nTo := win1.text2.Value
nStep := win1.text3.Value
FOR x =nFrom TO nTo STEP nStep
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
return
procedure clear()
win1.list1.DeleteAllItems ( )
return
procedure COUNT()
return
procedure size()
win1.Backcolor := YELLOW
return


End Of Resistance

INIT PROCEDURE Init_LESSON10
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Control Structure '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Test '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'From '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'To '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Step'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Test2 '",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork2",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Clear '",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action clear",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'jjgj'",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action size",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork ( Event : CLICK )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 5 Step 2)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Hello Everybody ') to Listbox (List1) of Window (Win1)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork2 ( Event : CLICK )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","nFrom = win1.text1.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","nTo = win1.text2.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","nStep = win1.text3.Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x =nFrom To nTo Step nStep)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clear ( Event : CLICK )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure COUNT ( Event : CLICK )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure size ( Event : CLICK )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Backcolor := YELLOW",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
Return
*-------------------------------------------------------------------*
