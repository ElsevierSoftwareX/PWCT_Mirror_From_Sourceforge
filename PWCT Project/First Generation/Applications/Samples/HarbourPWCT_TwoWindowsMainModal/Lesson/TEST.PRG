*---------------------------------------------------------------------------*
* Time : 05:45:11    Date : 10/22/2011
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 350 ;
HEIGHT 235 ;
ICON "PWCTICON" ;
TITLE "Main Window" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 78 ,56 BUTTONEX btn1;
CAPTION "Show Another Window";
ON CLICK myform()  ;
WIDTH 228 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myform
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 50 ,50 ;
WIDTH 500 ;
HEIGHT 216 ;
ICON "PWCTICON" ;
TITLE "Sub Window" ;
MODAL ;
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

Return Nil
Proc closewin2
win2.Release ( )


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main Window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Another Window'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myform",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myform",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Sub Window'",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewin2",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin2",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",46,46)
Return
*-------------------------------------------------------------------*
