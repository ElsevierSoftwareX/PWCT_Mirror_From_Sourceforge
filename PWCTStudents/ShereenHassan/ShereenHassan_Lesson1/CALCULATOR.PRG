*---------------------------------------------------------------------------*
* Time : 15:52:21    Date : 02/23/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
WIDTH 517 ;
HEIGHT 387 ;
ICON "PWCTICON" ;
TITLE "My Calculator  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 8 ,12 LABEL lbl1 ;
VALUE "My Calculator " ;
WIDTH 181 ;
HEIGHT 37 ;
FONT "Arial" SIZE 20  ;
UNDERLINE ;
BACKCOLOR {242,242,242} ;
FONTCOLOR {0,121,61}
@ 261 ,155 BUTTONEX btn1;
CAPTION "Pers (%) ";
FONTCOLOR {255,255,255};
BACKCOLOR {82,82,82};
ON CLICK pers()  ;
WIDTH 70 HEIGHT 28 ;
FONT "Arial" SIZE 10 ;
NOXPSTYLE ;
TOOLTIP ""
@ 280 ,378 BUTTONEX btn2;
CAPTION "Exit";
FONTCOLOR {252,16,51};
ON CLICK CloseWindow()  ;
WIDTH 101 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 65 ,14 LABEL lbl2 ;
VALUE "Number 1 " ;
WIDTH 85 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 109 ,14 LABEL lbl3 ;
VALUE "Number 2 " ;
WIDTH 84 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 158 ,18 LABEL lbl4 ;
VALUE "Result " ;
WIDTH 58 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 63 ,131 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 110 ,130 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 157 ,130 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 219 ,71 BUTTONEX btn3;
CAPTION "SUM (+) ";
FONTCOLOR {255,255,255};
BACKCOLOR {82,82,82};
ON CLICK sum()  ;
WIDTH 61 HEIGHT 27 ;
FONT "Arial" SIZE 10 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 216 ,249 BUTTONEX btn4;
CAPTION "MUL (*) ";
FONTCOLOR {255,255,255};
BACKCOLOR {82,82,82};
ON CLICK mul()  ;
WIDTH 60 HEIGHT 27 ;
FONT "Arial" SIZE 10 ;
NOXPSTYLE ;
TOOLTIP ""
@ 218 ,153 BUTTONEX btn5;
CAPTION "SUB (-) ";
FONTCOLOR {255,255,255};
BACKCOLOR {82,82,82};
ON CLICK SUB()  ;
WIDTH 72 HEIGHT 27 ;
FONT "Arial" SIZE 10 ;
NOXPSTYLE ;
TOOLTIP ""
@ 261 ,71 BUTTONEX btn6;
CAPTION "DIV (/) ";
FONTCOLOR {255,255,255};
BACKCOLOR {82,82,82};
ON CLICK div()  ;
WIDTH 61 HEIGHT 25 ;
FONT "Arial" SIZE 10 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 259 ,250 BUTTONEX btn7;
CAPTION "Clear ";
FONTCOLOR {0,128,0};
ON CLICK clear()  ;
WIDTH 62 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 14 ,348 IMAGE image1;
PICTURE "cal.jpg";
STRETCH ;
WIDTH 127 HEIGHT 233
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure CloseWindow()
win1.Release ( )
return
procedure sum()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
sum := num1+num2
sum = STR ( sum )
sum = ALLTRIM ( sum )
win1.text3.Value := sum
return
procedure mul()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
mul := num1*num2
mul = STR ( mul )
mul = ALLTRIM ( mul )
win1.text3.Value := mul
return
procedure SUB()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
SUB := num1-num2
SUB = STR ( SUB )
SUB = ALLTRIM ( SUB )
win1.text3.Value := SUB
return
procedure div()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
div := num1/num2
div = STR ( div )
div = ALLTRIM ( div )
win1.text3.Value := div
return
procedure pers()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers
return
procedure clear()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num3 = VAL ( win1.text3.value )
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
return


End Of Resistance

INIT PROCEDURE Init_CALCULATOR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'My Calculator  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'My Calculator '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Pers (%) '",21,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pers",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseWindow",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Number 1 '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Number 2 '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Result '",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",72,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'SUM (+) '",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sum",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'MUL (*) '",89,92)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mul",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'SUB (-) '",98,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SUB",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",103,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'DIV (/) '",107,110)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action div",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Clear '",117,119)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action clear",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",121,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'cal.jpg'",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",132,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseWindow ( Event : CLICK )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sum ( Event : CLICK )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","sum = num1+num2",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","sum = CONVERT sum TO STRING",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","sum = All Trim sum",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := sum",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mul ( Event : CLICK )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","mul = num1*num2",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","mul = CONVERT mul TO STRING",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","mul = All Trim mul",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := mul",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SUB ( Event : CLICK )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","SUB = num1-num2",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","SUB = CONVERT SUB TO STRING",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","SUB = All Trim SUB",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := SUB",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure div ( Event : CLICK )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","div = num1/num2",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","div = CONVERT div TO STRING",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","div = All Trim div",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := div",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pers ( Event : CLICK )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","pers = All Trim pers",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clear ( Event : CLICK )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT win1.text3.value TO Numeric",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = 0",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = 0",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = 0",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO STRING",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT num2 TO STRING",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT num3 TO STRING",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = All Trim num1",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = All Trim num2",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = All Trim num3",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := num1",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := num2",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num3",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",194,194)
Return
*-------------------------------------------------------------------*
