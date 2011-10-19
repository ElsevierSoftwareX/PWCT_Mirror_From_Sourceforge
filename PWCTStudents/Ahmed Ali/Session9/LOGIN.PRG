*---------------------------------------------------------------------------*
* Time : 18:49:38    Date : 10/19/2011
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


Resistance R_LOGIN_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 579 ;
HEIGHT 409 ;
ICON "PWCTICON" ;
TITLE "«·‰«›–… «·—∆Ì”Ì…" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255} 

@ 87 ,158 LABEL lbl1 ;
VALUE "Username" ;
WIDTH 117 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,128,64}
@ 150 ,117 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,64} 

@ 214 ,164 BUTTONEX btn1;
CAPTION "login";
ON CLICK login()  ;
WIDTH 101 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 17 ,389 IMAGE image1;
PICTURE "NATURE.JPG";
STRETCH ;
WIDTH 174 HEIGHT 157
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("PLease inter username","error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 491 ;
HEIGHT 225 ;
ICON "PWCTICON" ;
TITLE "Hello" + user ;
MODAL ;
NOSIZE ;
BACKCOLOR {128,128,255} ;
FONT "Arial" SIZE 18 

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
Return
*-------------------------------------------------------------------*
