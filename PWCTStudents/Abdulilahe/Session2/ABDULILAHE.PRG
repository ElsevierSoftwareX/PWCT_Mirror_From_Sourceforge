*---------------------------------------------------------------------------*
* Time : 00:30:25    Date : 07/07/2011
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


Resistance R_ABDULILAHE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ABDULILAHE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "abdulilahe2" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 9 ,358 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·«œÊ« " ;
WIDTH 122 ;
HEIGHT 36 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 42 ,261 TEXTBOX abdulilahe;
HEIGHT 38 ;
WIDTH 185 ;
VALUE "abdulilahe" ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {255,0,128} ;
PASSWORD 

@ 301 ,33 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {128,0,64};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 301 ,148 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 10 ,10 IMAGE image1;
PICTURE "J0Y35893.JPG";
WIDTH 185 HEIGHT 188
@ 85 ,256 LISTBOX list1;
WIDTH 193 ;
HEIGHT 167 ;
ITEMS {"abdulilahe","CRYSTAL","j_55_j"} ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {0,0,160} ;
SORT ;
FONTCOLOR {255,128,255}
@ 256 ,255 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {"abdulilahe","CRYSTAL","j_55_j","ali"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,160}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_ABDULILAHE
START DOUBLES
Return
*-------------------------------------------------------------------*
