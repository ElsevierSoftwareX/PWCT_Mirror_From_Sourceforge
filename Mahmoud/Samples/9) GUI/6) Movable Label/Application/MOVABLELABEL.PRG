#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 01:29:18    Date : 09/23/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
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
@ 15 ,11 TEXTBOX text1;
ON ENTER myset()  ;
HEIGHT 30 ;
WIDTH 380 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}
@ 16 ,400 BUTTON btn1;
CAPTION "Set Text";
ON CLICK myset()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 50 ,9 LISTBOX list1;
ON CHANGE mylist()  ;
WIDTH 380 ;
HEIGHT 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

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
Return Nil


End Of Resistance

INIT PROCEDURE Init_MOVABLELABEL
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Event",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function mytimer",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mycol = win1.lbl1.Col",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := mycol + 10",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycol > 500 )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Col := 10",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myset",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := mytext",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mylist",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.Value",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.list1.item(myitem)",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := mytext",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := mytext",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
Return
*-------------------------------------------------------------------*
