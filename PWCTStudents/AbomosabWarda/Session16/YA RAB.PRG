*---------------------------------------------------------------------------*
* Time : 02:45:53    Date : 01/28/2012
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


Resistance R_LESSON16_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON16_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 416 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "Lesson 16  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,0,128} 

@ 27 ,168 TEXTBOX text1;
HEIGHT 46 ;
WIDTH 197 ;
BOLD ;
BACKCOLOR {255,128,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 366 ,174 LABEL lbl1 ;
VALUE "Created By: Ahmed Warda" ;
WIDTH 230 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Bauhaus 93" SIZE 14  ;
BOLD ;
BACKCOLOR {255,255,128} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 90 ,30 LISTBOX list1;
WIDTH 337 ;
HEIGHT 210 ;
FONT "Broadway" SIZE 24 ;
BOLD ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,0}
@ 28 ,28 BUTTONEX btnadd;
CAPTION "Add Numbers";
ON CLICK myadd()  ;
WIDTH 133 HEIGHT 48 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
@ 311 ,89 BUTTONEX btnmax;
CAPTION "The Largest Number";
ON CLICK mymax()  ;
WIDTH 211 HEIGHT 33 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Ahmed Warda"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd
num1 := win1.text1.Value
num1 = STR ( num1 )
win1.list1.AddItem ( num1 )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount==0
MyOut := MSGSTOP("Free list of the numbers","Sorry")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount==1
MyOut := MSGINFO(mymax,"The largest Number")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem>mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGINFO(mymax,"The largest Number")
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON16
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 16  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Created By: Ahmed Warda'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'Add Numbers'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax ) , Caption : 'The Largest Number'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ahmed Warda' )",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Date",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO STRING",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( num1 )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount==0 )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Free list of the numbers' Title 'Sorry' Type: Message Stop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount==1 )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'The largest Number' Type: Message Info",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem>mymax )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'The largest Number' Type: Message Info",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
Return
*-------------------------------------------------------------------*
