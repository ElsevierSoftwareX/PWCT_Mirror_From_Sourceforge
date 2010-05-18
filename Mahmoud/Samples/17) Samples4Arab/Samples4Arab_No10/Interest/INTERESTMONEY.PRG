#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 00:53:46    Date : 01/20/2009
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
WIDTH 356 ;
HEIGHT 372 ;
ICON "win1" ;
TITLE " »—‰«„Ã Õ”«» «·›«∆œ… «·„—ﬂ»… ·„»·€ „‰ «·„«· -  ’„Ì„ / ”«„Õ ﬂ«„·" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 292 ,12 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
ON CLICK Sameh()  ;
WIDTH 103 HEIGHT 34 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 245 ,12 BUTTONEX btn2;
CAPTION "«Õ”» «·„»·€ «·≈Ã„«·Ï";
ON CLICK Compute()  ;
WIDTH 231 HEIGHT 36 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 78 ,13 TEXTBOX text2;
HEIGHT 35 ;
WIDTH 231 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 127 ,13 TEXTBOX text3;
HEIGHT 35 ;
WIDTH 231 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 197 ,12 TEXTBOX text4;
HEIGHT 35 ;
WIDTH 231 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
@ 159 ,119 LABEL lbl1 ;
VALUE "=" ;
WIDTH 110 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 28 ,254 LABEL lbl2 ;
VALUE "«·„»·€ «·√’·Ï" ;
WIDTH 95 ;
HEIGHT 43 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 78 ,254 LABEL lbl3 ;
VALUE "‰”»… «·›«∆œ…" ;
WIDTH 78 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 124 ,254 LABEL lbl4 ;
VALUE "⁄œœ «·”‰Ê« " ;
WIDTH 85 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 30 ,13 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 231 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc Sameh
win1.Release ( )
Return Nil
Proc Compute
Mon = VAL ( win1.text1.value )
Int = VAL ( win1.text2.value )
Years = VAL ( win1.text3.value )
Total := Mon*(1+Int)^Years
Total = STR ( Total )
Total = ALLTRIM ( Total )
win1.text4.Value := Total
Return Nil


End Of Resistance

INIT PROCEDURE Init_INTEREST_MONEY
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",29,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 )",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",83,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","proc",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sameh",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Compute",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Mon = CONVERT win1.text1.value TO Numeric",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Int = CONVERT win1.text2.value TO Numeric",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Years = CONVERT win1.text3.value TO Numeric",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Total = Mon*(1+Int)^Years",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Total = CONVERT Total TO STRING",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Total = All Trim Total",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := Total",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
Return
*-------------------------------------------------------------------*
