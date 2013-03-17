*---------------------------------------------------------------------------*
* Time : 09:02:43    Date : 03/14/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
Data cWindowName init "Aboutwindow"
Method showwindow
Method closewindow
EndClass
Method showwindow Class AboutClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 708 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "About" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -6 ,-8 IMAGE image1;
PICTURE "Images\back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 480
@ 311 ,550 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 122 HEIGHT 38 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
@ 25 ,21 LABEL lbl1 ;
VALUE "«·”·«„ ⁄·Ìﬂ„ Ê—Õ„… «··Â Ê»—ﬂ« … " ;
WIDTH 679 ;
HEIGHT 105 ;
FONT "Arabic Typesetting" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 136 ,50 LABEL lbl2 ;
VALUE "„’„„ » ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ " ;
WIDTH 597 ;
HEIGHT 88 ;
FONT "Arial" SIZE 44  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method closewindow Class AboutClass
&(self:cWindowName).Release ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
