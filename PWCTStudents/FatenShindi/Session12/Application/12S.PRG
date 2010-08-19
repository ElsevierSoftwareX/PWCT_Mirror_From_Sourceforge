*---------------------------------------------------------------------------*
* Time : 15:52:44    Date : 08/10/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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


Resistance R_12S_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_12S_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 551 ;
HEIGHT 459 ;
ICON "PWCTICON" ;
TITLE "„‰ œÏ ›« ‰" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ -1 ,-20 IMAGE image1;
PICTURE "G0.JPG";
STRETCH ;
WIDTH 566 HEIGHT 422
@ 183 ,426 LABEL lbl1 ;
VALUE "USER NAME : " ;
WIDTH 103 ;
HEIGHT 32 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,60,255} ;
FONTCOLOR {0,0,255}
@ 230 ,427 TEXTBOX text1;
HEIGHT 52 ;
WIDTH 100 ;
BACKCOLOR {255,204,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
@ 304 ,427 BUTTONEX btn1;
CAPTION "LOG IN ";
FONTCOLOR {0,0,0};
ON CLICK MYLOGIN()  ;
WIDTH 103 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mylogin
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("PLEASE ENTER USER NAME","ERROR")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "HELLO" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ -32 ,-35 IMAGE image1;
PICTURE "54W.JPG";
STRETCH ;
WIDTH 532 HEIGHT 395
@ 312 ,315 LABEL lbl1 ;
VALUE USER ;
WIDTH 151 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,108,255} ;
FONTCOLOR {255,202,255}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_12S
START DOUBLES
Return
*-------------------------------------------------------------------*
