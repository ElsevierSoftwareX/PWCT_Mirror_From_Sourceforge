*---------------------------------------------------------------------------*
* Time : 21:05:32    Date : 01/01/2012
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_WASEEM3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WASEEM3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 446 ;
HEIGHT 473 ;
ICON "PWCTICON" ;
TITLE "The slope  of straight line" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,160} 

@ 190 ,250 LABEL lbl1 ;
VALUE "x1" ;
WIDTH 139 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 244 ,248 LABEL lbl2 ;
VALUE "x2" ;
WIDTH 140 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 299 ,248 LABEL lbl3 ;
VALUE "The slope is " ;
WIDTH 155 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 369 ,154 BUTTONEX btn1;
CAPTION "calculation";
ON CLICK calc()  ;
WIDTH 128 HEIGHT 29 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 194 ,25 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 241 ,27 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 296 ,26 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 368 ,32 BUTTONEX btn2;
CAPTION "close";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 110 ,25 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 152 ,26 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 109 ,252 LABEL lbl4 ;
VALUE "y1" ;
WIDTH 112 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 148 ,255 LABEL lbl5 ;
VALUE "y2" ;
WIDTH 127 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 34 ,93 LABEL lbl10 ;
VALUE "Waseem Mhammad Saaid-Syria" ;
WIDTH 314 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num3 = VAL ( win1.text4.value )
num4 = VAL ( win1.text5.value )
pers := (num4-num3)/(num2-num1)
pers = STR ( pers )
win1.text3.Value := pers
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'The slope  of straight line'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'The slope is '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'calculation'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 )",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 )",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Waseem Mhammad Saaid-Syria'",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",92,96)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT win1.text4.value TO Numeric",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","num4 = CONVERT win1.text5.value TO Numeric",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num4-num3)/(num2-num1)",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
Return
*-------------------------------------------------------------------*
