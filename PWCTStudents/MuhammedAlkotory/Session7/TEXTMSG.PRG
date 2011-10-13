*---------------------------------------------------------------------------*
* Time : 17:27:25    Date : 10/13/2011
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


Resistance R_TEXTMSG_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEXTMSG_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 680 ;
HEIGHT 449 ;
ICON "PWCTICON" ;
TITLE "«ŸÂ«— «·—”«·Â" ;
MAIN ;
BACKCOLOR {128,255,255} 

@ 337 ,97 BUTTONEX btn1;
CAPTION "«ŸÂ«—";
ON CLICK msgbox()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 338 ,327 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 57 ,531 LABEL lbl1 ;
VALUE "⁄‰Ê«‰ «·—”«·Â" ;
WIDTH 100 ;
HEIGHT 39 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 148 ,540 LABEL lbl2 ;
VALUE "‰’ «·—”«·Â" ;
WIDTH 84 ;
HEIGHT 38 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 56 ,83 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 421 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 157 ,67 TEXTBOX text2;
HEIGHT 147 ;
WIDTH 446 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc exit
win1.Release ( )
Return Nil
Proc msgbox
mido := win1.text1.Value
mido2 := win1.text2.Value
MyOut := MSGINFO(mido2,mido)
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEXTMSG
START DOUBLES
Return
*-------------------------------------------------------------------*
