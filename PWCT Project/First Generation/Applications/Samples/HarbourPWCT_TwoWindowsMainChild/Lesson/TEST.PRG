*---------------------------------------------------------------------------*
* Time : 05:55:36    Date : 10/22/2011
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
mywin2 := false
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 350 ;
HEIGHT 235 ;
ICON "PWCTICON" ;
TITLE "Main Window" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 78 ,81 BUTTONEX btn1;
CAPTION "Call Sub Window";
ON CLICK myform()  ;
WIDTH 178 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myform
IF mywin2 = false
mywin2 := true
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 50 ,50 ;
WIDTH 500 ;
HEIGHT 216 ;
ICON "PWCTICON" ;
TITLE "Sub Window (CHILD - not MODAL)" ;
CHILD ;
BACKCOLOR {255,255,255} 

@ 73 ,195 BUTTONEX btn1;
CAPTION "Close";
ON CLICK closewin2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ELSE
MyOut := MSGBOX("The window is already opened","Sorry")
win2.SetFocus ( )
ENDIF
Return Nil
Proc closewin2
mywin2 := false
win2.Release ( )


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","mywin2 = false",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main Window'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Call Sub Window'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myform",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myform",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mywin2 = false )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","mywin2 = true",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Sub Window (CHILD - not MODAL)'",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewin2",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'The window is already opened' Title 'Sorry' Type: Message Box",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win2.SetFocus ( )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin2",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","mywin2 = false",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",54,54)
Return
*-------------------------------------------------------------------*
