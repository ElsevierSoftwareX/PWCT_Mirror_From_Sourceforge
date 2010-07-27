*---------------------------------------------------------------------------*
* Time : 00:46:29    Date : 07/28/2010
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
TITLE "Asmaa Hamid" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 16 ,275 LABEL lbl1 ;
VALUE "„⁄—›… «·«œÊ« " ;
WIDTH 156 ;
HEIGHT 42 ;
FONT "Arial" SIZE 24  ;
BOLD ;
UNDERLINE ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {255,0,128}
@ 308 ,4 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,128};
BACKCOLOR {192,192,192};
ON CLICK myclose()  ;
WIDTH 108 HEIGHT 41 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
@ 308 ,115 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {255,0,128};
BACKCOLOR {192,192,192};
WIDTH 106 HEIGHT 43 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
@ 51 ,259 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 200 ;
VALUE "any thing" ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,128} ;
INPUTMASK ""
@ 91 ,260 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"as","sh","es","mh","sy"} ;
FONT "Arial" SIZE 22 ;
BOLD ;
ITALIC ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,128}
@ 298 ,260 COMBOBOX combo1;
WIDTH 202 ;
ITEMS {"as","sh","es","mh","sy"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 22 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,128}
@ 129 ,43 IMAGE image1;
PICTURE "1131506005.JPG";
WIDTH 126 HEIGHT 85
@ 229 ,43 LABEL lbl2 ;
VALUE "«‘—«ﬁ… √„·" ;
WIDTH 132 ;
HEIGHT 38 ;
FONT "Arial" SIZE 24  ;
BOLD ;
ITALIC ;
BACKCOLOR {255,255,255} ;
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
