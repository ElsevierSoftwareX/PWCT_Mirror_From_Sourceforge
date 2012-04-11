*---------------------------------------------------------------------------*
* Time : 00:38:33    Date : 04/08/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 513 ;
HEIGHT 305 ;
ICON "PWCTICON" ;
TITLE "Hello world  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 86 ,147 LABEL lbl1 ;
VALUE "Hello world " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,64} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 161 ,103 BUTTONEX btn1;
CAPTION "Say Hello ";
ON CLICK MSGINFO( "Hello" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 161 ,263 BUTTONEX btn2;
CAPTION "close win ";
ON CLICK closeapp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapp()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello world  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Hello world '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Hello '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Hello'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close win '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapp",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapp ( Event : CLICK )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",39,39)
Return
*-------------------------------------------------------------------*
