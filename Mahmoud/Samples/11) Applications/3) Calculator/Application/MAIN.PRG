#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 12:44:29    Date : 11/04/2008
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
WIDTH 326 ;
HEIGHT 474 ;
ICON "PWCTICON" ;
TITLE "Calculator" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 14 ,58 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 106 ,55 BUTTONEX btn1;
CAPTION "1";
ON CLICK addnum("1")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 106 ,109 BUTTONEX btn2;
CAPTION "2";
ON CLICK addnum("2")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 106 ,163 BUTTONEX btn3;
CAPTION "3";
ON CLICK addnum("3")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 156 ,55 BUTTONEX btn4;
CAPTION "4";
ON CLICK addnum("4")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 156 ,109 BUTTONEX btn5;
CAPTION "5";
ON CLICK addnum("5")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 156 ,163 BUTTONEX btn6;
CAPTION "6";
ON CLICK addnum("6")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,55 BUTTONEX btn7;
CAPTION "7";
ON CLICK addnum("7")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,109 BUTTONEX btn8;
CAPTION "8";
ON CLICK addnum("8")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,163 BUTTONEX btn9;
CAPTION "9";
ON CLICK addnum("9")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,213 BUTTONEX btn0;
CAPTION "0";
ON CLICK addnum("0")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 60 ,265 BUTTONEX btnplus;
CAPTION "+";
ON CLICK addsign("+")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 106 ,265 BUTTONEX btnmin;
CAPTION "-";
ON CLICK addsign("-")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 158 ,265 BUTTONEX btnmul;
CAPTION "*";
ON CLICK addsign("*")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,265 BUTTONEX btndiv;
CAPTION "/";
ON CLICK addsign("/")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 15 ,265 BUTTONEX btnequal;
CAPTION "=";
ON CLICK result()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 60 ,163 BUTTONEX btnclear;
CAPTION "Clear";
ON CLICK clearall()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 20 ,10 LABEL lbl1 ;
VALUE "Input" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 240 ,10 LABEL lbl2 ;
VALUE "History" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 240 ,58 EDITBOX edit1;
WIDTH 250 ;
HEIGHT 140;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 60 ,56 BUTTONEX btnbackspace;
CAPTION "Backspace";
ON CLICK backspace()  ;
WIDTH 92 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

END STATUSBAR

END WINDOW

win1.text1.Enabled := .f.
ACTIVATE WINDOW win1

Proc addnum( cNum )
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := mytext + cnum
win1.text1.Value := mytext
Return Nil
Proc addsign( cSign )
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
IF mytext == ""
Return 0
ENDIF
MyOut = Right(mytext,1)
IF myout != "+" .and. myout != "-" .and. myout != "*" .and. myout != "/"
mytext := mytext + csign
win1.text1.Value := mytext
ENDIF
Return Nil
Proc clearall
win1.text1.Value := ""
Return Nil
Proc result
myout := win1.text1.Value
myout = ALLTRIM ( myout )
IF myout == ""
Return 0
ENDIF
MyOut = Right(myout,1)
IF myout != "+" .and. myout != "-" .and. myout != "*" .and. myout != "/"
myout := win1.text1.Value
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + myout
else
Win1.Edit1.VALUE := myout
endif
myout := &myout
myout = STR ( myout )
myout = ALLTRIM ( myout )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "---> " +myout
else
Win1.Edit1.VALUE := "---> " +myout
endif
win1.text1.Value := myout
ENDIF
Return Nil
Proc backspace
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mycount  = LEN(mytext)
Mytext = Left(mytext,mycount-1)
win1.text1.Value := mytext
Return Nil
Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 )",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 )",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 )",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 )",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 )",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn0 )",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnplus )",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmin )",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmul )",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndiv )",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnequal )",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclear )",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",117,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",124,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",130,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnbackspace )",136,137)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Items",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Enabled := .f.",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",156,157)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addnum( cNum )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = mytext + cnum",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := mytext",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addsign( cSign )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mytext == '' )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut =  Get SubString from right, String: mytext Count: 1",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout != '+' .and. myout != '-' .and. myout != '*' .and. myout != '/' )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = mytext + csign",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := mytext",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clearall",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure result",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myout = win1.text1.Value",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","myout = All Trim myout",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout == '' )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut =  Get SubString from right, String: myout Count: 1",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout != '+' .and. myout != '-' .and. myout != '*' .and. myout != '/' )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myout = win1.text1.Value",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to Editbox (Edit1) of Window (Win1)",188,192)
SS_ESASTEP("Circuits\Main\Main\Main","myout = &myout",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CONVERT myout TO STRING",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","myout = All Trim myout",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('---> ' +myout) to Editbox (Edit1) of Window (Win1)",196,200)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := myout",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure backspace",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Length of String/Variable/Array mytext",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Mytext =  Get SubString from left, String: mytext Count: mycount-1",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := mytext",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",213,213)
Return
*-------------------------------------------------------------------*
