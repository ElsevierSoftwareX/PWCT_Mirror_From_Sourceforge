*---------------------------------------------------------------------------*
* Time : 14:41:01    Date : 12/27/2011
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


Resistance R_HALLOWORLD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HALLOWORLD_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 340 ;
HEIGHT 291 ;
ICON "PWCTICON" ;
TITLE "Hallo World" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,192} 

@ 63 ,79 LABEL lbl1 ;
VALUE "Hallo World" ;
WIDTH 158 ;
HEIGHT 37 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {128,64,64} ;
FONTCOLOR {255,255,255}
@ 158 ,107 BUTTONEX btn1;
CAPTION "Close";
ON CLICK Myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HALLOWORLD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hallo World'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Hallo World'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myclose()",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclose",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",35,35)
Return
*-------------------------------------------------------------------*
