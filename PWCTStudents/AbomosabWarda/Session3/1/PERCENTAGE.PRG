*---------------------------------------------------------------------------*
* Time : 02:02:35    Date : 01/06/2012
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
WIDTH 670 ;
HEIGHT 460 ;
ICON "PWCTICON" ;
TITLE "«·‰”»Â «·„∆ÊÌÂ ·„Ã„Ê⁄ ÿ«·»" ;
MAIN ;
BACKCOLOR {192,192,192} 

@ 51 ,394 LABEL lbl1 ;
VALUE "«·œ—ÃÂ" ;
WIDTH 161 ;
HEIGHT 33 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {255,0,128}
@ 114 ,388 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì" ;
WIDTH 165 ;
HEIGHT 46 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,128,128} ;
FONTCOLOR {128,0,128}
@ 187 ,389 LABEL lbl3 ;
VALUE "«·‰”»Â «·„∆ÊÌÂ" ;
WIDTH 165 ;
HEIGHT 45 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,128,64}
@ 53 ,142 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 124 ,142 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 199 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255} 

@ 196 ,142 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 

@ 283 ,188 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»Â «·„∆ÊÌÂ";
ON CLICK Calc()  ;
WIDTH 271 HEIGHT 58 ;
FONT "Arial" SIZE 24 ;
TOOLTIP ""
@ 382 ,485 LABEL lbl4 ;
VALUE "Ahmed Warda" ;
WIDTH 171 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {64,0,64}
@ 380 ,2 LABEL lbl5 ;
VALUE "ENG.Mahmoud fayed" ;
WIDTH 238 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,255}
@ 4 ,181 LABEL lbl6 ;
VALUE "*(„‰ ›÷·ﬂ √œŒ· «·œ—ÃÂ Ê«·„Ã„Ê⁄ «·ﬂ·Ì)*" ;
WIDTH 349 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1/num2)*100
pers = STR ( Pers )
pers = ALLTRIM ( pers )
win1.text3.Value := Pers+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_PERCENTAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·‰”»Â «·„∆ÊÌÂ ·„Ã„Ê⁄ ÿ«·»'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·œ—ÃÂ'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ì'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»Â «·„∆ÊÌÂ'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”» «·‰”»Â «·„∆ÊÌÂ'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc()",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Ahmed Warda'",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'ENG.Mahmoud fayed'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : '*(„‰ ›÷·ﬂ √œŒ· «·œ—ÃÂ Ê«·„Ã„Ê⁄ «·ﬂ·Ì)*'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1/num2)*100",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT Pers TO STRING",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","pers = All Trim pers",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers+' '+'%'",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
Return
*-------------------------------------------------------------------*
