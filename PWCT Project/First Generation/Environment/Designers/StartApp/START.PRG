*---------------------------------------------------------------------------*
* Time : 07:49:30    Date : 03/28/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.9 (Art) [2006-2013]  
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * Get parameters from command line Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
		Main Circuit    Main                          
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
procedure myclose()
win1.Release ( )
return
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 434 ;
HEIGHT 326 ;
ICON "PWCTICON" ;
TITLE "Welcome to PWCT" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 145 ,128 BUTTONEX btn1;
CAPTION "Close Window";
ON CLICK myclose()  ;
WIDTH 160 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 111 ,127 LABEL lbl1 ;
VALUE "Welcome to PWCT" ;
WIDTH 170 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose ( Event : CLICK )",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome to PWCT'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close Window'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome to PWCT'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",29,31)
Return
*-------------------------------------------------------------------*
