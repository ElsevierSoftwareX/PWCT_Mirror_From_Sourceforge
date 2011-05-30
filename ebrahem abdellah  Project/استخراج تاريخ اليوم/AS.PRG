*---------------------------------------------------------------------------*
* Time : 21:48:13    Date : 05/30/2011
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


Resistance R_AS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 369 ;
HEIGHT 276 ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã «·Õ’Ê· ⁄·Ï «· «—ÌŒ »«·ÌÊ„ Ê «·‘Â— Ê «·”‰…" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {255,128,64} 

win1.Center ( )
@ 82 ,252 LABEL lbl1 ;
VALUE "ÌÊ„" ;
WIDTH 48 ;
HEIGHT 40 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 83 ,162 LABEL lbl2 ;
VALUE "‘Â—" ;
WIDTH 66 ;
HEIGHT 41 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 88 ,54 LABEL lbl3 ;
VALUE "”‰…" ;
WIDTH 70 ;
HEIGHT 35 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 197 ,118 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
ON CLICK myexit()  ;
WIDTH 100 HEIGHT 38 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
@ 128 ,233 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 75 ;
READONLY ;
FONT "Arial" SIZE 24 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 129 ,153 TEXTBOX text2;
HEIGHT 36 ;
WIDTH 77 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 129 ,15 TEXTBOX text3;
HEIGHT 37 ;
WIDTH 135 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
BACKCOLOR {255,128,0} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 2 ,66 LABEL lbl4 ;
VALUE " «—ÌŒ «·ÌÊ„ " ;
WIDTH 187 ;
HEIGHT 60 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DO dd
ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc dd
set century on
date = DATE()
date = DTOC ( date )
y = SUBSTR(date,7,10)
win1.text3.Value := y
m = SUBSTR(date,1,2)
win1.text2.Value := m
d = SUBSTR(date,4,2)
win1.text1.Value := d
Return Nil


End Of Resistance

INIT PROCEDURE Init_AS
START DOUBLES
Return
*-------------------------------------------------------------------*
