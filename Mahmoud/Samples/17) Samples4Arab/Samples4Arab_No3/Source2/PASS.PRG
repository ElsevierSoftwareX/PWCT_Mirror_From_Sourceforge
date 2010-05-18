#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 14:09:59    Date : 01/15/2009
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
WIDTH 330 ;
HEIGHT 191 ;
ICON "sameh.ico" ;
TITLE "„À«· ·Ã„·… «·‘—ÿ" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 61 ,6 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 310 ;
FONT "Arial" SIZE 12 ;
BOLD ;
PASSWORD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 103 ,6 BUTTONEX btn1;
CAPTION "«Œ »— ﬂ·„… «·„—Ê—";
ON CLICK Testpass()  ;
WIDTH 310 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 33 ,213 LABEL lbl1 ;
VALUE "√œŒ· ﬂ·„… «·„—Ê—" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
@ 33 ,35 LABEL lbl2 ;
VALUE "⁄œœ «·„Õ«Ê·«  «·Œ«ÿ∆…" ;
WIDTH 147 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 33 ,8 LABEL lbl3 ;
VALUE "0" ;
WIDTH 33 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc Testpass
pass := win1.text1.Value
IF pass="sameh"
MyOut := MSGINFO("„—Õ»« ”«„Õ"," ”ÃÌ· œŒÊ·")
ELSEIF pass="mahmoud"
MyOut := MSGINFO("„—Õ»« „Õ„Êœ"," ”ÃÌ· œŒÊ·")
ELSEIF pass="stephen"
MyOut := MSGINFO("„—Õ»« ” Ì›‰"," ”ÃÌ· œŒÊ·")
ELSE
MyOut := MSGExclamation("ﬂ·„… „—Ê— €Ì— ’ÕÌÕ… , „‰ ›÷·ﬂ Õ«Ê· „—… √Œ—Ï","Œÿ√")
win1.text1.SetFocus ( )
testnum := win1.lbl3.Value
testnum = VAL ( testnum )
testnum := testnum+1
testnum = STR ( testnum )
testnum = ALLTRIM ( testnum )
win1.lbl3.Value := testnum
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_PASS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",16,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Procedure",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Testpass",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","pass = win1.text1.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pass='sameh' )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„—Õ»« ”«„Õ' Title ' ”ÃÌ· œŒÊ·' Type: Message Info",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( pass='mahmoud' )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„—Õ»« „Õ„Êœ' Title ' ”ÃÌ· œŒÊ·' Type: Message Info",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( pass='stephen' )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„—Õ»« ” Ì›‰' Title ' ”ÃÌ· œŒÊ·' Type: Message Info",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ﬂ·„… „—Ê— €Ì— ’ÕÌÕ… , „‰ ›÷·ﬂ Õ«Ê· „—… √Œ—Ï' Title 'Œÿ√' Type: Message Exclamation",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = win1.lbl3.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = CONVERT testnum TO Numeric",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = testnum+1",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = CONVERT testnum TO STRING",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = All Trim testnum",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := testnum",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
Return
*-------------------------------------------------------------------*
