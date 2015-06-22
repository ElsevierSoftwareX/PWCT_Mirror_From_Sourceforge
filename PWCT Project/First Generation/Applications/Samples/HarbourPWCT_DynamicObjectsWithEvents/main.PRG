*---------------------------------------------------------------------------*
* Time : 12:54:26    Date : 06/22/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.06.20
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
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
cProc := "pButton("+alltrim(str(x))+")"
@ x*30 ,180 BUTTONEX &contname;
CAPTION x2;
ON CLICK &cProc  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
Next
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc pButton( x )
MyOut := MSGBOX(x,"Button Number ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Create 10 buttons using a For Loop'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","contname = 'btn'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","contname = contname + x2",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","cProc = 'pButton('+alltrim(str(x))+')'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( &contname ) , Caption : x2",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action &cProc",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pButton( x )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message x Title 'Button Number ' Type: Message Box",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",31,31)
Return
*-------------------------------------------------------------------*
