*---------------------------------------------------------------------------*
* Time : 21:11:24    Date : 01/03/2012
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
Class WinWelcome
Method ShowWin
Method CloseWin
Method SayHello
EndClass
Method ShowWin Class WinWelcome
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 447 ;
HEIGHT 153 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {239,239,239} ;
HELPBUTTON 

@ 10 ,37 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 8 ,97 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 311 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 59 ,163 BUTTONEX btn1;
CAPTION "Say Hello";
ON CLICK self:SayHello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 59 ,269 BUTTONEX btn2;
CAPTION "Close";
ON CLICK self:CloseWin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win2.Center ( )
ACTIVATE WINDOW win2
EndIF

Return 0
Method CloseWin Class WinWelcome
win2.Release ( )
Return 0
Method SayHello Class WinWelcome
Name := win2.text1.Value
MyOut := MSGBOX("Hello" + " " +Name,"Welcome")
Return 0


End Of Resistance

*-------------------------------------------------------------------*
