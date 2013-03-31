*---------------------------------------------------------------------------*
* Time : 22:33:17    Date : 10/19/2011
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


Resistance R_COUNTER_ATOU_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_ATOU_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 641 ;
HEIGHT 500 ;
ICON "PWCTICON" ;
TITLE "Counter" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 410 ,500 BUTTONEX btn1;
CAPTION "count now";
FONTCOLOR {0,0,255};
ON CLICK mycou()  ;
WIDTH 117 HEIGHT 40 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 214 ,27 EDITBOX edit1;
WIDTH 392 ;
HEIGHT 217;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 27 ,52 LABEL lbl1 ;
VALUE "please enter  two numbers" ;
WIDTH 491 ;
HEIGHT 40 ;
AUTOSIZE ;
FONT "Engravers MT" SIZE 18  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 110 ,18 LABEL lbl2 ;
VALUE "From" ;
WIDTH 65 ;
HEIGHT 39 ;
FONT "Book Antiqua" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 114 ,234 LABEL lbl3 ;
VALUE "To" ;
WIDTH 54 ;
HEIGHT 39 ;
FONT "Book Antiqua" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 116 ,89 TEXTBOX text1;
HEIGHT 39 ;
WIDTH 86 ;
FONT "Kristen ITC" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
NUMERIC 

@ 115 ,326 TEXTBOX text2;
HEIGHT 39 ;
WIDTH 88 ;
FONT "Kristen ITC" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
NUMERIC 

@ 75 ,440 IMAGE image1;
PICTURE "NUMBERS CLIPART.JPEG";
STRETCH ;
WIDTH 182 HEIGHT 244
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycou
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x = num1 TO num2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNTER_ATOU
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'count now'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycou()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'please enter  two numbers'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'From'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'To'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'NUMBERS CLIPART.JPEG'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycou",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",81,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*
