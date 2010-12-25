*---------------------------------------------------------------------------*
* Time : 23:12:00    Date : 12/24/2010
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


Resistance R_SOZI_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SOZI_15speed1() code
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 856 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "details" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 27 ,13 LABEL lbl1 ;
VALUE "first name" ;
WIDTH 133 ;
HEIGHT 47 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 22 ,349 LABEL lbl2 ;
VALUE "last name" ;
WIDTH 130 ;
HEIGHT 43 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 25 ,131 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {128,0,0} 

@ 23 ,447 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {128,0,0} 

@ 81 ,13 LABEL lbl3 ;
VALUE "Age" ;
WIDTH 108 ;
HEIGHT 41 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 78 ,195 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {252,226,248} ;
FONTCOLOR {128,0,0}
@ 77 ,418 COMBOBOX combo2;
WIDTH 100 ;
ITEMS {"1","2","3","4","5","6","7","8","9","10","11","12"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {252,226,248} ;
FONTCOLOR {128,0,0}
@ 80 ,131 LABEL lbl4 ;
VALUE "day" ;
WIDTH 51 ;
HEIGHT 44 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 80 ,345 LABEL lbl5 ;
VALUE "month" ;
WIDTH 70 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 78 ,563 LABEL lbl6 ;
VALUE "year" ;
WIDTH 60 ;
HEIGHT 41 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 74 ,630 TEXTBOX text4;
HEIGHT 29 ;
WIDTH 110 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 162 ,16 IMAGE image1;
PICTURE "D:\»—„ÃÂ »œÊ‰ ﬂÊœ\SOUZAN\UNTITLED.BMP";
WIDTH 115 HEIGHT 149
@ 304 ,726 BUTTONEX btn1;
CAPTION "close";
BACKCOLOR {236,233,216};
ON CLICK Myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 304 ,566 BUTTONEX btn2;
CAPTION "back";
BACKCOLOR {236,233,216};
WIDTH 101 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Proc Myclose
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SOZI
START DOUBLES
Return
*-------------------------------------------------------------------*
