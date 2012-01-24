*---------------------------------------------------------------------------*
* Time : 19:45:22    Date : 01/20/2012
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


Resistance R_TEST5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Where am I?" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 73 ,101 BUTTONEX btn1;
CAPTION "I'm here";
ON CLICK Hide1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 256 ,254 BUTTONEX btn2;
CAPTION "No, I'm here";
ON CLICK hide2()  ;
WIDTH 104 HEIGHT 31 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

win1.btn2.Hide ( )
ACTIVATE WINDOW win1
EndIF

procedure Hide1()
win1.btn1.Hide ( )
win1.btn2.Show ( )
return
procedure hide2()
win1.btn2.Hide ( )
win1.btn1.Show ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Where am I?'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'I'm here'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Hide1",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'No, I'm here'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hide2",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Hide1 ( Event : CLICK )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2 ( Event : CLICK )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
Return
*-------------------------------------------------------------------*
