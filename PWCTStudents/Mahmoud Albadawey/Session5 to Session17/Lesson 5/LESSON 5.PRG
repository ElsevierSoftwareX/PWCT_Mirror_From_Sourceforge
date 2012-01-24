*---------------------------------------------------------------------------*
* Time : 16:24:25    Date : 01/11/2012
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


Resistance R_LESSON_5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON_5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 340 ;
HEIGHT 271 ;
ICON "PWCTICON" ;
TITLE "Lesson 5" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 77 ,115 BUTTONEX btn1;
CAPTION "Button 1";
ON CLICK hide1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 123 ,115 BUTTONEX btn2;
CAPTION "Button 2";
ON CLICK hide2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
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

INIT PROCEDURE Init_LESSON_5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 5'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Button 1'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hide1",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Button 2'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hide2",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
Return
*-------------------------------------------------------------------*
