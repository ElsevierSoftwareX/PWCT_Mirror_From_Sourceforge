*---------------------------------------------------------------------------*
* Time : 08:13:53    Date : 01/21/2012
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


Resistance R_PERCENTAGE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PERCENTAGE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 936 ;
HEIGHT 292 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {128,0,0} 

@ 117 ,422 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,0} 

@ 117 ,661 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,0} 

@ 120 ,40 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,0} 

@ 112 ,868 LABEL lbl1 ;
VALUE ")" ;
WIDTH 91 ;
HEIGHT 43 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,0,0}
@ 73 ,421 LABEL lbl2 ;
VALUE "The total student" ;
WIDTH 189 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,255,255}
@ 113 ,632 LABEL lbl3 ;
VALUE "/" ;
WIDTH 17 ;
HEIGHT 38 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,0,0}
@ 70 ,691 LABEL lbl4 ;
VALUE "Total kidney" ;
WIDTH 136 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,255,255}
@ 110 ,389 LABEL lbl5 ;
VALUE "(" ;
WIDTH 21 ;
HEIGHT 43 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,0,0}
@ 120 ,363 LABEL lbl6 ;
VALUE "*" ;
WIDTH 22 ;
HEIGHT 27 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,0,0}
@ 115 ,293 LABEL lbl7 ;
VALUE "100" ;
WIDTH 65 ;
HEIGHT 35 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,0,0}
@ 111 ,257 LABEL lbl8 ;
VALUE "=" ;
WIDTH 31 ;
HEIGHT 38 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,0,0}
@ 82 ,85 LABEL lbl9 ;
VALUE "Percentage" ;
WIDTH 129 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,255,255}
@ 17 ,329 LABEL lbl0 ;
VALUE "Calculate the percentage" ;
WIDTH 300 ;
HEIGHT 40 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,0,0}
@ 197 ,456 BUTTONEX btn1;
CAPTION "Calculate the percentage";
ON CLICK calc()  ;
WIDTH 278 HEIGHT 36 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 197 ,295 BUTTONEX btn2;
CAPTION "Close";
ON CLICK close()  ;
WIDTH 114 HEIGHT 38 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
total := (num1/num2)*100
prec = STR ( total )
prec = ALLTRIM ( prec )
win1.text3.Value := prec+" "+"%"
Return Nil
procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_PERCENTAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ')'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'The total student'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '/'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Total kidney'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '('",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : '*'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '100'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : '='",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Percentage'",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl0 ) , Caption : 'Calculate the percentage'",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate the percentage'",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",108,110)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",113,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","total = (num1/num2)*100",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","prec = CONVERT total TO STRING",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","prec = All Trim prec",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := prec+' '+'%'",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",126,126)
Return
*-------------------------------------------------------------------*
