#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 21:07:35    Date : 02/20/2009
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


Resistance RMAEVB1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RMAEVB1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 261 ;
HEIGHT 345 ;
ICON "PWCTICON" ;
TITLE "Damasgate_Mr Sameh_PWCT" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 24 ,146 LABEL lbl1 ;
VALUE "«·„»·€ «·√’·Ï" ;
WIDTH 93 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 93 ,94 LABEL lbl2 ;
VALUE "«·”‰Ê« " ;
WIDTH 63 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 116 ,192 LABEL lbl3 ;
VALUE "=" ;
WIDTH 47 ;
HEIGHT 54 ;
FONT "Arial" SIZE 48  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {128,0,0}
@ 50 ,12 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 227 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,253,213} ;
RIGHTALIGN ;
FONTCOLOR {128,0,128}
@ 171 ,12 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 227 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,253,213} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0}
@ 228 ,12 BUTTONEX btn1;
CAPTION "«Õ”» „»·€ «· √„Ì‰";
ON CLICK Compute()  ;
WIDTH 227 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 272 ,139 BUTTONEX btn2;
CAPTION "ÕÊ·";
ON CLICK MSGINFO( "»—„Ã… /  ”«„Õ ﬂ«„·" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 272 ,12 BUTTONEX btn3;
CAPTION "Œ—ÊÃ";
ON CLICK MyClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,12 COMBOBOX combo1;
WIDTH 77 ;
ITEMS {"1","2","3","4","5"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,253,213} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1

Proc Compute
Mon = VAL ( win1.text1.value )
Y := win1.combo1.Value
Total := ((Mon*.01)*Y)+(21)
Total = STR ( Total )
Total = ALLTRIM ( Total )
win1.text2.Value := Total
Return Nil
Proc MyClose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAMEH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Proc",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Compute",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Mon = CONVERT win1.text1.value TO Numeric",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Y = win1.combo1.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Total = ((Mon*.01)*Y)+(21)",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Total = CONVERT Total TO STRING",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Total = All Trim Total",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := Total",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyClose",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
Return
*-------------------------------------------------------------------*
