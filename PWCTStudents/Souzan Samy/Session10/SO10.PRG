*---------------------------------------------------------------------------*
* Time : 19:00:49    Date : 03/16/2011
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


Resistance R_SO10_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SO10_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 109 ,31 LABEL lbl1 ;
VALUE "user name" ;
WIDTH 100 ;
HEIGHT 46 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 206 ,31 LABEL lbl2 ;
VALUE "password" ;
WIDTH 113 ;
HEIGHT 46 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 107 ,247 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,64} 

@ 198 ,247 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,64} 

@ 272 ,175 BUTTONEX btn1;
CAPTION "login";
FONTCOLOR {128,0,64};
BACKCOLOR {236,233,216};
ON CLICK open()  ;
WIDTH 119 HEIGHT 41 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
DEFINE MAIN MENU
END MENU
POPUP "file"
MENUITEM "exit" Action exit()
END POPUP
DEFINE STATUSBAR 

STATUSITEM "ready"

CLOCK;
AMPM 

DATE

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc open
user := win1.text1.Value
pass := win1.text2.Value
IF user==""
MyOut := MSGBOX("please enter user name&password","error")
ELSEIF pass==""
MyOut := MSGBOX("please enter password","error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "thanks  " +user ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 10 ,10 IMAGE image1;
PICTURE "SIGPIC83235_1.JPG";
WIDTH 100 HEIGHT 100
@ 43 ,173 LABEL lbl1 ;
VALUE "Hello    "  +  user ;
WIDTH 179 ;
HEIGHT 43 ;
FONT "Arial Narrow" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 274 ,170 BUTTONEX btn2;
CAPTION "back";
FONTCOLOR {128,0,64};
BACKCOLOR {236,233,216};
ON CLICK close()  ;
WIDTH 130 HEIGHT 43 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
win2.Release ( )
Return Nil
Proc exit
MyOut := MSGOKCANCEL("do you want exit ?","exit")
IF myout==true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SO10
START DOUBLES
Return
*-------------------------------------------------------------------*
