*---------------------------------------------------------------------------*
* Time : 00:06:51    Date : 05/21/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_LESSON3_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON3_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 262 ;
HEIGHT 208 ;
ICON "PWCTICON" ;
TITLE "Õ”«» «·‰”»… «·„∆ÊÌ…" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 140 ,8 BUTTONEX CloseBtn;
CAPTION "≈€·«ﬁ";
FONTCOLOR {0,0,255};
BACKCOLOR {236,233,216};
ON CLICK MyClose()  ;
WIDTH 55 HEIGHT 23 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 138 ,101 BUTTONEX ResultBtn;
CAPTION "«‰ﬁ— Â‰« ·„⁄—›… «·‰ ÌÃ…";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK Calc()  ;
WIDTH 139 HEIGHT 25 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 10 ,151 LABEL lbl1 ;
VALUE "„Ã„Ê⁄ «·œ—Ã« " ;
WIDTH 96 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
@ 33 ,160 LABEL lbl2 ;
VALUE "«·œ—Ã«  «·ﬂ·Ì…" ;
WIDTH 84 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {64,0,64}
@ 58 ,163 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 78 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0}
@ 8 ,12 TEXTBOX txt1;
HEIGHT 22 ;
WIDTH 135 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 32 ,12 TEXTBOX txt2;
HEIGHT 22 ;
WIDTH 135 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 57 ,12 TEXTBOX txt3;
HEIGHT 22 ;
WIDTH 134 ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc Calc
Num1 = VAL ( win1.txt1.value )
Num2 = VAL ( win1.txt2.value )
Nesba := (Num1/Num2)*100
NesbaMohawal = STR ( Nesba )
HazfMassafa = ALLTRIM ( NesbaMohawal )
win1.txt3.Value := NesbaMohawal+""+"%"
Return Nil
Proc MyClose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON3
START DOUBLES
Return
*-------------------------------------------------------------------*
