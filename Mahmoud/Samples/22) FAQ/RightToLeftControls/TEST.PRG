*---------------------------------------------------------------------------*
* Time : 19:12:46    Date : 09/23/2010
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


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·”·«„ ⁄·Ìﬂ„" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 44 ,64 COMBOBOX combo1;
WIDTH 380 ;
HEIGHT 100;
ITEMS {"Ê«Õœ","«À‰Ì‰","À·«À…"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 78 ,64 LISTBOX list1;
WIDTH 380 ;
HEIGHT 200 ;
ITEMS {"Ê«Õœ","«À‰Ì‰","À·«À…"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DO RightToLeftControl WITH "win1","list1"
DO RightToLeftControl WITH "win1","combo1"
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
