*---------------------------------------------------------------------------*
* Time : 11:04:42    Date : 01/15/2012
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
Function SUB
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

Resistance R_SUB_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUB_18smart1() code
Class windowwelcome
Method showwindow
Method closewindow
Method saywelcome
EndClass
Method showwindow Class windowwelcome
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 293 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 89 ,113 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 63 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 87 ,176 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 153 ,82 BUTTONEX btn1;
CAPTION "Say Welcome";
ON CLICK self:saywelcome()  ;
WIDTH 173 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 152 ,262 BUTTONEX btn2;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 141 HEIGHT 37 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

END STATUSBAR

END WINDOW

win2.Center ( )
ACTIVATE WINDOW win2
EndIF

Return 0
Method closewindow Class windowwelcome
win2.Release ( )
Return 0
Method saywelcome Class windowwelcome
myname := win2.text1.Value
myout := MSGBOX("WelCome" +" " +  myname,"Welcome")
Return 0


End Of Resistance

*-------------------------------------------------------------------*
