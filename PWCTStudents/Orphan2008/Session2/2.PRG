*---------------------------------------------------------------------------*
* Time : 00:15:08    Date : 06/28/2011
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


Resistance R_2_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_2_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·œ—” 2" ;
MAIN ;
TOPMOST ;
BACKCOLOR {236,233,216} 

@ 10 ,268 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·«œÊ« " ;
WIDTH 200 ;
HEIGHT 50 ;
FONT "Arial" SIZE 20  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 70 ,253 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 207 ;
VALUE "pwct" ;
BOLD ;
BACKCOLOR {255,128,128} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255} ;
PASSWORD 

@ 316 ,10 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {128,64,64};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,112 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,64,128};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 IMAGE image1;
PICTURE "CHRYSANTHEMUM.JPG";
WIDTH 100 HEIGHT 100
@ 110 ,254 LISTBOX list1;
WIDTH 208 ;
HEIGHT 153 ;
ITEMS {" Ã—»… 1"," Ã—»…2"," Ã—»…3"} ;
FONT "Arial" SIZE 24 ;
BACKCOLOR {255,255,128} ;
SORT ;
FONTCOLOR {0,0,0}
@ 264 ,252 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {" Ã—»… 1"," Ã—»…2"," Ã—»…3"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_2
START DOUBLES
Return
*-------------------------------------------------------------------*
