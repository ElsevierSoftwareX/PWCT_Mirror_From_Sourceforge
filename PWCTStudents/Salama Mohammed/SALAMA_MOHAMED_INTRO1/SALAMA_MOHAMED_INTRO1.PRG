*---------------------------------------------------------------------------*
* Time : 03:36:48    Date : 03/21/2012
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


Resistance R_SALAMA_MOHAMED_INTRO1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_MOHAMED_INTRO1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 378 ;
HEIGHT 289 ;
ICON "PWCTICON" ;
TITLE "hello world" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,128,128} 

@ 63 ,104 LABEL lbl1 ;
VALUE "hello world" ;
WIDTH 174 ;
HEIGHT 34 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {255,0,0}
@ 122 ,54 BUTTONEX btn1;
CAPTION "sey hello";
ON CLICK MSGINFO( "hello" ) ;
WIDTH 114 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 122 ,201 BUTTONEX btn2;
CAPTION "close window";
ON CLICK closeapplication()  ;
WIDTH 121 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 213 ,-9 LABEL lbl2 ;
VALUE " " ;
WIDTH 382 ;
HEIGHT 11 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {0,0,0}
@ 223 ,-60 LABEL lbl3 ;
VALUE "                                                              Í" ;
WIDTH 435 ;
HEIGHT 13 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 236 ,-8 LABEL lbl4 ;
VALUE " " ;
WIDTH 381 ;
HEIGHT 13 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_SALAMA_MOHAMED_INTRO1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'hello world'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'hello world'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'sey hello'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'hello'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close window'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '                                                              Í'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : ' '",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
Return
*-------------------------------------------------------------------*
