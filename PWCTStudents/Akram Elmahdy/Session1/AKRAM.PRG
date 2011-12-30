*---------------------------------------------------------------------------*
* Time : 13:00:38    Date : 12/29/2011
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


Resistance R_AKRAM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AKRAM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 473 ;
HEIGHT 360 ;
ICON "PWCTICON" ;
TITLE "‘ﬂ—« ›«Ìœ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE 

@ 70 ,115 LABEL lbl1 ;
VALUE "‘ﬂ—« ›«Ìœ" ;
WIDTH 195 ;
HEIGHT 45 ;
FONT "Courier New" SIZE 26  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,128,255}
@ 216 ,140 BUTTONEX btn1;
CAPTION "”·«„";
ON CLICK myclose()  ;
WIDTH 120 HEIGHT 55 ;
FONT "Traditional Arabic" SIZE 24 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_AKRAM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '‘ﬂ—« ›«Ìœ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '‘ﬂ—« ›«Ìœ'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '”·«„'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",32,32)
Return
*-------------------------------------------------------------------*
