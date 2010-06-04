*---------------------------------------------------------------------------*
* Time : 16:33:47    Date : 06/04/2010
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


Resistance R_PHYSPWCTLESS5_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHYSPWCTLESS5_15speed1() code
if !iswindowdefined( energy )
DEFINE WINDOW energy ;
AT 10 ,10 ;
WIDTH 544 ;
HEIGHT 375 ;
ICON "PWCTICON" ;
TITLE "Ì—‰«„Ã Õ”«» «·ÿ«ﬁ… Ê«·‘€·" ;
MAIN ;
NOSYSMENU ;
CURSOR "Mraboelsoud/ABN.ANI" ;
BACKCOLOR {255,181,145} ;
NOTIFYICON "abn.ico" ;
NOTIFYTOOLTIP "»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ«·—ƒ›" 

energy.Center ( )
DEFINE NOTIFY MENU OF energy
Set MenuStyle EXTENDED
MENUITEM "Show Window" Action MSGINFO( "" )
SEPARATOR
MENUITEM "Hide Window" Action MSGINFO( "" )
SEPARATOR
MENUITEM "Designer" Action MSGINFO( "»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ› - „’—" )
SEPARATOR
MENUITEM "PWCT Team" Action MSGINFO( "" )
SEPARATOR
MENUITEM "Close Window" Action MSGINFO( "" )
END MENU
@ 75 ,43 LABEL lbl1energy ;
VALUE "Mr AbOeLsOuD Edu _Series" ;
WIDTH 691 ;
HEIGHT 79 ;
FONT "Tahoma" SIZE 24  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
DEFINE STATUSBAR ;
FONT "Tahoma" SIZE 14 ;
BOLD 

STATUSITEM "»—‰«„Ã Œ”«» «·ÿ«ﬁ… Ê«·‘€·  ... »—„Ã… «/√»Ê«·”⁄‹‹Êœ ⁄»‹œ «·‹—ƒ›   ";
Action MSGINFO( "‘ﬂ—« ·«” Œœ«„ﬂ «·»—‰«„Ã Ê‰ „‰Ì ·ﬂ„ «·«” ›«œ… Ê·„“Ìœ „‰ «·«” ›”«—  Ì„ﬂ‰ﬂ «·« ’«· ⁄·Ì 002/0105234960" ) ;
RAISED

END STATUSBAR

@ 155 ,27 BUTTONEX pe;
PICTURE "MrAbOeLsOuD/back/pe.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,151 BUTTONEX ke;
PICTURE "MrAbOeLsOuD/back/ke.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 209 ,257 BUTTONEX me;
PICTURE "MrAbOeLsOuD/back/ME.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

energy.Maximize ( )
ACTIVATE WINDOW energy
EndIF



End Of Resistance

INIT PROCEDURE Init_PHYSPWCTLESS5
START DOUBLES
Return
*-------------------------------------------------------------------*
