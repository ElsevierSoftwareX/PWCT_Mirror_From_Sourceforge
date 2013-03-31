*---------------------------------------------------------------------------*
* Time : 17:02:39    Date : 10/19/2011
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
 * (Noun) *
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


Resistance R_CALCULATOR_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CALCULATOR_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 439 ;
HEIGHT 399 ;
ICON "PWCTICON" ;
TITLE "Shereen Hassan" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {128,255,128} 

@ 10 ,145 LABEL lbl1 ;
VALUE "   My Calculator" ;
WIDTH 156 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}
@ 78 ,12 LABEL lbl2 ;
VALUE "First Number" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 123 ,9 LABEL lbl3 ;
VALUE "Second Number" ;
WIDTH 110 ;
HEIGHT 26 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 171 ,11 LABEL lbl4 ;
VALUE "Result" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 72 ,134 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "0." ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 117 ,133 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "0." ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 161 ,133 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 235 ,17 BUTTONEX btn1;
CAPTION "SUM(+)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Sum()  ;
WIDTH 59 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,87 BUTTONEX btn2;
CAPTION "SUB(-)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Sub()  ;
WIDTH 55 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 234 ,155 BUTTONEX btn3;
CAPTION "MUL(*)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Mul()  ;
WIDTH 57 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 234 ,225 BUTTONEX btn4;
CAPTION "DIV(/)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Mydiv()  ;
WIDTH 59 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,289 BUTTONEX btn5;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,255};
ON CLICK Myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 233 ,299 BUTTONEX btn6;
CAPTION "Pers(%)";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Mypers()  ;
WIDTH 65 HEIGHT 27 ;
FONT "Arial" SIZE 11 ;
NOXPSTYLE ;
TOOLTIP ""
@ 286 ,16 BUTTONEX btn7;
CAPTION "Clear";
ON CLICK Clear()  ;
WIDTH 70 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myclose
win1.Release ( )
Return Nil
Proc Mypers
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+" "+"%"
Return Nil
Proc Mydiv
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
div := num1/num2
div = STR ( div )
div = ALLTRIM ( div )
win1.text3.Value := div
Return Nil
Proc Mul
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
mul := num1*num2
mul = STR ( mul )
mul = ALLTRIM ( mul )
win1.text3.Value := mul
Return Nil
Proc Sub
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
sub := num1-num2
sub = STR ( sub )
sub = ALLTRIM ( sub )
win1.text3.Value := sub
Return Nil
Proc Sum
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
sum := num1+num2
sum = STR ( sum )
sum = ALLTRIM ( sum )
win1.text3.Value := sum
Return Nil
Proc Clear
num1 := 0
num2 := 0
num3 := 0
num1 = STR ( num1 )
num2 = STR ( num2 )
num3 = STR ( num3 )
num1 = ALLTRIM ( num1 )
num2 = ALLTRIM ( num2 )
num3 = ALLTRIM ( num3 )
win1.text1.Value := num1
win1.text2.Value := num2
win1.text3.Value := num3


End Of Resistance

INIT PROCEDURE Init_CALCULATOR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Shereen Hassan'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '   My Calculator'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'First Number'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Second Number'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Result'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'SUM(+)'",62,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Sum()",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'SUB(-)'",71,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Sub()",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'MUL(*)'",80,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Mul()",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'DIV(/)'",89,92)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Mydiv()",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Close'",98,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myclose()",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",103,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Pers(%)'",107,110)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Mypers()",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Clear'",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Clear()",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclose",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mypers",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","pers = All Trim pers",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers+' '+'%'",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mydiv",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","div = num1/num2",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","div = CONVERT div TO STRING",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","div = All Trim div",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := div",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mul",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","mul = num1*num2",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","mul = CONVERT mul TO STRING",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","mul = All Trim mul",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := mul",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sub",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","sub = num1-num2",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","sub = CONVERT sub TO STRING",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","sub = All Trim sub",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := sub",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sum",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","sum = num1+num2",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","sum = CONVERT sum TO STRING",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","sum = All Trim sum",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := sum",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Clear",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = 0",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = 0",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = 0",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO STRING",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT num2 TO STRING",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT num3 TO STRING",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = All Trim num1",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = All Trim num2",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = All Trim num3",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := num1",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := num2",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num3",182,182)
Return
*-------------------------------------------------------------------*
