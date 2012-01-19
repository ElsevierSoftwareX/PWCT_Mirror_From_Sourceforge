*---------------------------------------------------------------------------*
* Time : 18:38:30    Date : 01/17/2012
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
WIDTH 391 ;
HEIGHT 269 ;
ICON "PWCTICON" ;
TITLE "Lesson3" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 52 ,74 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 204 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 87 ,74 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 204 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 123 ,73 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 204 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 61 ,291 LABEL lbl1 ;
VALUE "„Ã„Ê⁄ «·ÿ«·» " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 93 ,291 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 128 ,291 LABEL lbl3 ;
VALUE "«·‰”»Â «·„∆ÊÌÂ " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 175 ,134 BUTTONEX btn1;
CAPTION "≈Õ”» ";
ON CLICK calc()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 15 ,122 LABEL lbl4 ;
VALUE "Õ”«» «·‰”»Â «·„∆ÊÌÂ" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+" "+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson3'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„Ã„Ê⁄ «·ÿ«·» '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ì '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»Â «·„∆ÊÌÂ '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈Õ”» '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Õ”«» «·‰”»Â «·„∆ÊÌÂ'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","pers = All Trim pers",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers+' '+'%'",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",78,78)
Return
*-------------------------------------------------------------------*
