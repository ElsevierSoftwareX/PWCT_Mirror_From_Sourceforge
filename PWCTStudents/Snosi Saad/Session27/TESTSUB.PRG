*---------------------------------------------------------------------------*
* Time : 17:57:11    Date : 06/22/2011
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
Function TESTSUB
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_TESTSUB_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TESTSUB_15speed1() code
Class Subwindow
Method showwindow
Method closewindow
EndClass
Method showwindow Class Subwindow
if !iswindowdefined( winwelcome )
DEFINE WINDOW winwelcome ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 276 ;
ICON "PWCTICON" ;
TITLE "„—Õ»«" ;
CHILD ;
BACKCOLOR {26,142,230} 

@ 197 ,210 BUTTONEX btnclose;
CAPTION "≈€·«ﬁ";
ON CLICK self:closewindow()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

winwelcome.Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Winwelcome"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Winwelcome"), -20),0x400000,0x100000))
ACTIVATE WINDOW winwelcome
EndIF

Return 0
Method closewindow Class Subwindow
winwelcome.Release ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
