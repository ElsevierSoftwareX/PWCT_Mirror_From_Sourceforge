*---------------------------------------------------------------------------*
* Time : 03:34:09    Date : 10/31/2011
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


Resistance R_CONTROLS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONTROLS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 581 ;
HEIGHT 381 ;
ICON "PWCTICON" ;
TITLE "«·√œÊ«  Ê«” ⁄„«·« Â«" ;
MAIN ;
BACKCOLOR {209,150,27} 

@ 45 ,284 LABEL lbl1 ;
VALUE "Â–Â «·«œ«   ”„Õ ·‰« »«œŒ«· ‰’ „⁄Ì‰" ;
WIDTH 278 ;
HEIGHT 43 ;
FONT "Arial" SIZE 16  ;
UNDERLINE ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 43 ,20 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 248 ;
VALUE "√œŒ· «”„ »·œﬂ «·⁄—»Ì" ;
FONT "Arial" SIZE 20 ;
BOLD ;
ITALIC ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {255,0,128} 

@ 293 ,22 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,128,0};
ON CLICK myclose()  ;
WIDTH 117 HEIGHT 36 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 294 ,191 BUTTONEX btn2;
CAPTION "»ÕÀ";
FONTCOLOR {128,64,64};
WIDTH 117 HEIGHT 36 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 98 ,20 IMAGE image1;
PICTURE "ALGEGY.JPG";
WIDTH 288 HEIGHT 169
@ 98 ,336 LISTBOX list1;
WIDTH 205 ;
HEIGHT 168 ;
ITEMS {"egypt","algeria","palastine","lebanon"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,0,255}
@ 278 ,339 COMBOBOX combo1;
WIDTH 200 ;
ITEMS {"egypt","algeria","palastine","lebanon"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,128}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_CONTROLS
START DOUBLES
Return
*-------------------------------------------------------------------*
