*---------------------------------------------------------------------------*
* Time : 09:46:08    Date : 01/04/2012
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


Resistance R_16_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_16_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 526 ;
HEIGHT 466 ;
ICON "PWCTICON" ;
TITLE "ÇáÏÑÓ ÇáÓÇÏÓ ÚÔÑ" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 22 ,20 LABEL lbl1 ;
VALUE "Number" ;
WIDTH 108 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 22 ,132 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 218 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 20 ,359 BUTTONEX btn1;
CAPTION "Add Number";
FONTCOLOR {0,0,0};
ON CLICK myadd()  ;
WIDTH 128 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 348 ,195 BUTTONEX btn2;
CAPTION "Exit";
FONTCOLOR {255,0,0};
ON CLICK myexit()  ;
WIDTH 94 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 292 ,132 BUTTONEX btn3;
CAPTION "The Maxmum Number";
ON CLICK mymax()  ;
WIDTH 218 HEIGHT 34 ;
FONT "" SIZE 14 ;
TOOLTIP ""
@ 74 ,133 LISTBOX list1;
WIDTH 216 ;
HEIGHT 206 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE STATUSBAR 

STATUSITEM "Designed by PWCT by Ahmed Attya"

DATE

CLOCK

END STATUSBAR

@ 136 ,359 BUTTONEX btn4;
CAPTION "Clear";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK clear()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc myadd
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount = 0
MyOut := MSGBOX("There is no Number","Sorry")
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
MyOut := MSGBOX(mymax,"Max Number")
Return Nil
Proc clear
win1.list1.DeleteAllItems ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_16
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÏÑÓ ÇáÓÇÏÓ ÚÔÑ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Number'",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myexit()",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'The Maxmum Number'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax()",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Designed by PWCT by Ahmed Attya' )",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Date",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Clear'",65,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action clear()",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = CONVERT mytext TO STRING",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytext )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There is no Number' Title 'Sorry' Type: Message Box",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = win1.list1.item(1)",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 1 )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'ÇßÈÑ ÑÞã' Type: Message Box",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO Numeric",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem > mymax )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = myitem",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mymax Title 'Max Number' Type: Message Box",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clear",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
Return
*-------------------------------------------------------------------*
