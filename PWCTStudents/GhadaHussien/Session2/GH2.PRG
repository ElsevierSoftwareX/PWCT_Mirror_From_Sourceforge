*---------------------------------------------------------------------------*
* Time : 00:31:25    Date : 08/03/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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


Resistance R_GH2_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_GH2_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 544 ;
HEIGHT 458 ;
ICON "PWCTICON" ;
TITLE "ghada 2" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {255,255,128} 

@ 59 ,19 LABEL lbl1 ;
VALUE "deal with tool" ;
WIDTH 173 ;
HEIGHT 36 ;
FONT "Broadway" SIZE 14  ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 61 ,202 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 199 ;
VALUE "pwct" ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 338 ,407 BUTTONEX btn1;
CAPTION "close";
FONTCOLOR {0,0,255};
BACKCOLOR {255,128,192};
ON CLICK myclose()  ;
WIDTH 105 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 338 ,241 BUTTONEX btn2;
CAPTION "instructions";
FONTCOLOR {0,0,255};
BACKCOLOR {255,128,192};
WIDTH 102 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 149 ,297 IMAGE image1;
PICTURE "123.JPG";
WIDTH 165 HEIGHT 145
@ 166 ,19 LISTBOX list1;
WIDTH 103 ;
HEIGHT 124 ;
ITEMS {"item1","item 2","item 3"} ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 311 ,19 COMBOBOX combo1;
WIDTH 98 ;
ITEMS {"ITEM A","ITEM B","ITEM C"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

win1.Release ( )
Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_GH2
START DOUBLES
Return
*-------------------------------------------------------------------*
