*---------------------------------------------------------------------------*
* Time : 10:18:32    Date : 05/18/2011
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
WIDTH 464 ;
HEIGHT 289 ;
ICON "PWCTICON" ;
TITLE "‘—Êÿ ﬁ»Ê· «·⁄„·" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 13 ,154 LABEL lbl1 ;
VALUE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
WIDTH 124 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 33 ,340 LABEL lbl2 ;
VALUE "·ﬁ»Ê· «·⁄„· ‘—ÿ«‰" ;
WIDTH 112 ;
HEIGHT 19 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 55 ,363 LABEL lbl3 ;
VALUE "√Ê¯·«- «·≈Œ·«’" ;
WIDTH 86 ;
HEIGHT 18 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
@ 74 ,373 LABEL lbl4 ;
VALUE "À«‰Ì«- «·„ «»⁄…" ;
WIDTH 74 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 92 ,13 LABEL lbl5 ;
VALUE "„⁄‰Ï «·≈Œ·«’ √‰ ÌﬂÊ‰ «·⁄„· Œ«·’« ··Â -⁄“ ÊÃ·- Œ«·Ì« „‰ «·‘—ﬂ Ê«·—Ì«¡ Ê«·”„⁄…" ;
WIDTH 434 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 113 ,19 LABEL lbl6 ;
VALUE "Ê„⁄‰Ï «·„ «»⁄… √‰ ÌﬂÊ‰ «·⁄„· „Ê«›ﬁ« ·„« Ã«¡ »Â «·‰»Ì -’·¯Ï «··Â ⁄·ÌÂ Ê”·¯Û„- „‰ «·ÂœÏ" ;
WIDTH 432 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 138 ,408 LABEL lbl7 ;
VALUE "«·√œ·¯…" ;
WIDTH 41 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 158 ,139 LABEL lbl8 ;
VALUE "ﬁ«·  ⁄«·Ï: ´Ê„« √„—Ê« ≈·« ·Ì⁄»œÊ« «··Â „Œ·’Ì‰ ·Â «·œÌ‰ Õ‰›«¡" ;
WIDTH 311 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 180 ,14 LABEL lbl9 ;
VALUE "Êﬁ«· —”Ê· «··Â -’·¯Ï «··Â ⁄·ÌÂ Ê”·¯Û„-: ´≈‰„« «·√⁄„«· »«·‰Ì¯« ° Ê≈‰„« ·ﬂ· «„—∆ „« ‰ÊÏ" ;
WIDTH 431 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 210 ,17 LABEL lbl10 ;
VALUE "√»Ê »ﬂ— √Õ„œ Ã«·Ê" ;
WIDTH 75 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BOLD ;
BACKCOLOR {0,255,255} ;
BORDER ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 209 ,355 BUTTONEX CloseBtn;
CAPTION "≈€·«ﬁ";
ON CLICK MyClose()  ;
WIDTH 83 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
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
