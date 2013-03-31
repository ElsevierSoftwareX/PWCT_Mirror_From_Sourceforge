*---------------------------------------------------------------------------*
* Time : 12:35:11    Date : 10/26/2011
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


Resistance R_HELLOGUI_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLOGUI_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Hello Lily sample by Stephen France" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "Be my Valentine.  Click me, dearest.";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK Really()  ;
WIDTH 220 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 60 ,10 BUTTONEX btn2;
CAPTION "";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK Hurrah()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 110 ,10 BUTTONEX btn3;
CAPTION "";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK Goodbye()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Really
win1.btn2.Caption := "Really?!.."
Return Nil
Proc Hurrah
x := 1
DO WHILE  x=1
win1.btn3.Caption := "Hurrah!!!"
SLEEPTIME  1
win1.btn3.Caption := ""
SLEEPTIME  1
ENDDO
Return Nil
Proc Goodbye
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HELLOGUI
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello Lily sample by Stephen France'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Be my Valentine.  Click me, dearest.'",11,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Really",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ''",19,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Hurrah",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ''",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Goodbye",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Really",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Caption := 'Really?!..'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Hurrah",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","x = 1",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( x=1 )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Caption := 'Hurrah!!!'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","SLEEP TIME 1",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Caption := ''",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","SLEEP TIME 1",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Goodbye",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
Return
*-------------------------------------------------------------------*
