*---------------------------------------------------------------------------*
* Time : 00:51:30    Date : 01/22/2012
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


Resistance R_TEST3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Percentage" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 18 ,373 LABEL lbl1 ;
VALUE "«·‹œ—Ã‹Â" ;
WIDTH 99 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 86 ,373 LABEL lbl2 ;
VALUE "«·‹„Ã„Ê⁄" ;
WIDTH 98 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 254 ,373 LABEL lbl3 ;
VALUE "«·‰”»Â «·„∆ÊÌÂ" ;
WIDTH 101 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 21 ,130 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 86 ,130 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 254 ,130 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 167 ,130 BUTTONEX btn1;
CAPTION "√Õ”» «·‰”»Â «·„∆ÊÌÂ";
FONTCOLOR {128,0,128};
ON CLICK Calc()  ;
WIDTH 202 HEIGHT 38 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 303 ,179 BUTTONEX btn2;
CAPTION "Clear";
FONTCOLOR {0,0,160};
ON CLICK Myclear()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
Num1 = VAL ( win1.text1.value )
Num2 = VAL ( win1.text2.value )
pers := (Num1/Num2)*100
Res = STR ( Pers )
win1.text3.Value := Res+" "+"%"
Return Nil
Proc Myclear
win1.text1.Value := ""
win1.text2.Value := ""
win1.text3.Value := ""
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Percentage'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·‹œ—Ã‹Â'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·‹„Ã„Ê⁄'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»Â «·„∆ÊÌÂ'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '√Õ”» «·‰”»Â «·„∆ÊÌÂ'",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Clear'",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myclear",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Num1 = CONVERT win1.text1.value TO Numeric",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Num2 = CONVERT win1.text2.value TO Numeric",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (Num1/Num2)*100",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Res = CONVERT Pers TO STRING",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Res+' '+'%'",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclear",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
Return
*-------------------------------------------------------------------*
