*---------------------------------------------------------------------------*
* Time : 06:36:40    Date : 05/22/2011
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


Resistance R_LESSON5_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON5_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "„›«Ã√…" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 9 ,7 BUTTONEX btn1;
CAPTION "«‰ﬁ— Â‰«";
ON CLICK Hide1()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 321 ,328 BUTTONEX btn2;
CAPTION "»· Â‰«";
ON CLICK Hide2()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 321 ,9 BUTTONEX CloseBtn;
CAPTION "≈€·«ﬁ";
ON CLICK Close()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
win1.btn2.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc Close
win1.Release ( )
Return Nil
Proc Hide1
win1.btn1.Hide ( )
win1.btn2.Show ( )
Return Nil
Proc Hide2
win1.btn2.Hide ( )
win1.btn1.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON5
START DOUBLES
Return
*-------------------------------------------------------------------*
