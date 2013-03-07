*---------------------------------------------------------------------------*
* Time : 13:25:47    Date : 08/03/2012
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

Resistance R_ABOUT_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ABOUT_18smart1() code
Class AboutClass
Data cWindowName init "AboutWindow"
Method showwindow
Method closewindow
EndClass
Method showwindow Class AboutClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 605 ;
HEIGHT 489 ;
ICON "PWCTICON" ;
TITLE "„⁄·Ê„«  ÕÊ· «·»—‰«„Ã" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 368 ,27 BUTTONEX btnClose;
CAPTION "≈€·«ﬁ";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 34 ,148 LABEL lbl1 ;
VALUE "»—‰«„Ã «·„ÃÊÂ—«  " ;
WIDTH 330 ;
HEIGHT 90 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,64}
@ 139 ,190 LABEL lbl2 ;
VALUE "«·«’œ«— 1,0 " ;
WIDTH 230 ;
HEIGHT 90 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 248 ,220 LABEL lbl3 ;
VALUE " 2012 " ;
WIDTH 150 ;
HEIGHT 90 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("AboutWindow"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("AboutWindow"), -20),0x400000,0x100000))
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method closewindow Class AboutClass
&(self:cWindowName).Release ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
