*---------------------------------------------------------------------------*
* Time : 05:35:26    Date : 08/10/2010
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


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Test" ;
MAIN ;
TOPMOST ;
NOSIZE ;
BACKCOLOR {128,128,128} 

@ 44 ,10 IMAGE image1;
PICTURE "test.JPG";
STRETCH ;
WIDTH 261 HEIGHT 215
@ 3 ,168 LABEL lbl1 ;
VALUE "       »Ì«‰ ÊŸÌ›…" ;
WIDTH 158 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,128,128} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 46 ,282 TEXTBOX «·√”„;
HEIGHT 36 ;
WIDTH 201 ;
VALUE «·√”„ ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 313 ,12 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,128,0};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 312 ,128 BUTTONEX btn2;
CAPTION " ⁄œÌ·";
FONTCOLOR {255,0,128};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 88 ,282 LISTBOX list1;
WIDTH 202 ;
HEIGHT 145 ;
ITEMS {"Test","Modify","Add","Delete","Clear","Save","sort","8","9","10"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {192,192,192} ;
SORT ;
FONTCOLOR {0,0,0}
@ 243 ,282 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {"accept","Ignore","Add to list"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {192,192,192} ;
SORT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
