*---------------------------------------------------------------------------*
* Time : 15:49:25    Date : 01/31/2012
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


Resistance R_LESSON_16_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON_16_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "The largest number" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 26 ,3 LABEL lbl1 ;
VALUE "Number " ;
WIDTH 83 ;
HEIGHT 31 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 29 ,92 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 184 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 31 ,281 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 266 ,115 BUTTONEX btn1;
CAPTION "Add ";
ON CLICK add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 265 ,251 BUTTONEX btn2;
CAPTION "Maximum ";
ON CLICK maximum()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc add
num1 := win1.text1.Value
num1 = STR ( num1 )
win1.list1.AddItem ( num1 )
Return Nil
Proc maximum
count := win1.list1.ItemCount
IF count==0
MyOut := MSGBOX("the list doesn't have items ","message ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF count==1
MyOut := MSGBOX(mymax," the largest number")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO count STEP 1
item := win1.list1.item(x)
item = VAL ( item )
IF item > mymax
mymax := item
ENDIF
Next
mymax2 = STR ( mymax )
MyOut := MSGBOX(mymax2," the largest number")
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON_16
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'The largest number'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Maximum '",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maximum",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO STRING",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( num1 )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maximum",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","count = win1.list1.ItemCount",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( count==0 )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'the list doesn't have items ' Title 'message ' Type: Message Box",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( count==1 )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title ' the largest number' Type: Message Box",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To count Step 1)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","item = win1.list1.item(x)",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","item = CONVERT item TO Numeric",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( item > mymax )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = item",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","mymax2 = CONVERT mymax TO STRING",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax2 Title ' the largest number' Type: Message Box",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
