*---------------------------------------------------------------------------*
* Time : 18:57:12    Date : 11/09/2011
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
Function SUB
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

Resistance R_SUB_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUB_15speed1() code
Class subwindow
Method showwindow
Method closewindow
EndClass
Method showwindow Class subwindow
if !iswindowdefined( winwelcome )
DEFINE WINDOW winwelcome ;
AT 10 ,10 ;
WIDTH 595 ;
HEIGHT 449 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 358 ,432 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winwelcome.Center ( )
ACTIVATE WINDOW winwelcome
EndIF

Return 0
Method closewindow Class subwindow
winwelcome.Release ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
