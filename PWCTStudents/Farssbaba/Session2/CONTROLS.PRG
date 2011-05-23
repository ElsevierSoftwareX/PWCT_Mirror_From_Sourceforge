*---------------------------------------------------------------------------*
* Time : 03:59:58    Date : 05/09/2011
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Controls" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 26 ,251 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·√œÊ« " ;
WIDTH 222 ;
HEIGHT 49 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0}
@ 60 ,274 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "PWCT" ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} 

@ 320 ,9 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 320 ,122 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 IMAGE image1;
PICTURE "SID.JPG";
WIDTH 136 HEIGHT 162
@ 107 ,274 LISTBOX list1;
WIDTH 200 ;
HEIGHT 197 ;
ITEMS {"Mahmoud","Sameh","Arcangelo","Stephen","Dale Jones"} ;
FONT "arial" SIZE 16 ;
BOLD ;
BACKCOLOR {128,255,255} ;
SORT ;
FONTCOLOR {255,0,0}
@ 312 ,274 COMBOBOX combo1;
WIDTH 200 ;
ITEMS {"Mahmoud","Sameh","Arcangelo","Stephen","Dale Jones"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {255,0,0}
@ 184 ,24 LABEL lbl2 ;
VALUE "’Ê—… «»‰ «Õ„œ" ;
WIDTH 125 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_CONTROLS
START DOUBLES
Return
*-------------------------------------------------------------------*
