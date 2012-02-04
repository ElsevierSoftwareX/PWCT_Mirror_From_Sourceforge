*---------------------------------------------------------------------------*
* Time : 19:56:38    Date : 02/03/2012
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
Function SUP
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

Resistance R_SUP_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUP_18smart1() code
Class windowwelcome
Method showwindow
Method closewindow
Method sayhello
EndClass
Method showwindow Class windowwelcome
if !iswindowdefined( winwelcome )
DEFINE WINDOW winwelcome ;
AT 10 ,10 ;
WIDTH 302 ;
HEIGHT 207 ;
ICON "PWCTICON" ;
TITLE "Welcome  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,128} 

@ 29 ,9 LABEL lbl1 ;
VALUE "Name : " ;
WIDTH 56 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 27 ,77 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} 

@ 107 ,42 BUTTONEX btn1;
CAPTION "Show Hello ";
ON CLICK self:sayhello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 106 ,149 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

winwelcome.Center ( )
ACTIVATE WINDOW winwelcome
EndIF

Return 0
Method closewindow Class windowwelcome
winwelcome.Release ( )
Return 0
Method sayhello Class windowwelcome
myname := winwelcome.text1.Value
MyOut := MSGBOX("Hello "+myname,"Wlcome ")
Return 0


End Of Resistance

*-------------------------------------------------------------------*
