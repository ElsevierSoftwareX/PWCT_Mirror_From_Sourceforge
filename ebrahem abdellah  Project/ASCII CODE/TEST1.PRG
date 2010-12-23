*---------------------------------------------------------------------------*
* Time : 16:46:51    Date : 12/21/2010
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


Resistance R_TEST1_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST1_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 250 ;
HEIGHT 242 ;
ICON "PWCTICON" ;
TITLE " Ã—»… ⁄·Ï «·ﬂÊœ «”ﬂÏ" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

win1.Center ( )
@ 13 ,27 TEXTBOX text1;
HEIGHT 47 ;
WIDTH 100 ;
READONLY ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 156 ,129 BUTTONEX btn1;
CAPTION " €ÌÌ—";
ON CLICK myqu()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 158 ,3 BUTTONEX btn3;
CAPTION "Œ—ÊÃ";
ON CLICK myexit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 90 ,27 TEXTBOX text3;
HEIGHT 34 ;
WIDTH 96 ;
READONLY ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 24 ,146 LABEL lbl1 ;
VALUE "«·‘ﬂ·" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 93 ,130 LABEL lbl2 ;
VALUE "«·ﬂÊœ «”ﬂÏ" ;
WIDTH 71 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myqu
t := int(rand()*400)
t1  = CHR(t)
t1 = ALLTRIM ( t1 )
win1.text1.Value := t1
d = STR ( t )
d = ALLTRIM ( d )
win1.text3.Value := d
Return Nil
Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST1
START DOUBLES
Return
*-------------------------------------------------------------------*
