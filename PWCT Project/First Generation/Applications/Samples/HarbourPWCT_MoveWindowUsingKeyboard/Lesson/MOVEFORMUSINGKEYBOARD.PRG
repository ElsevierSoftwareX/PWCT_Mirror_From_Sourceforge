*---------------------------------------------------------------------------*
* Time : 01:38:55    Date : 10/24/2011
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
DO EditboxBottom
Return Nil
Proc k_down
win1.Row := (win1.row) + 10
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Down "
else
Win1.Edit1.VALUE := " Down "
endif
DO EditboxBottom
Return Nil
Proc k_right
win1.Col := (win1.col) + 10
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Right "
else
Win1.Edit1.VALUE := " Right "
endif
DO EditboxBottom
Return Nil
Proc k_left
win1.Col := (win1.col) - 10
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Left "
else
Win1.Edit1.VALUE := " Left "
endif
DO EditboxBottom
Return Nil
Proc EditboxBottom
myhandle = GetControlHandle ( "edit1","win1" )
myout = SendMessage ( myhandle,277,7,0 )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MOVEFORMUSINGKEYBOARD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'You can move the window using the keyboard'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_RIGHT Mode 0 Call Procedure/Function k_Right()",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_UP Mode 0 Call Procedure/Function k_up()",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_LEFT Mode 0 Call Procedure/Function k_left()",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_DOWN Mode 0 Call Procedure/Function k_down()",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure k_up",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Row := (win1.row) - 10",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Up ') to Editbox (Edit1) of Window (Win1)",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure EditboxBottom",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure k_down",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Row := (win1.row) + 10",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Down ') to Editbox (Edit1) of Window (Win1)",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure EditboxBottom",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure k_right",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Col := (win1.col) + 10",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Right ') to Editbox (Edit1) of Window (Win1)",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure EditboxBottom",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure k_left",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Col := (win1.col) - 10",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Left ') to Editbox (Edit1) of Window (Win1)",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure EditboxBottom",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure EditboxBottom",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( 'edit1','win1' )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call Function SendMessage ( myhandle,277,7,0 )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
