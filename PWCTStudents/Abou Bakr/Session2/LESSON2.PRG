*---------------------------------------------------------------------------*
* Time : 16:09:30    Date : 05/19/2011
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


Resistance R_LESSON2_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON2_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 446 ;
HEIGHT 344 ;
ICON "PWCTICON" ;
TITLE "‰ÃÊ„ ›Ì «·ﬁ„… ·« Ì‰”«Â„ «· «—ÌŒ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 259 ,5 BUTTONEX CloseBtn;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,128};
ON CLICK MyClose()  ;
WIDTH 80 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 258 ,119 BUTTONEX HelpBtn;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {64,0,64};
BACKCOLOR {128,0,255};
WIDTH 82 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 8 ,8 IMAGE image1;
PICTURE "”»Õ«‰ «··Â.JPG";
WIDTH 126 HEIGHT 122
@ 6 ,242 LABEL lbl1 ;
VALUE "‰ÃÊ„ ›Ì «·ﬁ„… ·« Ì‰”«Â„ «· «—ÌŒ" ;
WIDTH 190 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BOLD ;
RIGHTALIGN ;
FONTCOLOR {255,0,128}
@ 237 ,277 LABEL lbl2 ;
VALUE "«Œ — √ﬂ»— «·√∆„… «·√—»⁄… ”‰¯«" ;
WIDTH 150 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 36 ,242 TEXTBOX text1;
HEIGHT 26 ;
WIDTH 189 ;
VALUE "≈–« √—œ  √‰  ﬂÊ‰ „À·Â„ ›⁄·Ìﬂ »«·⁄·„" ;
FONT "Times New Roman" SIZE 12 ;
BACKCOLOR {240,240,240} ;
RIGHTALIGN ;
FONTCOLOR {128,0,255} 

@ 177 ,5 TEXTBOX text2;
HEIGHT 22 ;
WIDTH 303 ;
VALUE "„‰ √—«œ «·œ‰Ì« ›⁄·ÌÂ »«·⁄·„° Ê„‰ √—«œ «·¬Œ—… ›⁄·ÌÂ »«·⁄·„" ;
READONLY ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {240,240,240} ;
RIGHTALIGN ;
FONTCOLOR {64,0,64} 

@ 65 ,318 LISTBOX list1;
WIDTH 112 ;
HEIGHT 135 ;
ITEMS {"«·≈„«„ «·»Œ«—Ì","«·≈„«„ „”·„","«·≈„«„ √»Ê œ«Êœ","«·≈„«„ «· —„–Ì","«·≈„«„ «·‰”«∆Ì","«·≈„«„ «»‰ „«ÃÂ"} ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {255,0,0}
@ 257 ,277 COMBOBOX combo1;
WIDTH 141 ;
ITEMS {"«·≈„«„ √»Ê Õ‰Ì›…","«·≈„«„ „«·ﬂ","«·≈„«„ «·‘«›⁄Ì","«·≈„«„ √Õ„œ"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc MyClose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON2
START DOUBLES
Return
*-------------------------------------------------------------------*
