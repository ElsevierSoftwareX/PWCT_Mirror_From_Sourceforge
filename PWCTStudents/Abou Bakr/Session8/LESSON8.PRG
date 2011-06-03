*---------------------------------------------------------------------------*
* Time : 11:53:20    Date : 05/23/2011
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


Resistance R_LESSON8_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON8_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 262 ;
HEIGHT 256 ;
ICON "PWCTICON" ;
TITLE "⁄œ«œ ÌœÊÌ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {54,131,68} ;
FONT "Times New Roman" SIZE 12 

@ 26 ,29 LABEL lbl1 ;
VALUE "0" ;
WIDTH 74 ;
HEIGHT 57 ;
FONT "Arial" SIZE 35  ;
BOLD ;
BACKCOLOR {54,131,68} ;
FONTCOLOR {255,255,255}
@ 38 ,137 BUTTONEX AddBtn;
CAPTION "⁄ı‹‹‹‹‹‹‹‹‹œ¯Û";
FONTCOLOR {64,0,64};
ON CLICK MyAdd()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 164 ,136 BUTTONEX CloseBtn;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,0};
ON CLICK MyClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc MyClose
win1.Release ( )
Return Nil
Proc MyAdd
Count := win1.lbl1.Value
CountMohawal1 = VAL ( Count )
Count2 := CountMohawal1+1
CountMohawal2 = STR ( Count2 )
CountMohawal3 = ALLTRIM ( CountMohawal2 )
win1.lbl1.value := CountMohawal3
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON8
START DOUBLES
Return
*-------------------------------------------------------------------*
