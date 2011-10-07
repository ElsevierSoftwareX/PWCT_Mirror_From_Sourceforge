*---------------------------------------------------------------------------*
* Time : 21:07:31    Date : 10/06/2011
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


Resistance R_AMIN2_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AMIN2_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 479 ;
HEIGHT 441 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 30 ,293 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·«œÊ« " ;
WIDTH 132 ;
HEIGHT 27 ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0}
@ 76 ,228 TEXTBOX text1;
HEIGHT 26 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 362 ,11 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,0,255};
ON CLICK close()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 361 ,138 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 IMAGE image1;
PICTURE "5.JPG";
WIDTH 171 HEIGHT 120
@ 109 ,226 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"amin","hadi","hakim"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 319 ,224 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {"amin","hadi","hakim"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_AMIN2
START DOUBLES
Return
*-------------------------------------------------------------------*
