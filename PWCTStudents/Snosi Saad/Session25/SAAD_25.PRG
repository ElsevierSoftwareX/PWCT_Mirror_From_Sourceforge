*---------------------------------------------------------------------------*
* Time : 11:48:47    Date : 06/20/2011
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


Resistance R_SAAD_25_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_25_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {71,171,224} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "„—Õ»«" Action callwelcome()
MENUITEM "≈€·«ﬁ" Action closesystem()
END POPUP
END MENU
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc callwelcome
myob = winwelcome()
myout = myob:showwindow()
Return Nil
Proc closesystem
win1.Release ( )
Return Nil
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

INIT PROCEDURE Init_SAAD_25
START DOUBLES
Return
*-------------------------------------------------------------------*
