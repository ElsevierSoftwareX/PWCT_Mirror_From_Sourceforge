*---------------------------------------------------------------------------*
* Time : 01:48:32    Date : 10/31/2011
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
Class widowwelcome
Method showwindow
Method closewindow
Method sayhello
EndClass
Method showwindow Class widowwelcome
if !iswindowdefined( winwelcome )
DEFINE WINDOW winwelcome ;
AT 10 ,10 ;
WIDTH 325 ;
HEIGHT 229 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
BACKCOLOR {255,128,128} 

@ 59 ,24 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 103 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 58 ,92 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 124 ,182 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,128};
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 123 ,55 BUTTONEX btn2;
CAPTION "Say hello";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,128};
ON CLICK self:sayhello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

winwelcome.Center ( )
ACTIVATE WINDOW winwelcome
EndIF

Return 0
Method closewindow Class widowwelcome
winwelcome.Release ( )
Return 0
Method sayhello Class widowwelcome
myname := winwelcome.text1.Value
MyOut := MSGBOX("hello  " + myname,"helloooooo")
Return 0


End Of Resistance

*-------------------------------------------------------------------*
