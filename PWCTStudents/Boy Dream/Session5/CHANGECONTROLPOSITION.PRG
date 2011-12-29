*---------------------------------------------------------------------------*
* Time : 22:09:44    Date : 12/28/2011
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


Resistance R_CHANGECONTROLPOSITION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHANGECONTROLPOSITION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 206 ;
HEIGHT 228 ;
ICON "PWCTICON" ;
TITLE "Change Control Position" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 109 ,38 BUTTONEX btn1;
CAPTION "Click here";
ON GOTFOCUS Hidebtn1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 10 ,32 BUTTONEX btn2;
CAPTION "Click here";
ON GOTFOCUS Hidebtn2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win1.btn1.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc Hidebtn1
win1.btn1.Hide ( )
win1.btn2.Show ( )
Return Nil
Proc Hidebtn2
win1.btn2.Hide ( )
win1.btn1.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_CHANGECONTROLPOSITION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Change Control Position'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Click here'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action Hidebtn1",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Click here'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action Hidebtn2",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Hidebtn1",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Hidebtn2",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
Return
*-------------------------------------------------------------------*
