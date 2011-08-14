*---------------------------------------------------------------------------*
* Time : 13:01:35    Date : 08/14/2011
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


Resistance R_LOGIN_APP_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_APP_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "login App" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 140 ,10 LABEL lbl1 ;
VALUE "User Name :" ;
WIDTH 136 ;
HEIGHT 64 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 137 ,144 TEXTBOX text1;
HEIGHT 41 ;
WIDTH 203 ;
FONT "arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 206 ,177 BUTTONEX btn1;
CAPTION "Login";
ON CLICK login()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "File"
MENUITEM "close" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

CLOCK

DATE

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
User := win1.text1.Value
IF user==""
MyOut := MSGBOX("Please inter User Name","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 337 ;
HEIGHT 361 ;
ICON "PWCTICON" ;
TITLE "Hello"+" "+user ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 138 ,49 LABEL lbl1 ;
VALUE "Hello"+ " " + user ;
WIDTH 228 ;
HEIGHT 46 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 264 ,26 BUTTONEX btn1;
CAPTION "<< Back";
ON CLICK CloseForm()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
win1.Release ( )
Return Nil
Proc CloseForm
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN_APP
START DOUBLES
Return
*-------------------------------------------------------------------*
