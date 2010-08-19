*---------------------------------------------------------------------------*
* Time : 22:59:23    Date : 07/31/2010
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


Resistance R_S5_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_S5_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 524 ;
HEIGHT 427 ;
ICON "PWCTICON" ;
TITLE "›« ‰" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ -8 ,-9 IMAGE image1;
PICTURE "F.JPG";
STRETCH ;
WIDTH 521 HEIGHT 379
@ 282 ,100 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 35 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 277 ,1 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 91 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 312 ,33 BUTTONEX btn1;
CAPTION "«·«‘ —«ﬂ";
FONTCOLOR {0,128,64};
ON CLICK MYHELLO()  ;
WIDTH 97 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "ŒÌ«—« "
MENUITEM "Œ—ÊÃ" Action MYEXIT()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc MYEXIT
WIN1.Release ( )
Return Nil
Proc MYHELLO
MYTEXT := WIN1.TEXT1.Value
MYTEXT = ALLTRIM ( MYTEXT )
MYTEXT := "«Â·«Ê”Â·«"+MYTEXT
MyOut := MSGBOX(MYText,"«· —ÕÌ»")
Return Nil


End Of Resistance

INIT PROCEDURE Init_S5
START DOUBLES
Return
*-------------------------------------------------------------------*
