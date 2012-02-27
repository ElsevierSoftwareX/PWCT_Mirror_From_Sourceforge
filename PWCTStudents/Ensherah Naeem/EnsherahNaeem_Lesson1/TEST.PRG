*---------------------------------------------------------------------------*
* Time : 19:43:19    Date : 02/25/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 393 ;
HEIGHT 381 ;
ICON "PWCTICON" ;
TITLE "Percentage" ;
MAIN ;
BACKCOLOR {128,0,128} 

@ 80 ,65 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 11 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 137 ,65 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 11 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 192 ,65 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 

@ 275 ,135 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ… ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,128,128};
ON CLICK Calc()  ;
WIDTH 112 HEIGHT 28 ;
FONT "Arial" SIZE 11 ;
BOLD ;
TOOLTIP ""
@ 83 ,257 LABEL lbl1 ;
VALUE "«·œ—Ã… " ;
WIDTH 86 ;
HEIGHT 19 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {128,0,128} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 141 ,257 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì " ;
WIDTH 86 ;
HEIGHT 20 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {128,0,128} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 202 ,257 LABEL lbl3 ;
VALUE " «·‰”»… «·„∆ÊÌ… " ;
WIDTH 86 ;
HEIGHT 19 ;
FONT "Arial" SIZE 11  ;
BOLD ;
BACKCOLOR {128,0,128} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1/num2)*100
Pers = STR ( Pers )
Pers = ALLTRIM ( Pers )
win1.text3.Value := Pers+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Percentage'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”» «·‰”»… «·„∆ÊÌ… '",35,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc()",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·œ—Ã… '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ì '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' «·‰”»… «·„∆ÊÌ… '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1/num2)*100",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = CONVERT Pers TO STRING",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = All Trim Pers",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers+' '+'%'",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
Return
*-------------------------------------------------------------------*
