*---------------------------------------------------------------------------*
* Time : 15:21:56    Date : 12/05/2011
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


Resistance R_ZOUAGRI_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ZOUAGRI_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 825 ;
HEIGHT 296 ;
ICON "PWCTICON" ;
TITLE "In The Name Of Allah" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "Window"
MENUITEM "Exit" Action myclose()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“ ‘ﬂ—« ⁄·Ï «·«Œ ’«—«  ctrl+w .....ctrl+r"

DATE

CLOCK

END STATUSBAR

@ 79 ,369 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 78 ,246 LABEL lbl1 ;
VALUE "welcome" ;
WIDTH 109 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 129 ,184 BUTTONEX btn1;
CAPTION "see welcoming";
ON CLICK mess()  ;
WIDTH 187 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc mess
message := win1.text1.Value
message = ALLTRIM ( message )
message := "HOOO Hello O :" + message
MyOut := MSGBOX(message,"«· —ÕÌ»")
Return Nil


End Of Resistance

INIT PROCEDURE Init_ZOUAGRI
START DOUBLES
Return
*-------------------------------------------------------------------*
