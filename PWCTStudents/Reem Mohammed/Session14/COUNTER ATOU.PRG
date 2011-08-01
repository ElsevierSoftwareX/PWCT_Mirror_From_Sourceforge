*---------------------------------------------------------------------------*
* Time : 11:42:07    Date : 08/01/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
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


Resistance R_COUNTER_ATOU_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_ATOU_15speed1() code
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
FONT "Forte" SIZE 16 ;
TOOLTIP ""
@ 214 ,27 EDITBOX edit1;
WIDTH 392 ;
HEIGHT 217;
FONT "Arial" SIZE 12 ;
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
Return
*-------------------------------------------------------------------*
