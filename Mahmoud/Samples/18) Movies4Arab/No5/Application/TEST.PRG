#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 19:37:00    Date : 01/01/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ÊÍÏíÏ ÇßÈÑ ÑÞã" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 29 ,394 LABEL lbl1 ;
VALUE "ÇáÑÞã" ;
WIDTH 30 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 29 ,167 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 79 ,167 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 29 ,65 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 300 ,167 BUTTONEX btnmax;
CAPTION "ÊÍÏíÏ ÇßÈÑ ÑÞã";
ON CLICK mymax()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1

Proc myadd
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount = 0
MyOut := MSGBOX("ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÇÚÏÇÏ","ÚÝæÇ")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount = 1
MyOut := MSGBOX(mymax,"ÇßÈÑ ÑÞã")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem > mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"ÇßÈÑ ÑÞã")
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",10,11)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Event",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd )",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax )",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇáÞÇÆãÉ ÊÎáæ ãä ÇáÇÚÏÇÏ' Title 'ÚÝæÇ' Type: Message Box",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 1 )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã' Type: Message Box",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã' Type: Message Box",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
Return
*-------------------------------------------------------------------*
