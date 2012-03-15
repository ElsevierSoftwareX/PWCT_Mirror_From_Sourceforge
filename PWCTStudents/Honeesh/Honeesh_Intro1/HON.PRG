*---------------------------------------------------------------------------*
* Time : 00:20:51    Date : 03/15/2012
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


Resistance R_HON_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HON_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 668 ;
HEIGHT 428 ;
ICON "PWCTICON" ;
TITLE "Jewelrey  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 74 ,256 LABEL lbl1 ;
VALUE "Jewelrey Honeesh " ;
WIDTH 221 ;
HEIGHT 45 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 286 ,134 BUTTONEX btn1;
CAPTION "Say Honeesh ";
ON CLICK MSGINFO( "Jewelrey Honeesh" ) ;
WIDTH 224 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 283 ,415 BUTTONEX btn2;
CAPTION "Close Window ";
ON CLICK CloseApplication()  ;
WIDTH 181 HEIGHT 40 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure CloseApplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_HON
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Jewelrey  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Jewelrey Honeesh '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Honeesh '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Jewelrey Honeesh'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApplication",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApplication ( Event : CLICK )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",40,40)
Return
*-------------------------------------------------------------------*
