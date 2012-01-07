*---------------------------------------------------------------------------*
* Time : 17:21:18    Date : 01/07/2012
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


Resistance R_8_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_8_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 695 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Auto & Manual  Counter" ;
MAIN ;
BACKCOLOR {255,0,0} 

@ 177 ,12 LABEL lbl1 ;
VALUE "Please Enter No. to count to it ..." ;
WIDTH 354 ;
HEIGHT 43 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}
@ 177 ,400 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 174 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {128,0,0} 

@ 34 ,258 LABEL lbl2 ;
VALUE 0 ;
WIDTH 165 ;
HEIGHT 36 ;
FONT "Arial Black" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 94 ,191 BUTTONEX btn1;
CAPTION "Manual Count";
ON CLICK Manual()  ;
WIDTH 219 HEIGHT 39 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 240 ,191 BUTTONEX btn2;
CAPTION "Automatic  Count";
ON CLICK auto()  ;
WIDTH 218 HEIGHT 37 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Manual()
num1 := win1.lbl2.Value
num1 = VAL ( num1 )
num1 := num1 + 1
num1 = STR ( num1 )
num1 = ALLTRIM ( num1 )
win1.lbl2.Value := num1
return
procedure auto()
IF win1.text1.value==""
MyOut := MSGBOX("Please fill the empty field...","Error")
ELSE
start := win1.text1.Value
start = VAL ( start )
num2 := 0
num2 = STR ( num2 )
FOR x = 1 TO start STEP 1
num2 = VAL ( num2 )
num2 := num2 +1
num2 = STR ( num2 )
win1.lbl2.Value := num2
FOR xxx = 1 TO 666 STEP 1
win1.lbl2.Value := num2
Next
Next
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Auto & Manual  Counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Please Enter No. to count to it ...'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 0",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Manual Count'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Manual",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Automatic  Count'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action auto",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Manual ( Event : CLICK )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.lbl2.Value",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO Numeric",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = num1 + 1",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO STRING",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = All Trim num1",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := num1",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure auto ( Event : CLICK )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.text1.value=='' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please fill the empty field...' Title 'Error' Type: Message Box",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","start = win1.text1.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","start = CONVERT start TO Numeric",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = 0",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT num2 TO STRING",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To start Step 1)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT num2 TO Numeric",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = num2 +1",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT num2 TO STRING",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := num2",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From xxx = 1 To 666 Step 1)",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := num2",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
Return
*-------------------------------------------------------------------*
