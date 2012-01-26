*---------------------------------------------------------------------------*
* Time : 21:29:15    Date : 01/22/2012
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


Resistance R_LESSON3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 505 ;
HEIGHT 543 ;
ICON "PWCTICON" ;
TITLE "«·⁄„·Ì«  «·Õ”«»ÌÂ" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 42 ,402 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 52 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 102 ,392 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄" ;
WIDTH 62 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 164 ,360 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 94 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 42 ,10 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 99 ,10 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 160 ,10 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 203 ,181 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»…";
FONTCOLOR {0,0,255};
ON CLICK calc()  ;
WIDTH 114 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 250 ,196 LABEL lbl4 ;
VALUE "«—ﬁ«„ ›ﬁÿ" ;
WIDTH 90 ;
HEIGHT 41 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 315 ,391 LABEL lbl5 ;
VALUE "«·œ—Ã…" ;
WIDTH 63 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 356 ,381 LABEL lbl6 ;
VALUE "«·„Ã„Ê⁄" ;
WIDTH 73 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 408 ,404 LABEL lbl7 ;
VALUE "«·‰”»…" ;
WIDTH 50 ;
HEIGHT 41 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 454 ,193 BUTTONEX btn2;
CAPTION "«Õ”»";
ON CLICK calc2()  ;
WIDTH 106 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 300 ,10 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 349 ,10 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 398 ,10 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
sum := (num1/num2)*100
pers = STR ( sum )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+"%"
Return Nil
Proc calc2
num3 := win1.text4.Value
num4 := win1.text5.Value
pers2 := (num3/num4)*100
win1.text6.Value := pers2
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄„·Ì«  «·Õ”«»ÌÂ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·œ—Ã…'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»… «·„∆ÊÌ…'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”» «·‰”»…'",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«—ﬁ«„ ›ﬁÿ'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '«·œ—Ã…'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : '«·„Ã„Ê⁄'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '«·‰”»…'",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«Õ”»'",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc2",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",92,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",99,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",106,111)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",114,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","sum = (num1/num2)*100",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT sum TO STRING",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","pers = All Trim pers",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers+'%'",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc2",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = win1.text4.Value",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","num4 = win1.text5.Value",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","pers2 = (num3/num4)*100",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := pers2",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",130,130)
Return
*-------------------------------------------------------------------*
