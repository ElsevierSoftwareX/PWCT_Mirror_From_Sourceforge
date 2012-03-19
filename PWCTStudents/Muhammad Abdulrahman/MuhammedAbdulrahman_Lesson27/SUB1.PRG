*---------------------------------------------------------------------------*
* Time : 21:26:50    Date : 03/17/2012
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
Class AboutClass
Data cWindowName init "SubWindowName"
Method showwindow
Method closewindow
EndClass
Method showwindow Class AboutClass
if !iswindowdefined( AboutWindow )
DEFINE WINDOW AboutWindow ;
AT 10 ,10 ;
WIDTH 595 ;
HEIGHT 449 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -9 ,-21 IMAGE image1;
PICTURE "IMAGES\PWCT.JPG";
STRETCH ;
WIDTH 620 HEIGHT 434
@ 82 ,193 LABEL lbl1 ;
VALUE "Powered By PWCT 1.8" ;
WIDTH 207 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 143 ,184 LABEL lbl2 ;
VALUE "For more information visit" ;
WIDTH 219 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 211 ,67 LABEL lbl3 ;
VALUE "http://doublesvsoop.sourceforge.net/giftphp/main.htm" ;
WIDTH 461 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 358 ,364 BUTTONEX btnClose;
CAPTION "<<< Go Back";
ON CLICK self:closewindow()  ;
WIDTH 196 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

AboutWindow.Center ( )
ACTIVATE WINDOW AboutWindow
EndIF

Return 0
Method closewindow Class AboutClass
AboutWindow.Release ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
