#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 18:40:32    Date : 01/17/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 375 ;
HEIGHT 314 ;
ICON "win1" ;
TITLE " The percentage by Sameh Kamel" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 242 ,253 BUTTONEX btn1;
CAPTION "Exit";
ON CLICK Sameh()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 185 ,122 BUTTONEX btn2;
CAPTION "Calculate the percentage";
ON CLICK Compute()  ;
WIDTH 231 HEIGHT 36 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 16 ,123 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 231 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 68 ,123 TEXTBOX text2;
HEIGHT 35 ;
WIDTH 231 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 137 ,122 TEXTBOX text3;
HEIGHT 35 ;
WIDTH 231 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 103 ,231 LABEL lbl1 ;
VALUE "=" ;
WIDTH 110 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 16 ,13 LABEL lbl2 ;
VALUE "Mark" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 68 ,13 LABEL lbl3 ;
VALUE "Total" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 137 ,13 LABEL lbl4 ;
VALUE "percentage" ;
WIDTH 104 ;
HEIGHT 36 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc Sameh
win1.Release ( )
Return Nil
Proc Compute
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers+"%"
Return Nil


End Of Resistance

INIT PROCEDURE Init_PERCENTAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,11)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 )",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","proc",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sameh",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Compute",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","pers = (num1/num2)*100",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","pers = CONVERT pers TO STRING",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","pers = All Trim pers",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := pers+'%'",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
Return
*-------------------------------------------------------------------*
