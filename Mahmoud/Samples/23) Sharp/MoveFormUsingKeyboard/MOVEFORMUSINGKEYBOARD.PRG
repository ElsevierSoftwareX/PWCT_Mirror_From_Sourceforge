*---------------------------------------------------------------------------*
* Time : 20:38:27    Date : 08/23/2011
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


Resistance R_MOVEFORMUSINGKEYBOARD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MOVEFORMUSINGKEYBOARD_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "You can move the window using the keyboard" ;
MAIN ;
BACKCOLOR {236,233,216} 

_DefineHotKey ( "win1" , 0 , VK_RIGHT , {||k_Right()} )
_DefineHotKey ( "win1" , 0 , VK_UP , {||k_up()} )
_DefineHotKey ( "win1" , 0 , VK_LEFT , {||k_left()} )
_DefineHotKey ( "win1" , 0 , VK_DOWN , {||k_down()} )
@ 10 ,10 EDITBOX edit1;
WIDTH 463 ;
HEIGHT 325;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc k_up
win1.Row := (win1.row) - 10
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Up "
else
Win1.Edit1.VALUE := " Up "
endif
Return Nil
Proc k_down
win1.Row := (win1.row) + 10
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Down "
else
Win1.Edit1.VALUE := " Down "
endif
Return Nil
Proc k_right
win1.Col := (win1.col) + 10
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Right "
else
Win1.Edit1.VALUE := " Right "
endif
Return Nil
Proc k_left
win1.Col := (win1.col) - 10
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Left "
else
Win1.Edit1.VALUE := " Left "
endif
Return Nil


End Of Resistance

INIT PROCEDURE Init_MOVEFORMUSINGKEYBOARD
START DOUBLES
Return
*-------------------------------------------------------------------*
