*---------------------------------------------------------------------------*
* Time : 01:08:42    Date : 08/18/2011
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


Resistance R_ALFEFE9_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFEFE9_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 337 ;
HEIGHT 341 ;
ICON "PWCTICON" ;
TITLE "User" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 124 ,22 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 161 ,22 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 125 ,226 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 87 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 163 ,228 LABEL lbl2 ;
VALUE "—”‹‹‹‹‹‹«·…" ;
WIDTH 94 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 206 ,178 BUTTONEX btn1;
CAPTION "œŒÊ·";
ON CLICK alfefe()  ;
WIDTH 127 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 207 ,19 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK close1()  ;
WIDTH 127 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 8 ,22 IMAGE image1;
PICTURE "Penguins.jpg";
STRETCH ;
WIDTH 279 HEIGHT 111
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action close1()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK;
AMPM 

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc alfefe
asd := win1.text1.Value
dsa := win1.text2.Value
IF asd+dsa==""
MyOut := MSGExclamation("ÌÃ» «œŒ· «”„ «·„” Œœ„ «Ê—”«·…","Œÿ√")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 334 ;
HEIGHT 341 ;
ICON "" ;
TITLE "„—Õ»«"+asd ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 210 ,105 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
ACTION close2()  ;
WIDTH 110 HEIGHT 42 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 148 ,11 LABEL lbl1 ;
VALUE dsa+" "+asd ;
WIDTH 298 ;
HEIGHT 46 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 7 ,10 IMAGE image1;
PICTURE "Penguins.jpg";
STRETCH ;
WIDTH 296 HEIGHT 119
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action close2()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK;
AMPM 

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win2"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win2"), -20),0x400000,0x100000))
ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close1
MyOut := MSGOKCANCEL("Â·  —€» ›Ì «·Œ—ÊÃ «·¬‰","Closeapp")
IF MyOut=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc close2
MyOut := MSGOKCANCEL("Â·  —€» ›Ì «·Œ—ÊÃ «·¬‰","Closeapp")
IF MyOut=true
win2.Release ( )
ELSE
Return 0
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALFEFE9
START DOUBLES
Return
*-------------------------------------------------------------------*
