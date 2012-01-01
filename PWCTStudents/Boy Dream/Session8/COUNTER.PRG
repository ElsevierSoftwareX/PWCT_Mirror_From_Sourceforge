*---------------------------------------------------------------------------*
* Time : 03:40:04    Date : 12/29/2011
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


Resistance R_COUNTER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 227 ;
HEIGHT 213 ;
ICON "PWCTICON" ;
TITLE "Counter" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 131 ,17 BUTTONEX btn1;
CAPTION "Counter";
ON CLICK Count()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 22 ,4 LABEL lbl1 ;
VALUE "0" ;
WIDTH 192 ;
HEIGHT 67 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 139 ,153 BUTTONEX btn2;
CAPTION "Close";
ON CLICK Close()  ;
WIDTH 58 HEIGHT 24 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Count
num := win1.lbl1.Value
num = VAL ( num )
num := num+1
num = STR ( num )
win1.lbl1.Value := num
Return Nil
Proc Close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Counter'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Count",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Count",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl1.Value",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","num = num+1",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := num",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",47,47)
Return
*-------------------------------------------------------------------*
