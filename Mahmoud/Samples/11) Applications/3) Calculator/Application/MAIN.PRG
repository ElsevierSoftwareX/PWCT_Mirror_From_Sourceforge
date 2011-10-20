*---------------------------------------------------------------------------*
* Time : 23:17:31    Date : 10/20/2011
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 335 ;
HEIGHT 477 ;
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
FONT "arial" SIZE 9 ;
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
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
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
EndIF

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
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Calculator'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '1'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('1')",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '2'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('2')",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '3'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('3')",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '4'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('4')",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '5'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('5')",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : '6'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('6')",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : '7'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('7')",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : '8'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('8')",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : '9'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('9')",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn0 ) , Caption : '0'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addnum('0')",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnplus ) , Caption : '+'",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addsign('+')",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmin ) , Caption : '-'",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addsign('-')",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmul ) , Caption : '*'",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addsign('*')",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndiv ) , Caption : '/'",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addsign('/')",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnequal ) , Caption : '='",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action result()",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",108,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclear ) , Caption : 'Clear'",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action clearall()",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",114,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Input'",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",119,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'History'",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",126,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",132,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnbackspace ) , Caption : 'Backspace'",138,139)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action backspace()",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",141,143)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Enabled := .f.",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",158,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addnum( cNum )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = mytext + cnum",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := mytext",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addsign( cSign )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mytext == '' )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut =  Get SubString from right, String: mytext Count: 1",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout != '+' .and. myout != '-' .and. myout != '*' .and. myout != '/' )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = mytext + csign",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := mytext",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clearall",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure result",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","myout = win1.text1.Value",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","myout = All Trim myout",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout == '' )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut =  Get SubString from right, String: myout Count: 1",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout != '+' .and. myout != '-' .and. myout != '*' .and. myout != '/' )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","myout = win1.text1.Value",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to Editbox (Edit1) of Window (Win1)",191,195)
SS_ESASTEP("Circuits\Main\Main\Main","myout = &myout",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CONVERT myout TO STRING",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","myout = All Trim myout",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('---> ' +myout) to Editbox (Edit1) of Window (Win1)",199,203)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := myout",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure backspace",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Length of String/Variable/Array mytext",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Mytext =  Get SubString from left, String: mytext Count: mycount-1",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := mytext",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",216,216)
Return
*-------------------------------------------------------------------*
