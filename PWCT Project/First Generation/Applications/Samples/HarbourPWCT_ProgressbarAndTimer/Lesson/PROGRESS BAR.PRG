*---------------------------------------------------------------------------*
* Time : 06:36:09    Date : 10/22/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_PROGRESS_BAR_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROGRESS_BAR_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 271 ;
HEIGHT 314 ;
ICON "PWCTICON" ;
TITLE "Progress bar by Sameh Kamel" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

win1.Center ( )
@ 5 ,7 LABEL lbl1 ;
VALUE "Progress Bar" ;
WIDTH 244 ;
HEIGHT 59 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 65 ,9 PROGRESSBAR Progress1;
RANGE 0 , 50 ;
VALUE 0 ;
WIDTH 203 ;
HEIGHT 24 ;
BACKCOLOR {255,255,255} ;
FORECOLOR {0,0,0} ;
TOOLTIP ""
@ 65 ,228 PROGRESSBAR Progress2;
RANGE 0 , 50 ;
VALUE 0 ;
WIDTH 25 ;
HEIGHT 203 ;
VERTICAL ;
SMOOTH ;
BACKCOLOR {255,255,255} ;
FORECOLOR {0,0,0} ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 50 ;
Action Loading()
@ 238 ,9 BUTTONEX btn1;
CAPTION "Return";
ON CLICK Restart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Loading
PV := win1.Progress1.Value
PV2 := win1.Progress2.Value
IF PV=50
win1.Timer1.Value := False
ELSE
win1.Progress1.Value := PV+1
win1.Progress2.Value := PV2+1
ENDIF
Return Nil
Proc Restart
win1.Progress1.Value := 0
win1.Progress2.Value := 0
win1.Timer1.Enabled := True


End Of Resistance

INIT PROCEDURE Init_PROGRESS_BAR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Progress bar by Sameh Kamel'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Progress Bar'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ProgressBar (Progress1)",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ProgressBar (Progress2)",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",32,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Return'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Restart",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Loading",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","PV = win1.Progress1.Value",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","PV2 = win1.Progress2.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( PV=50 )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Value := False",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Progress1.Value := PV+1",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Progress2.Value := PV2+1",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Restart",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Progress1.Value := 0",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Progress2.Value := 0",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Enabled := True",67,67)
Return
*-------------------------------------------------------------------*
