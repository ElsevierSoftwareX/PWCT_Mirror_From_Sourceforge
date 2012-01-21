*---------------------------------------------------------------------------*
* Time : 16:18:53    Date : 01/20/2012
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


Resistance R_CHANGE_POSITION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHANGE_POSITION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 435 ;
HEIGHT 325 ;
ICON "PWCTICON" ;
TITLE "My Location" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 20 ,21 BUTTONEX btn1;
CAPTION "I am here";
FONTCOLOR {255,0,0};
ON GOTFOCUS hide1()  ;
WIDTH 172 HEIGHT 35 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 194 ,219 BUTTONEX btn2;
CAPTION "No, here";
FONTCOLOR {0,128,0};
ON GOTFOCUS hide2()  ;
WIDTH 165 HEIGHT 39 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 253 ,267 LABEL lbl1 ;
VALUE "Muhammad A. Rahman" ;
WIDTH 143 ;
HEIGHT 25 ;
FONT "Brush Script MT" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
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

INIT PROCEDURE Init_CHANGE_POSITION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'My Location'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'I am here'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide1()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'No, here'",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide2()",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Muhammad A. Rahman'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",48,48)
Return
*-------------------------------------------------------------------*
