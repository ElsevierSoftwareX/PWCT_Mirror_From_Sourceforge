*---------------------------------------------------------------------------*
* Time : 11:18:56    Date : 02/06/2011
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
Function BASICDATA
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

Resistance R_BASICDATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_BASICDATA_15speed1() code
class BasicDataClass From SystemDatabase
Method showwindow
Method closewindow
EndClass
Method showwindow Class BasicDataClass
if !iswindowdefined( BasicDataWindow )
DEFINE WINDOW BasicDataWindow ;
AT 10 ,10 ;
WIDTH 513 ;
HEIGHT 266 ;
ICON "PWCTICON" ;
TITLE "«·»Ì«‰«  «·«”«”Ì…" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -5 ,-4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 514 HEIGHT 259
@ 182 ,140 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 24 ,360 LABEL lbl1 ;
VALUE "«·„œÌ— «·⁄«„" ;
WIDTH 160 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 70 ,360 LABEL lbl2 ;
VALUE "«·„œÌ— «·⁄«„ »«·«‰Ã·Ì“Ï" ;
WIDTH 160 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 116 ,360 LABEL lbl3 ;
VALUE "—ﬁ„ «· —ŒÌ’" ;
WIDTH 160 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 26 ,30 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 310 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 71 ,30 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 310 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 116 ,30 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 310 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 182 ,262 BUTTONEX btnSave;
CAPTION "Õ›Ÿ";
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

BasicDataWindow.Center ( )
ACTIVATE WINDOW BasicDataWindow
EndIF

Return 0
Method closewindow Class BasicDataClass
BasicDataWindow.Release ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
