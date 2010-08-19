*---------------------------------------------------------------------------*
* Time : 04:21:39    Date : 08/13/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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


Resistance R_12S_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_12S_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 573 ;
HEIGHT 502 ;
ICON "PWCTICON" ;
TITLE "„‰ œÏ ›« ‰" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ -5 ,-34 IMAGE image1;
PICTURE "G0.JPG";
STRETCH ;
WIDTH 597 HEIGHT 435
@ 306 ,435 LABEL lbl1 ;
VALUE "USER NAME : " ;
WIDTH 108 ;
HEIGHT 33 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {216,216,216} ;
FONTCOLOR {255,149,255}
@ 357 ,429 TEXTBOX text1;
HEIGHT 67 ;
WIDTH 118 ;
BACKCOLOR {255,204,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
@ 388 ,173 BUTTONEX btn1;
CAPTION "LOG IN ";
FONTCOLOR {0,0,0};
ON CLICK MYLOGIN()  ;
WIDTH 103 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 185 ,435 LABEL lbl2 ;
VALUE "MESSAGE : " ;
WIDTH 106 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,168,255}
@ 232 ,438 TEXTBOX text2;
HEIGHT 62 ;
WIDTH 110 ;
BACKCOLOR {255,196,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
DEFINE MAIN MENU
POPUP "FILE"
MENUITEM "EXIT" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "ready"

DATE

CLOCK;
AMPM 

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mylogin
user := win1.text1.Value
MESSAGE := WIN1.TEXT2.Value
IF user==""
MyOut := MSGExclamation("PLEASE ENTER USER NAME","ERROR")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 467 ;
HEIGHT 389 ;
ICON "PWCTICON" ;
TITLE "HELLO" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ -32 ,-35 IMAGE image1;
PICTURE "54W.JPG";
STRETCH ;
WIDTH 532 HEIGHT 395
@ 320 ,182 LABEL lbl1 ;
VALUE MESSAGE+" "+USER ;
WIDTH 302 ;
HEIGHT 39 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,108,255} ;
FONTCOLOR {255,202,255}
@ 319 ,7 BUTTONEX btn1;
CAPTION "<<BACK";
FONTCOLOR {0,0,255};
ON CLICK CLOSEWIN2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc CLOSE
MyOut := MSGOKCANCEL("DO YOU WANT TO CLOSE APP ?","CLOSE APP")
IF MYOUT==TRUE
WIN1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc CLOSEWIN2
WIN2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_12S
START DOUBLES
Return
*-------------------------------------------------------------------*
