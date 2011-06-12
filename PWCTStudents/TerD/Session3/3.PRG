*---------------------------------------------------------------------------*
* Time : 22:21:58    Date : 06/09/2011
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


Resistance R_3_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_3_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 502 ;
HEIGHT 326 ;
ICON "PWCTICON" ;
TITLE "3" ;
MAIN ;
BACKCOLOR {0,128,128} 

@ 14 ,165 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 81 ,163 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 142 ,162 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 

@ 19 ,371 LABEL lbl1 ;
VALUE "«·œ—Ã…" ;
WIDTH 199 ;
HEIGHT 24 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {0,0,0}
@ 83 ,369 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄" ;
WIDTH 200 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {0,0,0}
@ 143 ,367 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 200 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {0,0,0}
@ 228 ,304 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ…";
ON CLICK calc()  ;
WIDTH 173 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 225 ,21 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 11 ,10 IMAGE image1;
PICTURE "C:\DOCUMENTS AND SETTINGS\ADMINISTRATOR\DESKTOP\«· ÿ»Ìﬁ «·À«·À\7.JPG";
WIDTH 149 HEIGHT 168
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
pers := (num1/num2)*100
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers
Return Nil
Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_3
START DOUBLES
Return
*-------------------------------------------------------------------*
