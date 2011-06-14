*---------------------------------------------------------------------------*
* Time : 01:54:58    Date : 06/14/2011
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Main window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,0} 

@ 268 ,159 BUTTONEX btn1;
CAPTION "login";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 213 ,154 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 217 ,40 LABEL lbl1 ;
VALUE "User Name :" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 17 ,196 IMAGE image1;
PICTURE "Sunset.jpg";
WIDTH 100 HEIGHT 100
@ 176 ,154 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 182 ,45 LABEL lbl2 ;
VALUE "message :" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,0,0}
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action close()
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

Proc logform
message := win1.text2.Value
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("please enter user name","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 372 ;
HEIGHT 282 ;
ICON "PWCTICON" ;
TITLE "Hello"+User ;
MODAL ;
NOSIZE ;
BACKCOLOR {128,255,0} 

@ 60 ,51 LABEL lbl1 ;
VALUE message + " " + user ;
WIDTH 193 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 185 ,26 BUTTONEX btn1;
CAPTION "<<back";
ON CLICK closeform2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Do you want to close App ?","Close App")
IF MyOut=true
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
