*---------------------------------------------------------------------------*
* Time : 09:15:48    Date : 06/09/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.06.04
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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
* Get parameters from command line
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 231 ;
HEIGHT 267 ;
ON INIT pWork()  ;
ICON "PWCTICON" ;
TITLE "Math Functions  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
win1.Center ( )
@ 10 ,10 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pWork()
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Math Functions "
else
Win1.Edit1.VALUE := "Math Functions "
endif
n1 = DTOR ( 90 )
n1 = Sin ( n1 )
n1 = STR ( n1 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Sin(90) = " + n1
else
Win1.Edit1.VALUE := "Sin(90) = " + n1
endif
n1 = DTOR ( 0 )
n1 = Sin ( n1 )
n1 = STR ( n1 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Sin(0) = " + n1
else
Win1.Edit1.VALUE := "Sin(0) = " + n1
endif
n1 = DTOR ( 90 )
n1 = Cos ( n1 )
n1 = STR ( n1 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Cos(90) = " + n1
else
Win1.Edit1.VALUE := "Cos(90) = " + n1
endif
n1 = DTOR ( 0 )
n1 = Cos ( n1 )
n1 = STR ( n1 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Cos(0) = " + n1
else
Win1.Edit1.VALUE := "Cos(0) = " + n1
endif
return

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Math Functions  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pWork",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork - Event : INIT",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Math Functions ') to Editbox (Edit1) of Window (Win1)",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = Call Function DTOR ( 90 )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = Call Function Sin ( n1 )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = CONVERT n1 TO STRING",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Sin(90) = ' + n1) to Editbox (Edit1) of Window (Win1)",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = Call Function DTOR ( 0 )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = Call Function Sin ( n1 )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = CONVERT n1 TO STRING",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Sin(0) = ' + n1) to Editbox (Edit1) of Window (Win1)",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = Call Function DTOR ( 90 )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = Call Function Cos ( n1 )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = CONVERT n1 TO STRING",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Cos(90) = ' + n1) to Editbox (Edit1) of Window (Win1)",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = Call Function DTOR ( 0 )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = Call Function Cos ( n1 )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","n1 = CONVERT n1 TO STRING",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Cos(0) = ' + n1) to Editbox (Edit1) of Window (Win1)",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
