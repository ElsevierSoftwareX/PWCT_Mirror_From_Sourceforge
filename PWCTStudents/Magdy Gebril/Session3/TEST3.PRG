*---------------------------------------------------------------------------*
* Time : 10:44:57    Date : 11/30/2011
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
WIDTH 533 ;
HEIGHT 547 ;
ICON "PWCTICON" ;
TITLE "students" ;
MAIN ;
BACKCOLOR {64,0,64} 

@ 10 ,135 LABEL lbl1 ;
VALUE "«·‰”»Â «·„∆ÊÌÂ" ;
WIDTH 254 ;
HEIGHT 51 ;
FONT "Arial" SIZE 28  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,0}
@ 438 ,12 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {255,0,0};
BACKCOLOR {192,192,192};
ON CLICK myclose()  ;
WIDTH 96 HEIGHT 56 ;
FONT "Arial" SIZE 26 ;
TOOLTIP ""
@ 122 ,109 TEXTBOX text1;
HEIGHT 45 ;
WIDTH 212 ;
FONT "Arial" SIZE 28 ;
BACKCOLOR {193,198,230} ;
FONTCOLOR {0,0,160} 

@ 178 ,109 TEXTBOX text2;
HEIGHT 45 ;
WIDTH 212 ;
FONT "Arial" SIZE 28 ;
BACKCOLOR {193,198,230} ;
FONTCOLOR {0,0,160} 

@ 251 ,109 TEXTBOX text3;
HEIGHT 44 ;
WIDTH 212 ;
FONT "Arial" SIZE 28 ;
BACKCOLOR {193,198,230} ;
FONTCOLOR {0,0,160} 

@ 124 ,347 LABEL lbl2 ;
VALUE "«·œ—ÃÂ" ;
WIDTH 152 ;
HEIGHT 48 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,128}
@ 177 ,347 LABEL lbl3 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ï" ;
WIDTH 138 ;
HEIGHT 48 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,128}
@ 254 ,340 LABEL lbl4 ;
VALUE "«·‰”»Â «·„∆ÊÌÂ" ;
WIDTH 129 ;
HEIGHT 48 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,128}
@ 321 ,141 BUTTONEX btn2;
CAPTION "≈Õ”» «·‰”»Â ";
FONTCOLOR {0,0,255};
BACKCOLOR {192,192,192};
ON CLICK calc()  ;
WIDTH 134 HEIGHT 37 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure myclose()
win1.Release ( )
return
Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
win1.text3.Value := pers
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'students'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·‰”»Â «·„∆ÊÌÂ'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·œ—ÃÂ'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ï'",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·‰”»Â «·„∆ÊÌÂ'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈Õ”» «·‰”»Â '",68,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose ( Event : CLICK )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
Return
*-------------------------------------------------------------------*
