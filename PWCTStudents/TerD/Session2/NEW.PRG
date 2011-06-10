*---------------------------------------------------------------------------*
* Time : 00:16:55    Date : 06/09/2011
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


Resistance R_NEW_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 430 ;
ICON "PWCTICON" ;
TITLE "ÃœÌœ" ;
MAIN ;
TOPMOST ;
BACKCOLOR {0,255,0} 

@ 24 ,287 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·«œÊ« " ;
WIDTH 205 ;
HEIGHT 41 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {0,0,255}
@ 71 ,287 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 205 ;
VALUE "„⁄·Ê„«  „›ÌœÂ »«—ﬂ «··Â ›Ìﬂ„" ;
BACKCOLOR {128,255,255} ;
UPPERCASE ;
FONTCOLOR {0,0,255} 

@ 320 ,18 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 321 ,131 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
WIDTH 98 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 280 ,287 COMBOBOX combo1;
WIDTH 205 ;
HEIGHT 70;
ITEMS {"«Õ„œ","„Õ„Êœ","«·”Ìœ","Ã„«·","⁄»œ«··Â","ÿ«—ﬁ"} ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,255}
MyOut := MSGOKCANCEL("Ã⁄·Â «··Â ›Ì „Ì“«‰ Õ”‰« ﬂ","»«—ﬂ «··Â ›Ìﬂ")
@ 104 ,287 LISTBOX list1;
WIDTH 205 ;
HEIGHT 150 ;
ITEMS {"«Õ„œ","„Õ„Êœ","«·”Ìœ"} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,255}
@ 11 ,12 IMAGE image1;
PICTURE "C:\DOCUMENTS AND SETTINGS\ADMINISTRATOR\DESKTOP\«· ÿ»Ìﬁ «·À«‰Ï\7.JPG";
WIDTH 150 HEIGHT 127
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc Messages
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_NEW
START DOUBLES
Return
*-------------------------------------------------------------------*
