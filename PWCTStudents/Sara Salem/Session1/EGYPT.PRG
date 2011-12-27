*---------------------------------------------------------------------------*
* Time : 12:14:22    Date : 12/27/2011
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


Resistance R_EGYPT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EGYPT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 291 ;
ICON "PWCTICON" ;
TITLE "EGYPT" ;
MAIN ;
BACKCOLOR {255,128,64} 

@ 66 ,203 LABEL lbl1 ;
VALUE "Proud" ;
WIDTH 115 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {255,0,0}
@ 66 ,282 LABEL lbl2 ;
VALUE "To be" ;
WIDTH 108 ;
HEIGHT 43 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {255,255,255}
@ 67 ,362 LABEL lbl3 ;
VALUE "Egyptian" ;
WIDTH 99 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 184 ,192 BUTTONEX btn1;
CAPTION "CLICK";
ON CLICK MSGINFO( "me too proud to be egyptian" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 184 ,343 BUTTONEX btn2;
CAPTION "CLOSE";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 55 ,13 IMAGE i;
PICTURE "bg.jpg";
STRETCH ;
WIDTH 142 HEIGHT 139
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_EGYPT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'EGYPT'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Proud'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'To be'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Egyptian'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'CLICK'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'me too proud to be egyptian'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'CLOSE'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( i ) , Image : 'bg.jpg'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
Return
*-------------------------------------------------------------------*
