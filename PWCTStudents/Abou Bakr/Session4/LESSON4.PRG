*---------------------------------------------------------------------------*
* Time : 08:11:05    Date : 05/21/2011
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


Resistance R_LESSON4_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON4_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 484 ;
HEIGHT 341 ;
ICON "PWCTICON" ;
TITLE "√ﬂÀ—ı „« ÌıœŒ· «·‰«”Û «·Ã‰…Û" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {62,130,70} 

@ 245 ,358 BUTTONEX CloseBtn;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK MyClose()  ;
WIDTH 97 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 119 ,360 BUTTONEX JawabBtn;
CAPTION "«·ÃÊ«»";
FONTCOLOR {0,0,255};
BACKCOLOR {236,233,216};
ON CLICK Jawab()  ;
WIDTH 97 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 46 ,80 LABEL lbl1 ;
VALUE "„« √ﬂÀ—ı „« ÌıœŒ· «·‰«”Û «·Ã‰…Ûø" ;
WIDTH 261 ;
HEIGHT 29 ;
FONT "Arial" SIZE 20  ;
BOLD ;
BACKCOLOR {54,131,68} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 121 ,81 LABEL lbl2 ;
VALUE "" ;
WIDTH 261 ;
HEIGHT 29 ;
FONT "Arial" SIZE 20  ;
BOLD ;
BACKCOLOR {54,131,68} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 168 ,16 LABEL lbl3 ;
VALUE "" ;
WIDTH 444 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {54,131,68} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 192 ,198 LABEL lbl4 ;
VALUE "" ;
WIDTH 261 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {54,131,68} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc MyClose
win1.Release ( )
Return Nil
Proc Jawab
win1.lbl2.value := " ﬁÊÏ «··Â ÊÕı”‰ «·Œıı·ﬁ"
win1.lbl3.value := "›« ﬁˆ «··ÂÛ ÕÌÀ„« ﬂ‰ Û° Ê√ »ˆ⁄ «·”Ì¯∆…Û «·Õ”‰…Û  „ÕıÂ«° ÊŒ«·ˆﬁ «·‰«”Û »Œı·ﬁÚ Õ”‰Ú"
win1.lbl4.value := " ›ı“˙ »”⁄«œ… «·√Ê·Ï Ê«·¬Œ—…"
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON4
START DOUBLES
Return
*-------------------------------------------------------------------*
