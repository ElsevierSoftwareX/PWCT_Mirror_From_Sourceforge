*---------------------------------------------------------------------------*
* Time : 10:35:18    Date : 01/16/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
#include "xhb.ch"
Function SUBWINDOW27
Public True,False 
True = .T. 
False = .F. 
 Details :
* Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_SUBWINDOW27_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUBWINDOW27_18smart1() code
Class subwindow
Method showwindow
Method closewindow
EndClass
Method showwindow Class subwindow
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 293 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

@ 193 ,316 BUTTONEX btn2;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 141 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

END STATUSBAR

END WINDOW

win2.Center ( )
ACTIVATE WINDOW win2
EndIF

Return 0
Method closewindow Class subwindow
win2.Release ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
