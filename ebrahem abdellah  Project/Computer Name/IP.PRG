*---------------------------------------------------------------------------*
* Time : 14:41:19    Date : 12/22/2010
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


Resistance R_IP_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_IP_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 256 ;
HEIGHT 221 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 26 ,9 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 226 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 61 ,9 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 226 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 101 ,10 BUTTONEX btn1;
CAPTION "Computer Name";
ON CLICK computer()  ;
WIDTH 225 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 145 ,8 BUTTONEX btn2;
CAPTION "user Name";
ON CLICK computer1()  ;
WIDTH 227 HEIGHT 32 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc computer
ComputerName := GetComputerName()
win1.text1.Value := computername
Return Nil
Proc computer1
UserName := GetUserName()
win1.text2.Value := username
Return Nil


End Of Resistance

INIT PROCEDURE Init_IP
START DOUBLES
Return
*-------------------------------------------------------------------*
