*---------------------------------------------------------------------------*
* Time : 01:21:56    Date : 06/15/2011
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


Resistance R_6_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_6_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 562 ;
HEIGHT 408 ;
ICON "PWCTICON" ;
TITLE "«·ﬁ«∆„…" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,0,128} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action myx()
END POPUP
END MENU
@ 55 ,416 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 96 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 119 ,412 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄" ;
WIDTH 100 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 172 ,405 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 105 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 52 ,179 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 202 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 114 ,181 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 170 ,181 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {0,0,255} ;
FONTCOLOR {255,255,0} 

@ 234 ,172 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ…";
ON CLICK clkc()  ;
WIDTH 176 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 316 ,8 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK myex()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 10 ,10 IMAGE image1;
PICTURE "C:\DOCUMENTS AND SETTINGS\ADMINISTRATOR\DESKTOP\«· ÿ»Ìﬁ «·À«·À\7.JPG";
WIDTH 149 HEIGHT 206
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc clkc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1 / num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers
Return Nil
Proc myx
win1.Release ( )
Return Nil
Proc myex
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_6
START DOUBLES
Return
*-------------------------------------------------------------------*
