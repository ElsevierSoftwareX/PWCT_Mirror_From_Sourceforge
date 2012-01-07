*---------------------------------------------------------------------------*
* Time : 21:07:00    Date : 01/07/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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


Resistance R_SEIF_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEIF_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Trick" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 58 ,174 BUTTONEX btn1;
CAPTION "press here";
ON CLICK hide1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 207 ,167 BUTTONEX btn2;
CAPTION "no here";
ON CLICK hide2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win1.btn2.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc hide1
win1.btn1.Hide ( )
win1.btn2.Show ( )
Return Nil
Proc hide2
win1.btn2.Hide ( )
win1.btn1.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SEIF
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Trick'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'press here'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hide1",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'no here'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hide2",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
Return
*-------------------------------------------------------------------*
