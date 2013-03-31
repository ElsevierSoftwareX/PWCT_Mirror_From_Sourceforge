*---------------------------------------------------------------------------*
* Time : 16:22:16    Date : 10/19/2011
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


Resistance R_RECTANGULAR_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_RECTANGULAR_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 624 ;
HEIGHT 515 ;
ICON "PWCTICON" ;
TITLE "Rectangular" ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 110 ,268 LABEL lbl1 ;
VALUE "Enter the height" ;
WIDTH 255 ;
HEIGHT 46 ;
FONT "Cooper Black" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 222 ,268 LABEL lbl2 ;
VALUE "Enter the length" ;
WIDTH 248 ;
HEIGHT 52 ;
FONT "Cooper Black" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 20 ,76 LABEL lbl3 ;
VALUE "welcome to the rectangular area" ;
WIDTH 461 ;
HEIGHT 59 ;
FONT "Script MT Bold" SIZE 26  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 160 ,268 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 263 ,268 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 111 ,12 IMAGE image1;
PICTURE "GEO.%2525252520SHAPES0.JPG";
WIDTH 233 HEIGHT 251
@ 435 ,190 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 327 ,321 BUTTONEX btn1;
CAPTION "result";
FONTCOLOR {0,0,255};
ON CLICK calc()  ;
WIDTH 117 HEIGHT 38 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 392 ,177 LABEL lbl4 ;
VALUE "Rectangular area" ;
WIDTH 257 ;
HEIGHT 40 ;
FONT "Cooper Black" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 := win1.text1.Value
num2 := win1.text2.Value
num1 := (num1*num2)
win1.text3.Value := num1
Return Nil


End Of Resistance

INIT PROCEDURE Init_RECTANGULAR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Rectangular'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Enter the height'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Enter the length'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'welcome to the rectangular area'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'GEO.%2525252520SHAPES0.JPG'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'result'",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Rectangular area'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = (num1*num2)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := num1",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
Return
*-------------------------------------------------------------------*
