*---------------------------------------------------------------------------*
* Time : 11:32:12    Date : 12/16/2001
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 438 ;
HEIGHT 376 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 9 ,15 LABEL lbl1 ;
VALUE "Hellow Worled" ;
WIDTH 314 ;
HEIGHT 63 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {128,0,255} ;
FONTCOLOR {0,255,0}
@ 270 ,308 BUTTONEX btn1;
CAPTION "Close";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 161 ,192 CHECKBOX check1;
CAPTION "Text Here";
ON GOTFOCUS Ok()  ;
WIDTH 100;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return
procedure Ok()
win1.Backcolor := {255,0,128}
win1.Minimize ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Hellow Worled'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check1 ) , Caption : 'Text Here'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action Ok",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Ok - Event : GOTFOCUS",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Backcolor := {255,0,128}",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
Return
*-------------------------------------------------------------------*
