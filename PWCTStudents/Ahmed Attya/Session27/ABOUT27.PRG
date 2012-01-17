*---------------------------------------------------------------------------*
* Time : 10:55:37    Date : 01/16/2012
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
Function ABOUT27
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

Resistance R_ABOUT27_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ABOUT27_18smart1() code
Class aboutwindow
Method showwindow
Method closewindow
EndClass
Method showwindow Class aboutwindow
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 293 ;
ICON "PWCTICON" ;
TITLE "About" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 196 ,321 BUTTONEX btn2;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 141 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

END STATUSBAR

@ 19,37 HYPERLINK Hyper1;
VALUE "PWCT Website" ;
ADDRESS "http://doublesvsoop.sourceforge.net";
WIDTH 209 ;
HEIGHT 51 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

@ 153,37 HYPERLINK Hyper2;
VALUE "PWCT FaceBook Group" ;
ADDRESS "https://www.facebook.com/groups/doublesvsoop/";
WIDTH 246 ;
HEIGHT 49 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

@ 80,37 HYPERLINK Hyper3;
VALUE "PWCT On Sourceforge" ;
ADDRESS "http://sourceforge.net/projects/doublesvsoop/";
WIDTH 219 ;
HEIGHT 50 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

@ 14 ,300 IMAGE image1;
PICTURE "2.JPG";
STRETCH ;
WIDTH 173 HEIGHT 152
END WINDOW

win2.Center ( )
ACTIVATE WINDOW win2
EndIF

Return 0
Method closewindow Class aboutwindow
win2.Release ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
