#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 21:35:28    Date : 01/09/2009
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


Resistance RPQOYS1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RPQOYS1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 265 ;
HEIGHT 318 ;
ICON "win1" ;
TITLE "¬·… Õ«”»… »”Ìÿ…" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 242 ,13 BUTTONEX btn1;
CAPTION "≈€·«ﬁ";
ON CLICK Sameh()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 185 ,192 BUTTONEX btn2;
CAPTION "+";
ON CLICK Sum()  ;
WIDTH 51 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 16 ,13 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 231 ;
FONT "arial" SIZE 16 ;
BOLD ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 68 ,13 TEXTBOX text2;
HEIGHT 35 ;
WIDTH 231 ;
FONT "arial" SIZE 16 ;
BOLD ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 137 ,12 TEXTBOX text3;
HEIGHT 35 ;
WIDTH 231 ;
READONLY ;
FONT "arial" SIZE 16 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 185 ,132 BUTTONEX btn3;
CAPTION "-";
ON CLICK Minus()  ;
WIDTH 51 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 185 ,72 BUTTONEX btn4;
CAPTION "◊";
ON CLICK Multi()  ;
WIDTH 51 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 185 ,12 BUTTONEX btn5;
CAPTION "˜";
ON CLICK Div()  ;
WIDTH 51 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 103 ,121 LABEL lbl2 ;
VALUE "=" ;
WIDTH 110 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win1

Proc Sameh
win1.Release ( )
Return Nil
Proc Multi
num1 := win1.text1.Value
num2 := win1.text2.Value
win1.text3.Value := num1*num2
Return Nil
Proc Sum
num1 := win1.text1.Value
num2 := win1.text2.Value
win1.text3.Value := num1+num2
Return Nil
Proc Div
num1 := win1.text1.Value
num2 := win1.text2.Value
win1.text3.Value := num1/num2
Return Nil
Proc Minus
num1 := win1.text1.Value
num2 := win1.text2.Value
win1.text3.Value := num1-num2
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAMEH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,11)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 )",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,83)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","proc",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sameh",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Multi",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num1*num2",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sum",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num1+num2",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Div",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num1/num2",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Minus",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num1-num2",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
Return
*-------------------------------------------------------------------*
