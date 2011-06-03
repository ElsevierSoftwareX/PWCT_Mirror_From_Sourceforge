*---------------------------------------------------------------------------*
* Time : 10:48:27    Date : 05/18/2011
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


Resistance R_LESSON_1_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON_1_15speed1() code
if !iswindowdefined( MainWin )
DEFINE WINDOW MainWin ;
AT 10 ,10 ;
WIDTH 463 ;
HEIGHT 240 ;
ICON "PWCTICON" ;
TITLE "Ê’Ì… «··Â ··√Ê·Ì‰ Ê«·¬Œ—Ì‰: √‰ « ﬁÊ« «··Â!" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 18 ,13 LABEL lbl1 ;
VALUE "« ﬁ «··Â ÕÌÀ„« ﬂ‰ ° Ê√ »⁄ «·”Ì¯∆…Û «·Õ”‰…Û  „ÕıÂ«° ÊŒ«·ﬁ «·‰«” »Œ·ﬁÚ Õ”‰Ú" ;
WIDTH 440 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Times New Roman" SIZE 14  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {255,0,255}
@ 158 ,355 BUTTONEX CloseBtn;
CAPTION "≈€·«ﬁ";
ON CLICK MyClose()  ;
WIDTH 89 HEIGHT 25 ;
FONT "Times New Roman" SIZE 14 ;
BOLD ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("MainWin"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("MainWin"), -20),0x400000,0x100000))
ACTIVATE WINDOW MainWin
EndIF

Proc MyClose
MainWin.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON_1
START DOUBLES
Return
*-------------------------------------------------------------------*
