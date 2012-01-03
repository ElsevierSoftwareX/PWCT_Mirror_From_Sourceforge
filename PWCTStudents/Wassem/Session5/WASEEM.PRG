*---------------------------------------------------------------------------*
* Time : 23:56:36    Date : 01/03/2012
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


Resistance R_WASEEM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WASEEM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 567 ;
HEIGHT 212 ;
ICON "PWCTICON" ;
TITLE "Majed`s  game" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 13 ,193 LABEL lbl1 ;
VALUE "Can you catch me?" ;
WIDTH 186 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {0,255,0}
@ 51 ,76 BUTTONEX btn1;
CAPTION "Can you?";
BACKCOLOR {0,0,160};
ON CLICK pro2()  ;
TOOLTIP ""
@ 46 ,327 BUTTONEX btn2;
CAPTION "Oh! you can't !";
ON CLICK pro1()  ;
WIDTH 141 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 106 ,46 BUTTONEX btn3;
CAPTION "I am so nervous from this game!...Close it now";
ON CLICK close()  ;
WIDTH 434 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc pro1
win1.btn1.Show ( )
win1.btn2.Hide ( )
Return Nil
Proc pro2
win1.btn1.Hide ( )
win1.btn2.Show ( )
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Majed`s  game'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Can you catch me?'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Can you?'",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pro2()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Oh! you can't !'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pro1()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'I am so nervous from this game!...Close it now'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pro1",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pro2",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
Return
*-------------------------------------------------------------------*
