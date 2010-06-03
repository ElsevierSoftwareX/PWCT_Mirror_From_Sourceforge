*---------------------------------------------------------------------------*
* Time : 08:29:07    Date : 06/03/2010
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


Resistance R_PHYSICSPWCTLESSON5_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHYSICSPWCTLESSON5_15speed1() code
SET AUTOADJUST ON
MyOut := MSGExclamation("„—Õ»« »ﬂ ›Ì ”·”·… «·›Ì“Ì«¡ Ê«·»—„Ã… »œÊ‰ ﬂÊœ ··„» œ∆Ì‰  ---- «·œ—” «·Œ«„”","√/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›")
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1098 ;
HEIGHT 880 ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã Õ”«» «·ÿ«ﬁ…      (   ÿ«ﬁ… «·Ê÷⁄- ÿ«ﬁ… «·Õ—ﬂ… - «·ÿ«ﬁ… «·„Ìﬂ«‰ÌﬂÌ…)" ;
MAIN ;
NOSYSMENU ;
BACKCOLOR {236,233,216} 

@ -4 ,-2 IMAGE image1;
PICTURE "MrAbOeLsOuD/back/1.jpg";
STRETCH ;
WIDTH 1109 HEIGHT 849
@ 21 ,121 IMAGE image2;
PICTURE "MrAbOeLsOuD/back/pp.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 137 ,418 IMAGE image3;
PICTURE "MrAbOeLsOuD/back/KB.jpg";
STRETCH ;
WIDTH 147 HEIGHT 85
@ 126 ,631 IMAGE image4;
PICTURE "MrAbOeLsOuD/back/MB.jpg";
STRETCH ;
WIDTH 141 HEIGHT 94
DEFINE STATUSBAR ;
FONT "Tahoma" SIZE 11 ;
BOLD 

STATUSITEM "»—‰«„Ã Õ”«» «·ÿ«ﬁ…";
RAISED

DATE;
WIDTH 150 

CLOCK;
WIDTH 160;
AMPM 

END STATUSBAR

DEFINE MAIN MENU of win1
POPUP "„·›"
MENUITEM "Text Here" Action MSGINFO( "Text Here" )
END POPUP
END MENU
@ 151 ,667 BUTTONEX btn1en;
PICTURE "MrAbOeLsOuD/back/PE.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 80 HEIGHT 45 ;
TOOLTIP ""
@ 145 ,441 BUTTONEX btn2en;
CAPTION "PE";
WIDTH 113 HEIGHT 77 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 140 ,233 BUTTONEX btn3en;
CAPTION "PE";
WIDTH 151 HEIGHT 86 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 188 ,61 BUTTONEX btn4en;
CAPTION "PE";
WIDTH 111 HEIGHT 69 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 358 ,52 BUTTONEX btn5en;
CAPTION "PE";
WIDTH 107 HEIGHT 61 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 325 ,297 BUTTONEX btn6en;
CAPTION "PE";
WIDTH 129 HEIGHT 67 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_PHYSICSPWCTLESSON5
START DOUBLES
Return
*-------------------------------------------------------------------*
