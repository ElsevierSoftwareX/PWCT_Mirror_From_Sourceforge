*---------------------------------------------------------------------------*
* Time : 23:02:16    Date : 08/05/2011
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


Resistance R_PERCENTAGE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PERCENTAGE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 406 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "PERCENTAGE" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 12 ,122 LABEL lbl1 ;
VALUE "Õ”«» «·‰”»… «·„∆ÊÌ…" ;
WIDTH 152 ;
HEIGHT 36 ;
FONT "PT Bold Heading" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 72 ,281 LABEL lbl2 ;
VALUE "«·œ—Ã…" ;
WIDTH 100 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 137 ,281 LABEL lbl3 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì" ;
WIDTH 106 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 205 ,281 LABEL lbl4 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 100 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 72 ,60 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} ;
NUMERIC 

@ 137 ,60 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} ;
NUMERIC 

@ 205 ,60 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0} ;
NUMERIC 

@ 270 ,70 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ…";
FONTCOLOR {255,0,0};
ON CLICK calc()  ;
WIDTH 213 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 314 ,25 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc calc
num1 := win1.text1.Value
num2 := win1.text2.Value
pers := (num1/num2)*100
win1.text3.Value := pers
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_PERCENTAGE
START DOUBLES
Return
*-------------------------------------------------------------------*
