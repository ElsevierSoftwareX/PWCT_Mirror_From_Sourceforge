*---------------------------------------------------------------------------*
* Time : 21:04:59    Date : 12/28/2011
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


Resistance R_CHANGECONTROLPROPERTY_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHANGECONTROLPROPERTY_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 445 ;
HEIGHT 234 ;
ICON "PWCTICON" ;
TITLE "Change Control Property" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 133 ,58 BUTTONEX btn1;
CAPTION "Answer";
ON CLICK ShowAnswer()  ;
WIDTH 248 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 40 ,17 LABEL lbl1 ;
VALUE "Who am i ?" ;
WIDTH 158 ;
HEIGHT 43 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 44 ,178 LABEL lbl2 ;
VALUE "" ;
WIDTH 248 ;
HEIGHT 31 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc ShowAnswer
win1.lbl2.Value := "Mahmoud Hassan"
Return Nil


End Of Resistance

INIT PROCEDURE Init_CHANGECONTROLPROPERTY
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Change Control Property'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Answer'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ShowAnswer",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Who am i ?'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowAnswer",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := 'Mahmoud Hassan'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
Return
*-------------------------------------------------------------------*
