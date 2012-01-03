*---------------------------------------------------------------------------*
* Time : 21:03:06    Date : 01/01/2012
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


Resistance R_THIRD_APPLICATION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_THIRD_APPLICATION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 540 ;
HEIGHT 558 ;
ICON "PWCTICON" ;
TITLE "Third Application" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 7 ,197 LABEL lbl1 ;
VALUE "Report Card" ;
WIDTH 134 ;
HEIGHT 44 ;
FONT "Blackadder ITC" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 242 ,4 LABEL lbl2 ;
VALUE "English" ;
WIDTH 61 ;
HEIGHT 35 ;
FONT "CityBlueprint" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 203 ,4 LABEL lbl3 ;
VALUE "Mathematics" ;
WIDTH 87 ;
HEIGHT 29 ;
FONT "CityBlueprint" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 318 ,4 LABEL lbl4 ;
VALUE "Social Studies" ;
WIDTH 99 ;
HEIGHT 36 ;
FONT "CityBlueprint" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 279 ,4 LABEL lbl5 ;
VALUE "Sciences" ;
WIDTH 62 ;
HEIGHT 33 ;
FONT "CityBlueprint" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 86 ,4 LABEL lbl6 ;
VALUE "Religion" ;
WIDTH 59 ;
HEIGHT 32 ;
FONT "CityBlueprint" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 122 ,4 LABEL lbl7 ;
VALUE "Arabic" ;
WIDTH 52 ;
HEIGHT 30 ;
FONT "CityBlueprint" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 160 ,4 LABEL lbl8 ;
VALUE "Art" ;
WIDTH 46 ;
HEIGHT 35 ;
FONT "CityBlueprint" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 385 ,4 LABEL lbl9 ;
VALUE "Sum" ;
WIDTH 46 ;
HEIGHT 31 ;
FONT "CityBlueprint" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 425 ,4 LABEL lbl10 ;
VALUE "Percentage" ;
WIDTH 84 ;
HEIGHT 30 ;
FONT "CityBlueprint" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 54 ,235 LABEL lbl11 ;
VALUE "Marks" ;
WIDTH 60 ;
HEIGHT 37 ;
FONT "Bell MT" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 476 ,287 BUTTONEX btn1;
CAPTION "Calculate";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,128};
ON CLICK calc()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Franklin Gothic Medium" SIZE 12 ;
TOOLTIP ""
@ 476 ,422 BUTTONEX btn2;
CAPTION "Exit";
FONTCOLOR {255,0,0};
BACKCOLOR {255,255,128};
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Black" SIZE 12 ;
TOOLTIP ""
@ 86 ,105 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 38 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 122 ,105 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 38 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 160 ,105 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 38 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 203 ,105 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 38 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 242 ,105 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 38 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 279 ,105 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 38 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 318 ,105 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 38 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 385 ,105 TEXTBOX text8;
HEIGHT 32 ;
WIDTH 55 ;
READONLY ;
FONT "@Arial Unicode MS" SIZE 12 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {255,0,0} 

@ 86 ,311 TEXTBOX text9;
HEIGHT 30 ;
WIDTH 38 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 122 ,311 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 38 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 160 ,311 TEXTBOX text11;
HEIGHT 30 ;
WIDTH 38 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 203 ,311 TEXTBOX text12;
HEIGHT 30 ;
WIDTH 38 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 242 ,311 TEXTBOX text13;
HEIGHT 30 ;
WIDTH 38 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 279 ,311 TEXTBOX text14;
HEIGHT 30 ;
WIDTH 38 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 318 ,311 TEXTBOX text15;
HEIGHT 30 ;
WIDTH 38 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 385 ,311 TEXTBOX text16;
HEIGHT 31 ;
WIDTH 61 ;
READONLY ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {255,0,0} 

@ 429 ,105 TEXTBOX text17;
HEIGHT 32 ;
WIDTH 55 ;
READONLY ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {255,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num3 = VAL ( win1.text3.value )
num4 = VAL ( win1.text4.value )
num5 = VAL ( win1.text5.value )
num6 = VAL ( win1.text6.value )
num7 = VAL ( win1.text7.value )
n9 = VAL ( win1.text9.value )
n10 = VAL ( win1.text10.value )
n11 = VAL ( win1.text11.value )
n12 = VAL ( win1.text12.value )
n13 = VAL ( win1.text13.value )
n14 = VAL ( win1.text14.value )
n15 = VAL ( win1.text15.value )
sum := (n9+n10+n11+n12+n13+n14+n15)
sum1 := (num1+num2+num3+num4+num5+num6+num7)
Perc := (sum1/sum)*100
sum = STR ( sum )
sum1 = STR ( sum1 )
Perc = STR ( Perc )
sum = ALLTRIM ( sum )
sum1 = ALLTRIM ( sum1 )
Perc = ALLTRIM ( Perc )
win1.text16.Value := sum
win1.text8.Value := sum1
win1.text17.Value := Perc+" "+"%"
Return Nil
procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_THIRD_APPLICATION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Third Application'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Report Card'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'English'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Mathematics'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Social Studies'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Sciences'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Religion'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Arabic'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Art'",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Sum'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Percentage'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Marks'",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate'",90,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc()",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",98,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",113,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",119,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",125,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",131,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",137,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",143,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",149,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",157,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",165,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",173,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",181,187)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text13  )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",189,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text14  )",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",197,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text15  )",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",205,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text16  )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",213,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text17  )",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",220,225)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",226,227)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",228,230)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT win1.text3.value TO Numeric",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","num4 = CONVERT win1.text4.value TO Numeric",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","num5 = CONVERT win1.text5.value TO Numeric",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","num6 = CONVERT win1.text6.value TO Numeric",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","num7 = CONVERT win1.text7.value TO Numeric",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","n9 = CONVERT win1.text9.value TO Numeric",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","n10 = CONVERT win1.text10.value TO Numeric",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","n11 = CONVERT win1.text11.value TO Numeric",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","n12 = CONVERT win1.text12.value TO Numeric",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","n13 = CONVERT win1.text13.value TO Numeric",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","n14 = CONVERT win1.text14.value TO Numeric",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","n15 = CONVERT win1.text15.value TO Numeric",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","sum = (n9+n10+n11+n12+n13+n14+n15)",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","sum1 = (num1+num2+num3+num4+num5+num6+num7)",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Perc = (sum1/sum)*100",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","sum = CONVERT sum TO STRING",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","sum1 = CONVERT sum1 TO STRING",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Perc = CONVERT Perc TO STRING",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","sum = All Trim sum",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","sum1 = All Trim sum1",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Perc = All Trim Perc",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text16.Value := sum",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text8.Value := sum1",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text17.Value := Perc+' '+'%'",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",261,261)
Return
*-------------------------------------------------------------------*
