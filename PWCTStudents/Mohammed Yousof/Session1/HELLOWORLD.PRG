*---------------------------------------------------------------------------*
* Time : 22:06:48    Date : 01/22/2012
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


Resistance R_HELLOWORLD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLOWORLD_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 484 ;
HEIGHT 311 ;
ICON "PWCTICON" ;
TITLE "Hello World  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 36 ,119 LABEL lbHello ;
VALUE "Hello World " ;
WIDTH 233 ;
HEIGHT 73 ;
FONT "Bookman Old Style" SIZE 28  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,128}
@ 162 ,173 BUTTONEX btClose;
CAPTION "Close ";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Book Antiqua" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HELLOWORLD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello World  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbHello ) , Caption : 'Hello World '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btClose ) , Caption : 'Close '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",34,34)
Return
*-------------------------------------------------------------------*
