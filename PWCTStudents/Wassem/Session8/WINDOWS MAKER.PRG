*---------------------------------------------------------------------------*
* Time : 21:59:46    Date : 01/07/2012
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


Resistance R_WINDOWS_MAKER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WINDOWS_MAKER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 559 ;
HEIGHT 300 ;
ICON "PWCTICON" ;
TITLE "A quick counter - by Waseem" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

DEFINE MAIN MENU of win1
POPUP "Information"
MENUITEM "The programmer" Action MSGINFO( "The programmer is Waseem Mhammad Saaid from Syria" )
MENUITEM "Web site" Action MSGINFO( "www.nwsmgroup.allgoo.net" )
MENUITEM "E-mail" Action MSGINFO( "waseem_m_s@hotmail.com" )
END POPUP
POPUP "close"
MENUITEM "close" Action close()
END POPUP
END MENU
@ 90 ,131 LABEL lbl3 ;
VALUE "0" ;
WIDTH 55 ;
HEIGHT 97 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,64} ;
FONTCOLOR {255,255,0}
@ 118 ,186 BUTTONEX btn2;
CAPTION "up";
ON CLICK num()  ;
WIDTH 51 HEIGHT 70 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 122 ,79 BUTTONEX btn3;
CAPTION "Down";
ON CLICK numm()  ;
WIDTH 52 HEIGHT 66 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 39 ,186 BUTTONEX btn4;
CAPTION "*num";
ON CLICK nummm()  ;
WIDTH 51 HEIGHT 80 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 41 ,79 BUTTONEX btn5;
CAPTION "*2";
ON CLICK nummmmm()  ;
WIDTH 52 HEIGHT 81 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 38 ,130 BUTTONEX btn6;
CAPTION "÷2";
ON CLICK nummmm()  ;
WIDTH 56 HEIGHT 52 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 42 ,336 BUTTONEX btn10;
CAPTION "0";
ON CLICK num0()  ;
WIDTH 96 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 68 ,336 BUTTONEX btn11;
CAPTION "1";
ON CLICK num1()  ;
WIDTH 96 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 97 ,334 BUTTONEX btn12;
CAPTION "2";
ON CLICK num2()  ;
WIDTH 98 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 127 ,334 BUTTONEX btn13;
CAPTION "3";
ON CLICK num3()  ;
WIDTH 98 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 158 ,335 BUTTONEX btn14;
CAPTION "4";
ON CLICK num4()  ;
WIDTH 97 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 42 ,236 BUTTONEX btn15;
CAPTION "5";
ON CLICK num5()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 71 ,236 BUTTONEX btn16;
CAPTION "6";
ON CLICK num6()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 100 ,236 BUTTONEX btn17;
CAPTION "7";
ON CLICK num7()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 129 ,236 BUTTONEX btn18;
CAPTION "8";
ON CLICK num8()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 159 ,235 BUTTONEX btn19;
CAPTION "9";
ON CLICK num9()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc num
num := win1.lbl3.Value
num = VAL ( num )
num := num+1
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc numm
num := win1.lbl3.Value
num = VAL ( num )
num := num-1
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc nummm
num := win1.lbl3.Value
num = VAL ( num )
num := num*num
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc nummmm
num := win1.lbl3.Value
num = VAL ( num )
num := num/2
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc nummmmm
num := win1.lbl3.Value
num = VAL ( num )
num := num*2
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num0
num := win1.lbl3.Value
num = VAL ( num )
num := num*0
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num1
num := win1.lbl3.Value
num = VAL ( num )
num := num*0+1
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num2
num := win1.lbl3.Value
num = VAL ( num )
num := num*0+2
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num3
num := win1.lbl3.Value
num = VAL ( num )
num := num*0+3
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num4
num := win1.lbl3.Value
num = VAL ( num )
num := num*0+4
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num5
num := win1.lbl3.Value
num = VAL ( num )
num := num*0+5
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num6
num := win1.lbl3.Value
num = VAL ( num )
num := num*0+6
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num7
num := win1.lbl3.Value
num = VAL ( num )
num := num*0+7
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num8
num := win1.lbl3.Value
num = VAL ( num )
num := num*0+8
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil
Proc num9
num := win1.lbl3.Value
num = VAL ( num )
num := num*0+9
num = STR ( num )
win1.lbl3.Value := num
num = ALLTRIM ( num )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WINDOWS_MAKER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'A quick counter - by Waseem'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Information'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'The programmer' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Web site' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'E-mail' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'close'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'close' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '0'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'up'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Down'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action numm()",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '*num'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nummm()",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '*2'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nummmmm()",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : '÷2'",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nummmm()",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : '0'",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num0()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn11 ) , Caption : '1'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num1()",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn12 ) , Caption : '2'",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num2()",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn13 ) , Caption : '3'",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num3()",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn14 ) , Caption : '4'",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num4()",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn15 ) , Caption : '5'",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num5()",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn16 ) , Caption : '6'",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num6()",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn17 ) , Caption : '7'",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num7()",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn18 ) , Caption : '8'",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num8()",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn19 ) , Caption : '9'",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action num9()",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",117,119)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",122,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","num = num+1",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure numm",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","num = num-1",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nummm",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*num",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nummmm",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","num = num/2",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nummmmm",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*2",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num0",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num1",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0+1",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num2",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0+2",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num3",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0+3",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num4",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0+4",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num5",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0+5",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num6",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0+6",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num7",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0+7",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num8",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0+8",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure num9",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl3.Value",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","num = num*0+9",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := num",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",247,247)
Return
*-------------------------------------------------------------------*
