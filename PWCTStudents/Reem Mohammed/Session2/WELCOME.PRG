*---------------------------------------------------------------------------*
* Time : 06:00:45    Date : 07/25/2011
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


Resistance R_WELCOME_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WELCOME_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 592 ;
HEIGHT 464 ;
ICON "PWCTICON" ;
TITLE "Sbonge World" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "SPONGEBOB.ANI" ;
BACKCOLOR {255,255,255} 

@ 4 ,101 LABEL lbl1 ;
VALUE "Welcome to My World" ;
WIDTH 383 ;
HEIGHT 61 ;
FONT "Curlz MT" SIZE 26  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,64}
@ 377 ,455 BUTTONEX btn1;
CAPTION "Close";
ON CLICK MSGINFO( MyClose() ) ;
WIDTH 113 HEIGHT 40 ;
FONT "Forte" SIZE 22 ;
TOOLTIP ""
@ 120 ,294 TEXTBOX text1;
HEIGHT 42 ;
WIDTH 158 ;
FONT "Arial" SIZE 20 ;
BACKCOLOR {253,235,232} ;
FONTCOLOR {0,0,0} 

@ 79 ,177 LABEL lbl2 ;
VALUE "Write your Name Pleas" ;
WIDTH 220 ;
HEIGHT 26 ;
FONT "Forte" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 219 ,294 LISTBOX list1;
WIDTH 159 ;
HEIGHT 45 ;
ITEMS {"english","Arabic","France"} ;
FONT "Footlight MT Light" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 176 ,177 LABEL lbl3 ;
VALUE "Enter Your Native Language" ;
WIDTH 270 ;
HEIGHT 38 ;
FONT "Forte" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 277 ,177 LABEL lbl4 ;
VALUE "Enter Your Contry" ;
WIDTH 196 ;
HEIGHT 33 ;
FONT "Forte" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 313 ,294 COMBOBOX combo1;
WIDTH 148 ;
ITEMS {"Egypt","USA","UK","Canada"} ;
DISPLAYEDIT ;
FONT "Forte" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 93 ,11 IMAGE image1;
PICTURE "PICTURE1.JPG";
STRETCH ;
WIDTH 152 HEIGHT 189
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MyClose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WELCOME
START DOUBLES
Return
*-------------------------------------------------------------------*
