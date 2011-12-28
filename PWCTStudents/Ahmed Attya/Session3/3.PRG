*---------------------------------------------------------------------------*
* Time : 09:16:02    Date : 12/28/2011
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


Resistance R_3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 416 ;
HEIGHT 307 ;
ICON "PWCTICON" ;
TITLE "«·‰”»Â «·„∆ÊÌÂ ·„Ã„Ê⁄ ÿ«·»" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 37 ,217 LABEL lbl1 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì ··ÿ«·»" ;
WIDTH 181 ;
HEIGHT 47 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 86 ,259 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì " ;
WIDTH 124 ;
HEIGHT 46 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 143 ,262 LABEL lbl3 ;
VALUE "«·‰”»Â «·„∆ÊÌÂ " ;
WIDTH 120 ;
HEIGHT 46 ;
FONT "" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 38 ,10 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,0} ;
RIGHTALIGN ;
FONTCOLOR {128,0,0} 

@ 89 ,9 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,0} ;
RIGHTALIGN ;
FONTCOLOR {128,0,0} 

@ 143 ,9 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,0} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0} 

@ 202 ,201 BUTTONEX btn1;
CAPTION "«·‰”»Â «·„∆ÊÌÂ";
FONTCOLOR {255,0,0};
ON CLICK Calc()  ;
WIDTH 171 HEIGHT 46 ;
FONT "Arial" SIZE 24 ;
TOOLTIP ""
@ 202 ,7 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,0,255};
ON CLICK Myclose()  ;
WIDTH 156 HEIGHT 49 ;
FONT "Arial" SIZE 24 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Perc := (num1/num2)*100
Perc = STR ( Perc )
Perc = ALLTRIM ( Perc )
win1.text3.Value := Perc+" "+"%"
Return Nil
Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·‰”»Â «·„∆ÊÌÂ ·„Ã„Ê⁄ ÿ«·»'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ì ··ÿ«·»'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ì '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»Â «·„∆ÊÌÂ '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·‰”»Â «·„∆ÊÌÂ'",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc()",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myclose()",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Perc = (num1/num2)*100",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Perc = CONVERT Perc TO STRING",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Perc = All Trim Perc",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Perc+' '+'%'",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclose",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
Return
*-------------------------------------------------------------------*
