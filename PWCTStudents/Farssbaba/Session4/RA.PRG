*---------------------------------------------------------------------------*
* Time : 18:00:36    Date : 05/25/2011
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


Resistance R_RA_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_RA_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 365 ;
HEIGHT 309 ;
ICON "PWCTICON" ;
TITLE "«· Õﬂ„ ›Ì Œ’«∆’" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,255,0} 

@ 40 ,37 LABEL lbl1 ;
VALUE "Â· √—”· «··Â —”Ê·« „‰ »⁄œ ⁄Ì”Ï ø" ;
WIDTH 319 ;
HEIGHT 74 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {255,0,0}
@ 166 ,69 LABEL lbl2 ;
VALUE "" ;
WIDTH 313 ;
HEIGHT 85 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,255}
@ 98 ,34 BUTTONEX btn1;
CAPTION "«·ÃÊ«»";
ON CLICK mycaption()  ;
WIDTH 266 HEIGHT 44 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycaption
win1.lbl2.Value := "‰⁄„ «”„Â „Õ„œ »‰ ⁄»œ«··Â «·Â«‘„Ì"
Return Nil


End Of Resistance

INIT PROCEDURE Init_RA
START DOUBLES
Return
*-------------------------------------------------------------------*
