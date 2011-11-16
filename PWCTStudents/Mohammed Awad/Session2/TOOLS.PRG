*---------------------------------------------------------------------------*
* Time : 17:00:01    Date : 11/15/2011
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


Resistance R_TOOLS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TOOLS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 578 ;
HEIGHT 562 ;
ICON "PWCTICON" ;
TITLE "information" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 89 ,15 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 68 ;
HEIGHT 33 ;
FONT "Baskerville Old Face" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 128 ,14 LABEL lbl2 ;
VALUE "Age" ;
WIDTH 48 ;
HEIGHT 32 ;
FONT "Baskerville Old Face" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 252 ,8 LABEL lbl3 ;
VALUE "Country" ;
WIDTH 74 ;
HEIGHT 34 ;
FONT "Baskerville Old Face" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 304 ,8 LABEL lbl4 ;
VALUE "Phone" ;
WIDTH 63 ;
HEIGHT 32 ;
FONT "Baskerville Old Face" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 369 ,8 LABEL lbl5 ;
VALUE "Password" ;
WIDTH 82 ;
HEIGHT 36 ;
FONT "Baskerville Old Face" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 87 ,87 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 229 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 

@ 487 ,15 BUTTONEX btn1;
CAPTION "Ok";
WIDTH 100 HEIGHT 30 ;
FONT "Baskerville Old Face" SIZE 16 ;
TOOLTIP ""
@ 487 ,130 BUTTONEX btn2;
CAPTION "Cancel";
WIDTH 100 HEIGHT 30 ;
FONT "Baskerville Old Face" SIZE 16 ;
TOOLTIP ""
@ 140 ,87 LISTBOX list1;
WIDTH 229 ;
HEIGHT 90 ;
ITEMS {"10 - 15","15 - 20","20 -25","25 - 30","30 - 35"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 250 ,87 COMBOBOX combo1;
WIDTH 231 ;
ITEMS {"Egypt","libya","UAE","sudan"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 306 ,87 TEXTBOX text2;
HEIGHT 38 ;
WIDTH 233 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} ;
NUMERIC 

@ 369 ,87 TEXTBOX text3;
HEIGHT 36 ;
WIDTH 234 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} ;
PASSWORD 

@ 85 ,373 IMAGE image1;
PICTURE "PURPEL.JPG";
WIDTH 160 HEIGHT 170
@ 16 ,128 LABEL lbl0 ;
VALUE "Personal information" ;
WIDTH 311 ;
HEIGHT 43 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_TOOLS
START DOUBLES
Return
*-------------------------------------------------------------------*
