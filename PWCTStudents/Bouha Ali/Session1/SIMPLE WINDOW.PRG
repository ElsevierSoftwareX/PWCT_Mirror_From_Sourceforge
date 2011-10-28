*---------------------------------------------------------------------------*
* Time : 17:25:51    Date : 10/28/2011
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


Resistance R_SIMPLE_WINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SIMPLE_WINDOW_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 636 ;
HEIGHT 315 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â «·—Õ„«‰ «·—ÕÌ„" ;
MAIN ;
BACKCOLOR {128,255,0} 

@ 22 ,93 LABEL lbl1 ;
VALUE "hello Mr Mahmoud" ;
WIDTH 470 ;
HEIGHT 84 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {128,0,255}
@ 110 ,156 LABEL lbl2 ;
VALUE "Your 1st lesson was great" ;
WIDTH 304 ;
HEIGHT 51 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {255,0,128}
@ 152 ,263 LABEL lbl3 ;
VALUE "Thanks" ;
WIDTH 103 ;
HEIGHT 37 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {255,128,0}
@ 209 ,249 BUTTONEX btn1;
CAPTION "Leave";
ON CLICK Myleave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 213 ,72 BUTTONEX btn2;
CAPTION "max";
ON CLICK Mymaxim()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 210 ,417 BUTTONEX btn3;
CAPTION "Minim";
ON CLICK Myminim()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myleave
win1.Release ( )
Return Nil
Proc Mymaxim
win1.Maximize ( )
Return Nil
Proc Myminim
win1.Minimize ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SIMPLE_WINDOW
START DOUBLES
Return
*-------------------------------------------------------------------*
