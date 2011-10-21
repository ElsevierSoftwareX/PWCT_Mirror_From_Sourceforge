*---------------------------------------------------------------------------*
* Time : 14:29:09    Date : 10/21/2011
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


Resistance R_LOGIN_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 579 ;
HEIGHT 409 ;
ICON "PWCTICON" ;
TITLE "«·‰«›–… «·—∆Ì”Ì…" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255} 

@ 190 ,82 LABEL lbl1 ;
VALUE "username" ;
WIDTH 117 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,128,64}
@ 190 ,230 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 162 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,64} 

@ 295 ,193 BUTTONEX btn1;
CAPTION "login";
ON CLICK login()  ;
WIDTH 101 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 17 ,169 IMAGE image1;
PICTURE "NATURE.JPG";
STRETCH ;
WIDTH 174 HEIGHT 157
@ 240 ,230 TEXTBOX text2;
HEIGHT 31 ;
WIDTH 162 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 

@ 238 ,82 LABEL lbl2 ;
VALUE "message" ;
WIDTH 117 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,128,0}
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action Close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
message := win1.text2.Value
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("PLease inter username","error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 533 ;
HEIGHT 284 ;
ICON "PWCTICON" ;
TITLE "Hello" + user ;
MODAL ;
NOSIZE ;
BACKCOLOR {128,128,255} ;
FONT "Arial" SIZE 18 

@ 86 ,11 LABEL lbl1 ;
VALUE message + " " +user ;
WIDTH 243 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,128,64}
@ 203 ,395 BUTTONEX btn2;
CAPTION "<< back";
ON CLICK closeform2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc Close
MyOut := MSGOKCANCEL("Do you want to close App?","Close App")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc closeform2
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
Return
*-------------------------------------------------------------------*
