*---------------------------------------------------------------------------*
* Time : 10:20:57    Date : 07/25/2010
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


Resistance R_HELLO_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLO_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 489 ;
HEIGHT 390 ;
ICON "PWCTICON" ;
TITLE "Shereen" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,128} 

@ 290 ,336 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {0,0,255};
BACKCOLOR {255,128,192};
ON CLICK myclose()  ;
WIDTH 113 HEIGHT 43 ;
FONT "Arial" SIZE 24 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 93 ,91 IMAGE image;
PICTURE "my smile.jpg";
STRETCH ;
WIDTH 232 HEIGHT 201
@ 15 ,55 LABEL lbl1 ;
VALUE "Hello World" ;
WIDTH 304 ;
HEIGHT 69 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {255,128,128} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HELLO
START DOUBLES
Return
*-------------------------------------------------------------------*
