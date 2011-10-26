*---------------------------------------------------------------------------*
* Time : 21:16:55    Date : 10/21/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_MULTIWIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MULTIWIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 0 ,0 ;
WIDTH 800 ;
HEIGHT 570 ;
ICON "PWCTICON" ;
TITLE "Application Name" ;
MAIN ;
BACKCOLOR {255,255,255} 

DEFINE SPLITBOX ;
OF win1 ;
HORIZONTAL 

if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
WIDTH 283 ;
HEIGHT 349 ;
SPLITCHILD ;
NOCAPTION 

@ 64 ,20 BUTTONEX btn1;
CAPTION "Option 1";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK mywin()  ;
WIDTH 240 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 189 ,20 BUTTONEX btn2;
CAPTION "Option 2";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
WIDTH 240 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 127 ,20 BUTTONEX btn3;
CAPTION "Option 3";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
WIDTH 240 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 251 ,21 BUTTONEX btn4;
CAPTION "Option 4";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
WIDTH 240 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 314 ,20 BUTTONEX btn5;
CAPTION "Exit";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK win1.release()  ;
WIDTH 240 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 0 ,0 LABEL lbl1 ;
VALUE "Main Menu" ;
WIDTH 290 ;
HEIGHT 40 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {64,0,64} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END WINDOW
EndIF

End SPLITBOX

DEFINE STATUSBAR 

STATUSITEM "Ready"

END STATUSBAR

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action win1.release
END POPUP
END MENU
END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc mywin
if !iswindowdefined( mywin1 )
DEFINE WINDOW mywin1 ;
AT 50 ,50 ;
WIDTH 685 ;
HEIGHT 532 ;
ICON "PWCTICON" ;
TITLE "Window Name" ;
MODAL ;
NOSIZE 

@ 450 ,560 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK mywin1.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

mywin1.Center ( )
ACTIVATE WINDOW mywin1
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_MULTIWIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Application Name'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define SPLITBOX",11,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'Window Title'",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Option 1'",22,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywin",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Option 2'",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Option 3'",37,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Option 4'",44,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Exit'",51,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.release",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Main Menu'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,66)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","End SPLITBOX",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywin",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( mywin1 ) , Title : 'Window Name'",90,94)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",100,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywin1.release",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","mywin1.Center ( )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
Return
*-------------------------------------------------------------------*
