*---------------------------------------------------------------------------*
* Time : 02:05:49    Date : 05/17/2011
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


Resistance R_SAAD_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 899 ;
HEIGHT 484 ;
ICON "PWCTICON" ;
TITLE "«· ÿ»Ìﬁ —ﬁ„ 2" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 11 ,204 LABEL lbl1 ;
VALUE "«· ÿ»Ì‹‹‹‹‹ﬁ «·À‹‹‹‹‹‹‹‹‹«‰Ì" ;
WIDTH 395 ;
HEIGHT 61 ;
FONT "Tahoma" SIZE 24  ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
@ 159 ,662 TEXTBOX text1;
HEIGHT 37 ;
WIDTH 114 ;
VALUE "√—ﬁ«„ Ê Õ—Êﬁ Ê —„Ê“" ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,128,255} 

@ 106 ,662 TEXTBOX text3;
HEIGHT 37 ;
WIDTH 114 ;
VALUE "12345" ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,128,255} ;
NUMERIC 

@ 49 ,662 TEXTBOX text4;
HEIGHT 37 ;
WIDTH 114 ;
VALUE "ﬂ·„… «·„—Ê—" ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,128,255} ;
PASSWORD 

@ 170 ,509 LABEL lbl2 ;
VALUE "„—»⁄ Õ—Ê› Ê √—ﬁ«„ Ê —„Ê“" ;
WIDTH 133 ;
HEIGHT 28 ;
FONT "Tahoma" SIZE 10  ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 112 ,561 LABEL lbl3 ;
VALUE "„—»⁄ √—ﬁ«„ ›ﬁÿ" ;
WIDTH 80 ;
HEIGHT 28 ;
FONT "Tahoma" SIZE 10  ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 60 ,551 LABEL lbl4 ;
VALUE "„—»⁄ ﬂ·„«  „—Ê—" ;
WIDTH 90 ;
HEIGHT 28 ;
FONT "Tahoma" SIZE 10  ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 405 ,11 BUTTONEX btn1;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,0};
ON CLICK Myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 405 ,781 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 IMAGE image1;
PICTURE "31.jpg";
WIDTH 160 HEIGHT 100
@ 220 ,662 LISTBOX list1;
WIDTH 114 ;
HEIGHT 100 ;
ITEMS {"”⁄œ","Œ«·œ","’«·Õ"} ;
FONT "Tahoma" SIZE 12 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,128,255}
@ 333 ,662 COMBOBOX combo1;
WIDTH 114 ;
ITEMS {"”⁄œ","Œ«·œ","’«·Õ"} ;
DISPLAYEDIT ;
FONT "Tahoma" SIZE 12 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,128,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD
START DOUBLES
Return
*-------------------------------------------------------------------*
