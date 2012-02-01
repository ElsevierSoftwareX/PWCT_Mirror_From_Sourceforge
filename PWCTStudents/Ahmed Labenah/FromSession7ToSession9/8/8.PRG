*---------------------------------------------------------------------------*
* Time : 14:44:33    Date : 01/10/2012
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
#include "xhb.ch"
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


Resistance R_8_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_8_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 298 ;
HEIGHT 212 ;
ICON "PWCTICON" ;
TITLE "Manual Counter Program" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 27 ,218 LABEL lbl1 ;
VALUE "0" ;
WIDTH 35 ;
HEIGHT 48 ;
AUTOSIZE ;
FONT "Agency FB" SIZE 26  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,255}
@ 19 ,24 BUTTONEX btn1;
CAPTION "Count UP";
ON CLICK CU()  ;
WIDTH 120 HEIGHT 33 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
@ 56 ,24 BUTTONEX btn2;
CAPTION "Count Down";
ON CLICK CD()  ;
WIDTH 120 HEIGHT 33 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
@ 130 ,202 BUTTONEX btn3;
CAPTION "Exit";
ON CLICK Close()  ;
WIDTH 53 HEIGHT 31 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure CU()
CU := win1.lbl1.Value
CU = VAL ( CU )
CU := CU+1
CU = STR ( CU )
CU = ALLTRIM ( CU )
win1.lbl1.Value := CU
return
procedure CD()
CD := win1.lbl1.Value
CD = VAL ( CD )
CD := CD-1
CD = STR ( CD )
CD = ALLTRIM ( CD )
win1.lbl1.Value := CD
return
procedure Close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Manual Counter Program'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Count UP'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CU",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Count Down'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CD",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Exit'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CU ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","CU = win1.lbl1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","CU = CONVERT CU TO Numeric",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","CU = CU+1",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","CU = CONVERT CU TO STRING",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","CU = All Trim CU",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := CU",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CD ( Event : CLICK )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","CD = win1.lbl1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","CD = CONVERT CD TO Numeric",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","CD = CD-1",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","CD = CONVERT CD TO STRING",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","CD = All Trim CD",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := CD",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*
