*---------------------------------------------------------------------------*
* Time : 05:03:48    Date : 10/21/2011
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


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 0 ,0 ;
WIDTH 500 ;
HEIGHT 400 ;
TITLE "Ole Test" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "Test";
ON CLICK testole()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Times New Roman" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc TESTOLE
oWord := TOLEAUTO():NEW( "Word.Application" )
oWord:visible := True
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Ole Test'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Test'",10,11)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action testole()",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",13,15)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure TESTOLE",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oWord of Type 'Word.Application'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","oWord.visible := True",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",24,24)
Return
*-------------------------------------------------------------------*
