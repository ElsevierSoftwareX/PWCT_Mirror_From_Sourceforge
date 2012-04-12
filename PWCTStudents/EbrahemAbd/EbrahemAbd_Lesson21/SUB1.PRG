*---------------------------------------------------------------------------*
* Time : 13:07:21    Date : 04/11/2012
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
if !iswindowdefined( AbouWindow )
DEFINE WINDOW AbouWindow ;
AT 10 ,10 ;
WIDTH 595 ;
HEIGHT 449 ;
ICON "PWCTICON" ;
TITLE "„—Õ»« »ﬂ„ ›Ï  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "IMAGES\ABN.ANI" ;
BACKCOLOR {255,255,255}

@ -2 ,-1 IMAGE image1;
PICTURE "IMAGES\BACKABOUT.JPG";
STRETCH ;
WIDTH 595 HEIGHT 449
@ 358 ,432 BUTTONEX btnClose;
CAPTION "Œ—ÊÃ";
PICTURE "IMAGES\CLOSE.BMP";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

AbouWindow.Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("AbouWindow"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("AbouWindow"), -20),0x400000,0x100000))
ACTIVATE WINDOW AbouWindow
EndIF

Return 0
Method closewindow Class AboutClass
AbouWindow.Release ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
