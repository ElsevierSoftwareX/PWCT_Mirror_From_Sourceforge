*---------------------------------------------------------------------------*
* Time : 11:15:42    Date : 06/21/2011
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

Resistance R_SUB_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUB_15speed1() code
Class winwelcome
Method showwindow
Method closewindow
Method sayhello
EndClass
Method showwindow Class winwelcome
if !iswindowdefined( winwelcome )
DEFINE WINDOW winwelcome ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 276 ;
ICON "PWCTICON" ;
TITLE "„—Õ»«" ;
CHILD ;
BACKCOLOR {85,148,210} 

@ 76 ,347 LABEL lbl1 ;
VALUE "«·≈”„" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
BORDER ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 141 ,268 BUTTONEX btn1;
CAPTION "„Ê«›ﬁ";
ON CLICK self:sayhello()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 141 ,138 BUTTONEX btn2;
CAPTION "≈€·«ﬁ";
ON CLICK self:closewindow()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 76 ,138 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

END WINDOW

winwelcome.Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Winwelcome"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Winwelcome"), -20),0x400000,0x100000))
ACTIVATE WINDOW winwelcome
EndIF

Return 0
Method closewindow Class winwelcome
winwelcome.Release ( )
Return 0
Method sayhello Class winwelcome
myname := winwelcome.text1.Value
MyOut := MSGBOX("√Â·« Ê”Â·«" + " " + myname,"„—Õ»«")
Return 0


End Of Resistance

*-------------------------------------------------------------------*
