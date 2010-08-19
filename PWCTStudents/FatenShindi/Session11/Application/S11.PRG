*---------------------------------------------------------------------------*
* Time : 07:11:50    Date : 08/10/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_S11_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_S11_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 724 ;
HEIGHT 488 ;
ICON "PWCTICON" ;
TITLE "ÇáÚÏÇÏ ÇáíÏæì   ÝÇÊä" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ -25 ,-22 IMAGE image1;
PICTURE "111.JPG";
STRETCH ;
WIDTH 754 HEIGHT 498
@ 224 ,187 LABEL lbl1 ;
VALUE "ÏÑÓ Çáíæã" ;
WIDTH 83 ;
HEIGHT 135 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,0}
@ 186 ,503 BUTTONEX btn1;
CAPTION "ÚÏ";
FONTCOLOR {255,55,55};
ON CLICK mycount()  ;
WIDTH 79 HEIGHT 27 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 281 ,201 LABEL lbl2 ;
VALUE "ÇáÇÑÞÇã" ;
WIDTH 57 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,0}
@ 398 ,413 LABEL lbl3 ;
VALUE "0" ;
WIDTH 82 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,215,174} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc mycount
mycount := win1.lbl3.Value
mycount = VAL ( mycount )
mycount := mycount+1
mycount = STR ( mycount )
mycount = ALLTRIM ( mycount )
win1.lbl3.Value := mycount
Return Nil


End Of Resistance

INIT PROCEDURE Init_S11
START DOUBLES
Return
*-------------------------------------------------------------------*
