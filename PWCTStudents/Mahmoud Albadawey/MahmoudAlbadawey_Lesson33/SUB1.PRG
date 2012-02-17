*---------------------------------------------------------------------------*
* Time : 14:59:19    Date : 02/06/2012
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
WIDTH 595 ;
HEIGHT 449 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -3 ,0 IMAGE image1;
PICTURE "img\backinfo.jpg";
STRETCH ;
WIDTH 588 HEIGHT 412
@ 358 ,432 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 142 ,194 LABEL lbl1 ;
VALUE "Mahmoud Albadawey" ;
WIDTH 196 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 186 ,130 LABEL lbl2 ;
VALUE "Senior Oracle Developer / Instructor" ;
WIDTH 325 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 226 ,112 LABEL lbl3 ;
VALUE "mahmoud_oracledeveloper@yahoo.com" ;
WIDTH 360 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
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
