*---------------------------------------------------------------------------*
* Time : 19:22:52    Date : 10/21/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_MOVABLELABEL_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MOVABLELABEL_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 526 ;
HEIGHT 302 ;
ICON "PWCTICON" ;
TITLE "Movable Label" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 

@ 217 ,-5 LABEL lbl2 ;
VALUE "" ;
WIDTH 530 ;
HEIGHT 60 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 223 ,132 LABEL lbl1 ;
VALUE "Welcome to the Real World" ;
WIDTH 250 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 50 ;
Action mytimer()
@ 15 ,9 TEXTBOX text1;
ON ENTER myset()  ;
HEIGHT 30 ;
WIDTH 380 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 16 ,400 BUTTONEX btn1;
CAPTION "Set Text";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK myset()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 50 ,9 LISTBOX list1;
ON CHANGE mylist()  ;
WIDTH 380 ;
HEIGHT 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Function  mytimer ()
mycol := win1.lbl1.Col
win1.lbl1.Col := mycol + 10
IF mycol > 500
win1.lbl1.Col := 10
ENDIF
Return
Proc myset
mytext := win1.text1.Value
win1.lbl1.Value := mytext
win1.list1.AddItem ( mytext )
win1.text1.Value := ""
Return Nil
Proc mylist
myitem := win1.list1.Value
mytext := win1.list1.item(myitem)
win1.text1.Value := mytext
win1.lbl1.Value := mytext


End Of Resistance

INIT PROCEDURE Init_MOVABLELABEL
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Movable Label'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome to the Real World'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action myset()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Set Text'",39,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myset()",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mylist()",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function mytimer",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","mycol = win1.lbl1.Col",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := mycol + 10",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycol > 500 )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := 10",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myset",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := mytext",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mylist",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.Value",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.list1.item(myitem)",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := mytext",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := mytext",76,76)
Return
*-------------------------------------------------------------------*
