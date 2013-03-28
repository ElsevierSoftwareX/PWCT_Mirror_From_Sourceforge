#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 02:46:57    Date : 10/15/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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
AT 0 ,0 ;
WIDTH 800 ;
HEIGHT 570 ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã «·„»Ì⁄«  Ê«·„Œ«“‰" ;
MAIN ;
BACKCOLOR {255,255,255} 

DEFINE SPLITBOX ;
OF win1 ;
HORIZONTAL 

DEFINE WINDOW win3 ;
WIDTH 283 ;
HEIGHT 349 ;
SPLITCHILD ;
NOCAPTION 

@ 64 ,20 BUTTON btn1;
CAPTION "»Ì«‰«  «·«’‰«›";
ON CLICK mywin()  ;
WIDTH 240 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 189 ,20 BUTTON btn2;
CAPTION "«·›Ê« Ì—";
WIDTH 240 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 127 ,20 BUTTON btn3;
CAPTION "»Ì«‰«  «·⁄„·«¡";
WIDTH 240 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 251 ,21 BUTTON btn4;
CAPTION "«· ﬁ«—Ì—";
WIDTH 240 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 314 ,20 BUTTON btn5;
CAPTION "Œ—ÊÃ";
ON CLICK win1.release  ;
WIDTH 240 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 0 ,0 LABEL lbl1 ;
VALUE "«·ﬁ«∆„… «·—∆Ì”Ì… ··‰Ÿ«„" ;
WIDTH 290 ;
HEIGHT 40 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {64,0,64} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END WINDOW

End SPLITBOX

DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

END STATUSBAR

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action win1.release
END POPUP
END MENU
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
win1.Maximize ( )
ACTIVATE WINDOW win1

Proc mywin
DEFINE WINDOW mywin1 ;
AT 50 ,50 ;
WIDTH 685 ;
HEIGHT 532 ;
ICON "PWCTICON" ;
TITLE "»Ì«‰«  «·«’‰«›" ;
MODAL ;
NOSIZE 

@ 450 ,10 BUTTON btn1;
CAPTION "≈€·«ﬁ";
ON CLICK mywin1.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

mywin1.Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("myWin1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("myWin1"), -20),0x400000,0x100000))
ACTIVATE WINDOW mywin1

Return Nil


End Of Resistance

INIT PROCEDURE Init_MULTIWIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define SPLITBOX",10,13)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win3 )",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 )",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","End SPLITBOX",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Items",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywin",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( mywin1 )",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","mywin1.Center ( )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'myWin1'",97,99)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
Return
*-------------------------------------------------------------------*
