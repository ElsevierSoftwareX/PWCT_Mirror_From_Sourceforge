*---------------------------------------------------------------------------*
* Time : 00:48:26    Date : 01/25/2012
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


Resistance R_APPLICATION16_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION16_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Max Number" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 25 ,258 TEXTBOX text1;
ON ENTER add()  ;
HEIGHT 33 ;
WIDTH 201 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 73 ,260 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 295 ,318 BUTTONEX btn1;
CAPTION "Get Max";
ON CLICK maxx()  ;
WIDTH 104 HEIGHT 39 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 19 ,10 LABEL lbl1 ;
VALUE "Add Number From Here :" ;
WIDTH 232 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 73 ,10 LABEL lbl2 ;
VALUE "Number's List :" ;
WIDTH 141 ;
HEIGHT 37 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 233 ,29 LABEL lbl3 ;
VALUE "" ;
WIDTH 189 ;
HEIGHT 112 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 149 ,5 LABEL lbl4 ;
VALUE "Your Max Number Is :" ;
WIDTH 236 ;
HEIGHT 38 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
INVISIBLE ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc add
num1 := win1.text1.Value
IF num1==""
MyOut := MSGSTOP("No Number Entered !!","Error")
Return 0
ENDIF
num1 = VAL ( num1 )
IF num1=="0"
Return 0
ENDIF
num1 = STR ( num1 )
win1.list1.AddItem ( num1 )
num2 := ""
win1.text1.Value := num2
Return Nil
Proc maxx
mycount := win1.list1.ItemCount
IF mycount==0
MyOut := MSGSTOP("No Number Entered !!","Error")
Return 0
ENDIF
mynum := win1.list1.item(1)
IF mycount=1
MyOut := MSGExclamation("Your Number Is : "+mynum,"Found")
Return 0
ENDIF
mynum1 = VAL ( mynum )
FOR x = 2 TO mycount STEP 1
mynum2 := win1.list1.item(x)
mynum2 = VAL ( mynum2 )
IF mynum2 > mynum1
mynum1 := mynum2
ENDIF
Next
mynum1 = STR ( mynum1 )
win1.lbl3.Value := mynum1
win1.lbl4.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_APPLICATION16
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Max Number'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action add",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {}",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Get Max'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxx",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Add Number From Here :'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Number's List :'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ''",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Your Max Number Is :'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( num1=='' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Number Entered !!' Title 'Error' Type: Message Stop",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO Numeric",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( num1=='0' )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO STRING",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( num1 )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = ''",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := num2",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxx",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount==0 )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Number Entered !!' Title 'Error' Type: Message Stop",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = win1.list1.item(1)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=1 )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Your Number Is : '+mynum Title 'Found' Type: Message Exclamation",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","mynum1 = CONVERT mynum TO Numeric",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","mynum2 = win1.list1.item(x)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","mynum2 = CONVERT mynum2 TO Numeric",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mynum2 > mynum1 )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","mynum1 = mynum2",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","mynum1 = CONVERT mynum1 TO STRING",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := mynum1",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Show ( )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
Return
*-------------------------------------------------------------------*
