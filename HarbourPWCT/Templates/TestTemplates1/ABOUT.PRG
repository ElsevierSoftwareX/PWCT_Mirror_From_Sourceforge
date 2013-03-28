*---------------------------------------------------------------------------*
* Time : 22:14:46    Date : 07/31/2010
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
Function ABOUT
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

Resistance R_ABOUT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ABOUT_15speed1() code
Class aboutclass
Method showwindow
Method closewindow
EndClass
Method showwindow Class aboutclass
if !iswindowdefined( aboutwindow )
DEFINE WINDOW aboutwindow ;
AT 10 ,10 ;
WIDTH 595 ;
HEIGHT 449 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
BACKCOLOR {255,255,255}

@ 358 ,432 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

aboutwindow.Center ( )
ACTIVATE WINDOW aboutwindow
EndIF

Return 0
Method closewindow Class aboutclass
aboutwindow.Release ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
