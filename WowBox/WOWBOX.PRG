*---------------------------------------------------------------------------*
* Time : 20:07:12    Date : 02/23/2011
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


Resistance R_WOWBOX_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WOWBOX_15speed1() code
DesktopWidth = GETDESKTOPWIDTH()
DesktopHeight = GETDESKTOPHEIGHT()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 293 ;
HEIGHT 280 ;
ON INIT mystart()  ;
ICON "PWCTICON" ;
TITLE "WowBox " + myversion() ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {0,64,64} 

@ 217 ,7 TEXTBOX text1;
ON CHANGE mywork()  ;
HEIGHT 30 ;
WIDTH 230 ;
BACKCOLOR {210,210,210} ;
FONTCOLOR {0,0,0} 

@ 218 ,239 BUTTONEX btnClose;
CAPTION "X";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK myclose()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 0 ,0 EDITBOX edit1;
WIDTH 287 ;
HEIGHT 214;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
NOVSCROLL ;
NOHSCROLL ;
FONTCOLOR {0,0,0}
END WINDOW

win1.Row := desktopheight - 350
win1.Col := desktopwidth - 300
ACTIVATE WINDOW win1
EndIF

Proc MYCLOSE
win1.Release ( )
Return Nil
Proc mywork
Return Nil
Proc mystart
win1.edit1.Value := ""
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Hello "
else
Win1.Edit1.VALUE := " Hello "
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Welcome to WowBox " + myversion()
else
Win1.Edit1.VALUE := " Welcome to WowBox " + myversion()
endif
set century on
mydate = DATE()
mydate = DTOC ( mydate )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Date : " + mydate
else
Win1.Edit1.VALUE := " Date : " + mydate
endif
mytime = TIME()
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Time : " + mytime
else
Win1.Edit1.VALUE := " Time : " + mytime
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "--------------------------------------------------------  "
else
Win1.Edit1.VALUE := "--------------------------------------------------------  "
endif
Return Nil
Proc myversion
Return "0.001"
Return Nil


End Of Resistance

INIT PROCEDURE Init_WOWBOX
START DOUBLES
Return
*-------------------------------------------------------------------*
