*---------------------------------------------------------------------------*
* Time : 18:12:34    Date : 12/28/2011
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
WIDTH 628 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Õ”«» «·‰”»… «·„∆ÊÌ… ·‰ÌÃ… «·ÿ·«»" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 53 ,309 LABEL lbl1 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ï ··ÿ«·»" ;
WIDTH 210 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 123 ,309 LABEL lbl2 ;
VALUE "«·‰Â«Ì… «·⁄Ÿ„Ï ··„Ã„Ê⁄" ;
WIDTH 210 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 59 ,46 TEXTBOX text1;
HEIGHT 23 ;
WIDTH 191 ;
BACKCOLOR {182,252,241} ;
FONTCOLOR {0,0,0} 

@ 134 ,46 TEXTBOX text2;
HEIGHT 23 ;
WIDTH 191 ;
BACKCOLOR {182,252,241} ;
FONTCOLOR {0,0,0} 

@ 294 ,136 BUTTONEX btn1;
CAPTION "√Õ”» «·‰”»… «·„∆ÊÌ…";
FONTCOLOR {0,0,128};
ON CLICK calc()  ;
WIDTH 284 HEIGHT 42 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 193 ,310 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ… ··ÿ«·» %" ;
WIDTH 210 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 209 ,46 TEXTBOX text3;
HEIGHT 23 ;
WIDTH 191 ;
BACKCOLOR {182,252,241} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure calc()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers1 = STR ( pers )
win1.text3.Value := pers1
return


End Of Resistance

INIT PROCEDURE Init_3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Õ”«» «·‰”»… «·„∆ÊÌ… ·‰ÌÃ… «·ÿ·«»'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ï ··ÿ«·»'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·‰Â«Ì… «·⁄Ÿ„Ï ··„Ã„Ê⁄'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '√Õ”» «·‰”»… «·„∆ÊÌ…'",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»… «·„∆ÊÌ… ··ÿ«·» %'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc ( Event : CLICK )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","pers1 = CONVERT pers TO STRING",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers1",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
