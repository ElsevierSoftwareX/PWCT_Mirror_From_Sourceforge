*---------------------------------------------------------------------------*
* Time : 22:57:15    Date : 08/12/2011
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


Resistance R_MESSGE_BOX_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MESSGE_BOX_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "»—„Ã… ’‰œÊﬁ —”«∆·" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 79 ,299 LABEL lbl1 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 119 ;
HEIGHT 46 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 22 ,297 LABEL lbl2 ;
VALUE "‰’ «·—”«·…" ;
WIDTH 111 ;
HEIGHT 45 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 14 ,51 TEXTBOX text1;
HEIGHT 48 ;
WIDTH 243 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 77 ,49 TEXTBOX text2;
HEIGHT 135 ;
WIDTH 243 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 273 ,277 BUTTONEX btn1;
CAPTION "≈ŸÂ«— «·—”«·…";
ON CLICK msg()  ;
WIDTH 130 HEIGHT 37 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 281 ,32 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc msg
lblmsg := win1.text1.Value
txtmsg := win1.text2.Value
MyOut := MSGINFO(txtmsg,lblmsg)
Return Nil
Proc exit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MESSGE_BOX
START DOUBLES
Return
*-------------------------------------------------------------------*
