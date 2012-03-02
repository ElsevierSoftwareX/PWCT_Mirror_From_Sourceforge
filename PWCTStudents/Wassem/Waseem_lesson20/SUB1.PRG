*---------------------------------------------------------------------------*
* Time : 22:51:36    Date : 03/01/2012
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
WIDTH 400 ;
HEIGHT 371 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 272 ,122 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 15 ,25 LABEL lbl1 ;
VALUE "Hello !!, I am Waseem From Syria " ;
WIDTH 328 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 54 ,31 IMAGE image1;
PICTURE "Images/w.jpg";
STRETCH ;
WIDTH 311 HEIGHT 208
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
