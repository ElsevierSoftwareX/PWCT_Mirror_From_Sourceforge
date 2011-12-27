*---------------------------------------------------------------------------*
* Time : 08:49:18    Date : 12/26/2011
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


Resistance R_TARIG_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TARIG_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 504 ;
HEIGHT 163 ;
ICON "PWCTICON" ;
TITLE "Thanks Message" ;
MAIN ;
BACKCOLOR {255,255,128} 

@ 15 ,81 LABEL lbl1 ;
VALUE "Thanks Mahmoud for The Best Programming Language" ;
WIDTH 330 ;
HEIGHT 28 ;
FONT "Arial Rounded MT Bold" SIZE 9  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0}
@ 75 ,131 BUTTONEX btn1;
CAPTION "Say Thanks";
ON CLICK MSGINFO( "Thanks Eng.Mahmoud" ) ;
WIDTH 103 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 74 ,246 BUTTONEX btn2;
CAPTION "Close";
ON CLICK Close()  ;
WIDTH 99 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TARIG
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Thanks Message'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Thanks Mahmoud for The Best Programming Language'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Thanks'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Thanks Eng.Mahmoud'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
Return
*-------------------------------------------------------------------*
