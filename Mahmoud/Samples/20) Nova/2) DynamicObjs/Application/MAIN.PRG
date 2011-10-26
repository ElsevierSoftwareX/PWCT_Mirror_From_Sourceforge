*---------------------------------------------------------------------------*
* Time : 12:12:50    Date : 10/22/2011
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Create 10 buttons using a For Loop" ;
MAIN ;
BACKCOLOR {236,233,216} 

FOR x = 1 TO 10 STEP 1
contname := "btn"
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
contname := contname + x2
@ x*30 ,180 BUTTONEX &contname;
CAPTION x2;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
Next
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Create 10 buttons using a For Loop'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","contname = 'btn'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","contname = contname + x2",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( &contname ) , Caption : x2",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",24,26)
Return
*-------------------------------------------------------------------*
