*---------------------------------------------------------------------------*
* Time : 19:01:40    Date : 02/21/2011
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
Function MESSAGEBOX
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

Resistance R_MESSAGEBOX_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MESSAGEBOX_15speed1() code
Class MessageBoxClass
Data cMessage init ""
Method MsgOk
Method closewindow
Method MsgYesNo
EndClass
Method MsgOk Class MessageBoxClass
if !iswindowdefined( MessageBoxWindow )
DEFINE WINDOW MessageBoxWindow ;
AT 10 ,10 ;
WIDTH 592 ;
HEIGHT 203 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
MODAL ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 115 ,435 BUTTONEX btnClose;
CAPTION "Ok";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 14 ,11 LABEL lbl1 ;
VALUE self:cMessage ;
WIDTH 225 ;
HEIGHT 50 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
END WINDOW

MessageBoxWindow.Center ( )
ACTIVATE WINDOW MessageBoxWindow
EndIF

Return 0
Method closewindow Class MessageBoxClass
MessageBoxWindow.Release ( )
Return 0
Method MsgYesNo Class MessageBoxClass
if !iswindowdefined( MessageBoxWindow )
DEFINE WINDOW MessageBoxWindow ;
AT 10 ,10 ;
WIDTH 592 ;
HEIGHT 203 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
MODAL ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 115 ,435 BUTTONEX btnClose;
CAPTION "Ok";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 14 ,11 LABEL lbl1 ;
VALUE self:cMessage ;
WIDTH 225 ;
HEIGHT 50 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
END WINDOW

MessageBoxWindow.Center ( )
ACTIVATE WINDOW MessageBoxWindow
EndIF

Return 0



End Of Resistance

*-------------------------------------------------------------------*
