*---------------------------------------------------------------------------*
* Time : 09:29:18    Date : 05/30/2011
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


Resistance R_SAAD_12_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_12_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 473 ;
HEIGHT 371 ;
ICON "PWCTICON" ;
TITLE " »ˆ”„ «··Â «·—Õ„‰ «·—ÕÌ„ " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {85,148,210} 

DEFINE MAIN MENU
POPUP "„‹·‹›"
MENUITEM "Œ—ÊÃ" Action Myclose()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

CLOCK

END STATUSBAR

@ 77 ,339 LABEL lbl1 ;
VALUE "„« ≈”„ﬂ ø" ;
WIDTH 120 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 77 ,19 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 310 ;
FONT "Tahoma" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 260 ,321 BUTTONEX btn1;
CAPTION "≈÷€ÿ Â‰« ·· —ÕÌ»";
FONTCOLOR {128,128,255};
ON CLICK myshow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc Myclose
MyOut := MSGOKCANCEL("Â·  —Ìœ «·Œ—ÊÃ ø"," √ﬂÌœ !")
IF myout==true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc myshow
mytext := win1.text1.Value
IF mytext == ""
MyOut := MSGExclamation("„‰ ›÷·ﬂ √œŒ· ≈”„«","Œÿ√")
ELSE
MyOut := MSGBOX("√Â·« Ê”Â·« »ﬂ ›Ì  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ  " + mytext,"„—Õ»«")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD_12
START DOUBLES
Return
*-------------------------------------------------------------------*
