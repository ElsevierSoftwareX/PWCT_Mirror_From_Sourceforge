#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 21:11:54    Date : 01/08/2009
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


Resistance RRXXHY1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RRXXHY1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 414 ;
HEIGHT 316 ;
ON RELEASE MSGINFO( "«·Ï «··ﬁ«¡ „⁄ «· Ã—»… «·À«‰Ì… «‰ ‘«¡ «··Â , «‰ Ÿ—Ê‰«" ) ;
ICON "win1" ;
TITLE "»Ê«»… œ«„«”" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} ;
HELPBUTTON 

win1.Center ( )
@ 35 ,63 LABEL lbl1 ;
VALUE "«Ê·  Ã—»… » ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
WIDTH 296 ;
HEIGHT 44 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 225 ,20 BUTTONEX btn1;
CAPTION "„Ê«›ﬁ";
ON CLICK Sameh()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 169 ,160 LABEL lbl2 ;
VALUE "mr sameh" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
DEFINE MAIN MENU
POPUP "”«„Õ"
MENUITEM "ÕÊ· «·»—‰«„Ã" Action MSGINFO( "Â–… «Ê·  Ã—»… » ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ ··„Â‰œ” „Õ„Êœ ›«Ìœ , «⁄œ«œ / ”«„Õ ﬂ«„·" ) NAME ÕÊ·
SEPARATOR
MENUITEM "Œ—ÊÃ" Action Sameh()
END POPUP
END MENU
@ 66 ,155 IMAGE image1;
PICTURE "logo.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 225 ,131 BUTTONEX btn2;
CAPTION " Ê”Ìÿ «·‰«›–…";
ON CLICK Sameh2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win1

Proc Sameh
win1.Release ( )
Return Nil
Proc Sameh2
win1.Center ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAMEH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '”«„Õ'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÕÊ· «·»—‰«„Ã' ) NAME ÕÊ·     SEPARATOR",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","proc",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sameh",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sameh2",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*
