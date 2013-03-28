*---------------------------------------------------------------------------*
* Time : 05:51:42    Date : 10/23/2011
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


Resistance R_MOVEWINDOW_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MOVEWINDOW_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK moveactivewindow()  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

@ 0 ,40 LABEL lbl2 ;
VALUE "    Welcome " ;
ON CLICK moveactivewindow()  ;
WIDTH 420 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,64,64} ;
FONTCOLOR {0,255,128}
@ 181 ,124 LABEL lbl1 ;
VALUE "You can move the window" ;
ON CLICK moveactivewindow()  ;
WIDTH 252 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 0 ,461 BUTTONEX btn1;
CAPTION "X";
FONTCOLOR {0,255,128};
BACKCOLOR {64,0,64};
ON CLICK myclose()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
@ 0 ,1 BUTTONEX btn2;
CAPTION "-";
FONTCOLOR {0,255,128};
BACKCOLOR {64,0,64};
ON CLICK mymin()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MoveActiveWindow
DO postmessage WITH GetActiveWindow(), 161 , 2, 0
Return Nil
Proc myclose
win1.Release ( )
Return Nil
Proc mymin
win1.Minimize ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MOVEWINDOW
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action moveactivewindow()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '    Welcome '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action moveactivewindow()",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'You can move the window'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action moveactivewindow()",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'X'",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '-'",40,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymin()",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MoveActiveWindow",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure postmessage Parameters GetActiveWindow(), 161 , 2, 0",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymin",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*
