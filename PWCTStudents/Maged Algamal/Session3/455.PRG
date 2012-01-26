*---------------------------------------------------------------------------*
* Time : 20:22:57    Date : 01/12/2012
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


Resistance R_455_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_455_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 824 ;
HEIGHT 474 ;
ICON "PWCTICON" ;
TITLE "my percentage" ;
MAIN ;
BACKCOLOR {128,128,128} 

@ 114 ,159 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 203 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {128,0,255} 

@ 152 ,159 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 203 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {128,0,255} 

@ 196 ,159 TEXTBOX text3;
HEIGHT 32 ;
WIDTH 203 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {255,0,0} 

@ 365 ,596 BUTTONEX btn1;
CAPTION "close window";
ON CLICK closeapplication()  ;
WIDTH 168 HEIGHT 34 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
@ 265 ,153 BUTTONEX btn2;
CAPTION "say my percentage";
ON CLICK calc()  ;
WIDTH 215 HEIGHT 34 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
@ 40 ,63 LABEL lbl1 ;
VALUE "calculate my percentage" ;
WIDTH 471 ;
HEIGHT 42 ;
FONT "Castellar" SIZE 20  ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {0,0,0}
@ 0 ,586 IMAGE image1;
PICTURE "29072011275.JPG";
STRETCH ;
WIDTH 210 HEIGHT 298
@ 307 ,602 LABEL lbl2 ;
VALUE "Maged Algmal" ;
WIDTH 202 ;
HEIGHT 58 ;
FONT "Brush Script MT" SIZE 18  ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {0,0,0}
@ 114 ,404 LABEL lbl3 ;
VALUE "«·œ—Ã…" ;
WIDTH 105 ;
HEIGHT 34 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {0,0,0}
@ 154 ,387 LABEL lbl4 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ï" ;
WIDTH 161 ;
HEIGHT 37 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {0,0,0}
@ 197 ,391 LABEL lbl5 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 155 ;
HEIGHT 31 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )
return
Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_455
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'my percentage'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'close window'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'say my percentage'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'calculate my percentage'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '29072011275.JPG'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Maged Algmal'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·œ—Ã…'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ï'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '«·‰”»… «·„∆ÊÌ…'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","pers = All Trim pers",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers+' '+'%'",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",95,95)
Return
*-------------------------------------------------------------------*
