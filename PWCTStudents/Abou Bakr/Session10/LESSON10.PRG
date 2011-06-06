*---------------------------------------------------------------------------*
* Time : 10:00:13    Date : 05/27/2011
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


Resistance R_LESSON10_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON10_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 354 ;
HEIGHT 320 ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· œŒÊ·" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {38,234,228} ;
FONT "Times New Roman" SIZE 12 

@ 19 ,39 IMAGE image1;
PICTURE "watervalletje.JPG";
STRETCH ;
WHITEBACKGROUND ;
WIDTH 160 HEIGHT 100
@ 161 ,258 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 73 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 127 ,256 LABEL lbl2 ;
VALUE "‰’  «·—”«·…" ;
WIDTH 77 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 156 ,14 TEXTBOX txt1;
HEIGHT 25 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 123 ,15 TEXTBOX txt2;
HEIGHT 25 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 212 ,229 BUTTONEX btn1;
CAPTION "œŒÊ·";
FONTCOLOR {0,0,255};
ON CLICK Logon()  ;
WIDTH 97 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action CloseWin1()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

DATE

CLOCK

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc Logon
User := win1.txt1.Value
IF User == ""
MyOut := MSGExclamation("›÷·«° «ﬂ » «”„ «·„” Œœ„","Œÿ√ ›Ì  ”ÃÌ· «·œŒÊ·")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 418 ;
HEIGHT 319 ;
ICON "PWCTICON" ;
TITLE "«· —ÕÌ» »‹ :  " + User ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {44,185,40} ;
FONT "Times New Roman" SIZE 12 

Message := win1.txt2.value
@ 190 ,14 LABEL lbl3 ;
VALUE Message + " Ì«: " + User ;
WIDTH 380 ;
HEIGHT 32 ;
FONT "Times New Roman" SIZE 12  ;
BOLD ;
BACKCOLOR {44,185,40} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ -2 ,-5 IMAGE image1;
PICTURE "«·„”Ãœ «·‰»ÊÌ.JPG";
STRETCH ;
WIDTH 418 HEIGHT 190
@ 228 ,292 BUTTONEX btn2;
CAPTION "⁄Êœ… >>>";
FONTCOLOR {0,0,255};
ON CLICK Close2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win2"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win2"), -20),0x400000,0x100000))
ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc CloseWin1
MyOut := MSGOKCANCEL("Â·  —Ìœ ≈€·«ﬁ Â–Â «·‰«›–…ø","≈€·«ﬁ «·‰«›–…")
IF MyOut == true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc Close2
Win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON10
START DOUBLES
Return
*-------------------------------------------------------------------*
