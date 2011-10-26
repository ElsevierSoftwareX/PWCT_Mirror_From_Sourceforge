*---------------------------------------------------------------------------*
* Time : 18:40:29    Date : 10/24/2011
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
Function SUB
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

Resistance R_SUB_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUB_18smart1() code
Class windowwelcome
Method showwindow
Method closewindow
Method sayhello
EndClass
Method showwindow Class windowwelcome
if !iswindowdefined( winwelcome )
DEFINE WINDOW winwelcome ;
AT 10 ,10 ;
WIDTH 408 ;
HEIGHT 164 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
BACKCOLOR {132,242,179} 

@ 30 ,66 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {132,242,179} ;
FONTCOLOR {0,0,0}
@ 26 ,136 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 70 ,63 BUTTONEX btn1;
CAPTION "Say Hello";
ON CLICK self:sayhello()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 70 ,204 BUTTONEX btn2;
CAPTION "Close Window";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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
MyOut := MSGBOX("Hello " + myname,"Welcome")


End Of Resistance

*-------------------------------------------------------------------*
