*---------------------------------------------------------------------------*
* Time : 15:10:03    Date : 03/26/2012
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


Resistance R_SALAMA_MOHAMED_LESSON1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_MOHAMED_LESSON1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 272 ;
HEIGHT 304 ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã Õ”«» «·‰”»…«·„∆ÊÌ…» ﬁ‰Ì…«·»—„Ã…»œÊ‰ ﬂÊœ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,255} 

@ 10 ,10 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 165 ;
FONT "Arial" SIZE 22 ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} 

@ 71 ,10 TEXTBOX text2;
HEIGHT 35 ;
WIDTH 165 ;
FONT "Arial" SIZE 22 ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} 

@ 130 ,10 TEXTBOX text3;
HEIGHT 35 ;
WIDTH 165 ;
FONT "Arial" SIZE 22 ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0} 

@ 186 ,10 BUTTONEX btn1;
CAPTION "√Õ”» «·‰”»… «·„∆ÊÌ…";
ON CLICK Calc()  ;
WIDTH 165 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 5 ,195 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 198 ;
HEIGHT 29 ;
FONT "Arabic Typesetting" SIZE 20  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 64 ,179 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ï" ;
WIDTH 195 ;
HEIGHT 40 ;
FONT "Arabic Typesetting" SIZE 22  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 128 ,176 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 199 ;
HEIGHT 34 ;
FONT "Arabic Typesetting" SIZE 22  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+" %"
Return Nil


End Of Resistance

INIT PROCEDURE Init_SALAMA_MOHAMED_LESSON1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»—‰«„Ã Õ”«» «·‰”»…«·„∆ÊÌ…» ﬁ‰Ì…«·»—„Ã…»œÊ‰ ﬂÊœ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '√Õ”» «·‰”»… «·„∆ÊÌ…'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·œ—Ã…'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ï'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»… «·„∆ÊÌ…'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","pers = All Trim pers",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers+' %'",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
