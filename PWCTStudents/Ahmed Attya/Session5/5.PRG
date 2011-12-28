*---------------------------------------------------------------------------*
* Time : 12:58:28    Date : 12/28/2011
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


Resistance R_5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 382 ;
HEIGHT 392 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·Œ«„”" ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 11 ,107 BUTTONEX btn1;
CAPTION "√‰« Â‰‹‹‹‹‹«";
FONTCOLOR {255,0,0};
ON GOTFOCUS hide1()  ;
WIDTH 131 HEIGHT 41 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 288 ,45 BUTTONEX btn2;
CAPTION "·√ Ê÷Õﬂ  ⁄·Ìﬂ ..«‰« Â‰«";
FONTCOLOR {0,0,255};
ON GOTFOCUS hide2()  ;
WIDTH 268 HEIGHT 44 ;
FONT "Arial" SIZE 20 ;
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

INIT PROCEDURE Init_5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·Œ«„”'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '√‰« Â‰‹‹‹‹‹«'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide1()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '·√ Ê÷Õﬂ  ⁄·Ìﬂ ..«‰« Â‰«'",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide2()",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*
