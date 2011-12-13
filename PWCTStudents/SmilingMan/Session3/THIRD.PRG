*---------------------------------------------------------------------------*
* Time : 03:20:20    Date : 12/13/2011
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


Resistance R_THIRD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_THIRD_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 569 ;
HEIGHT 482 ;
ICON "PWCTICON" ;
TITLE "Õ”«» «·„ Ê”ÿ" ;
MAIN ;
BACKCOLOR {215,107,0} ;
HELPBUTTON 

@ 55 ,379 LABEL lbl1 ;
VALUE "«·—ﬁ„ «·√Ê·" ;
WIDTH 106 ;
HEIGHT 37 ;
FONT "andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 111 ,379 LABEL lbl2 ;
VALUE "«·—ﬁ„ «·À«‰Ì" ;
WIDTH 106 ;
HEIGHT 37 ;
FONT "andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 166 ,379 LABEL lbl3 ;
VALUE "«·—ﬁ„ «·À«·À" ;
WIDTH 106 ;
HEIGHT 37 ;
FONT "andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 225 ,394 LABEL lbl4 ;
VALUE "«·‰ ÌÃ…" ;
WIDTH 106 ;
HEIGHT 37 ;
FONT "andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 49 ,117 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 111 ,117 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 170 ,117 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 224 ,117 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 305 ,365 BUTTONEX btn1;
CAPTION "«Õ”»";
FONTCOLOR {255,255,0};
BACKCOLOR {128,64,64};
ON CLICK calc()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Times New Roman" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 305 ,61 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "ansalus" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num3 = VAL ( win1.text3.value )
average := (num1+num2+num3)/3
average = STR ( average )
average = ALLTRIM ( average )
win1.text4.Value := average
Return Nil
procedure exit()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_THIRD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Õ”«» «·„ Ê”ÿ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·—ﬁ„ «·√Ê·'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·—ﬁ„ «·À«‰Ì'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·—ﬁ„ «·À«·À'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·‰ ÌÃ…'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”»'",68,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT win1.text3.value TO Numeric",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","average = (num1+num2+num3)/3",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","average = CONVERT average TO STRING",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","average = All Trim average",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := average",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
Return
*-------------------------------------------------------------------*
