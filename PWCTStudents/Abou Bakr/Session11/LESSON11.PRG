*---------------------------------------------------------------------------*
* Time : 06:23:04    Date : 05/29/2011
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


Resistance R_LESSON11_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON11_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 351 ;
HEIGHT 298 ;
ICON "PWCTICON" ;
TITLE "≈‰‘«¡ ‰«›–… ÃœÌœ… »‘ﬂ· œÌ‰«„ÌﬂÏ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {0,128,0} 

@ 110 ,253 LABEL lbl1 ;
VALUE "⁄‰Ê«‰ «·‰«›–…" ;
WIDTH 69 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 24 ,261 LABEL lbl2 ;
VALUE "ÿÊ· «·‰«›–…" ;
WIDTH 66 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 50 ,253 LABEL lbl3 ;
VALUE "⁄—÷ «·‰«›–…" ;
WIDTH 73 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 81 ,265 LABEL lbl4 ;
VALUE "·Ê‰ «·‰«›–…" ;
WIDTH 59 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 105 ,15 TEXTBOX TitleTxt;
HEIGHT 24 ;
WIDTH 226 ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 50 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 21 ,16 TEXTBOX HeightTxt;
HEIGHT 24 ;
WIDTH 226 ;
BOLD ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 50 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 49 ,15 TEXTBOX WidthTxt;
HEIGHT 24 ;
WIDTH 226 ;
BOLD ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 50 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 77 ,15 TEXTBOX ColorTxt;
HEIGHT 24 ;
WIDTH 226 ;
BOLD ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 50 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 187 ,225 BUTTONEX btn1;
CAPTION "≈‰‘«¡ «·‰«›–…";
FONTCOLOR {0,0,255};
ON CLICK CreateWin2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 187 ,10 BUTTONEX btn2;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,0};
ON CLICK Close1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc Close1
win1.Release ( )
Return Nil
Proc CreateWin2
Title := win1.TitleTxt.Value
Height := win1.HeightTxt.Value
Width := win1.WidthTxt.Value
Color := win1.ColorTxt.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &Width ;
HEIGHT &Height ;
ICON "PWCTICON" ;
TITLE "&Title" ;
CHILD ;
BACKCOLOR {&Color} 

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win2"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win2"), -20),0x400000,0x100000))
ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON11
START DOUBLES
Return
*-------------------------------------------------------------------*
