*---------------------------------------------------------------------------*
* Time : 13:23:14    Date : 02/01/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
Function SUB1
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

Resistance R_SUB1_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUB1_18smart1() code
Class aboutclass
Data cWindowName init "SubWindowName"
Method showwindow
Method closewindow
EndClass
Method showwindow Class aboutclass
if !iswindowdefined( aboutwindow )
DEFINE WINDOW aboutwindow ;
AT 10 ,10 ;
WIDTH 571 ;
HEIGHT 296 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192}

@ 156 ,12 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,328 IMAGE image1;
PICTURE "IMG\2.JPG";
STRETCH ;
WIDTH 219 HEIGHT 204
@ 20,17 HYPERLINK Hyper1;
VALUE "PWCT Website" ;
ADDRESS "http://doublesvsoop.sourceforge.net";
WIDTH 163 ;
HEIGHT 42 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,255}

@ 77,12 HYPERLINK Hyper2;
VALUE "PWCT Remote Learn" ;
ADDRESS "http://doublesvsoop.sourceforge.net/giftphp/main.htm";
WIDTH 207 ;
HEIGHT 39 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,255}

DEFINE STATUSBAR

STATUSITEM "PWCT By Ahmed Attya"

DATE

CLOCK

END STATUSBAR

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
