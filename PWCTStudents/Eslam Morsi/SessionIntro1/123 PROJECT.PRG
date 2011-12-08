*---------------------------------------------------------------------------*
* Time : 01:32:21    Date : 12/09/2011
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


Resistance R_123_PROJECT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_123_PROJECT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 557 ;
HEIGHT 218 ;
ICON "PWCTICON" ;
TITLE "First Project" ;
MAIN ;
BACKCOLOR {128,128,128} 

@ 39 ,98 FRAME Local;
WIDTH 382 ;
HEIGHT 125 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {0,128,0} 

@ 111 ,366 BUTTONEX btn1;
CAPTION "Say Hello";
ON CLICK MSGINFO( "Hello Worled" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 111 ,239 BUTTONEX btn2;
CAPTION "Close";
ON CLICK CloseApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 111 ,109 BUTTONEX btn3;
CAPTION "Start";
ON CLICK ActiveTheNextTap()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
FLAT ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure CloseApp()
win1.Release ( )
return
procedure ActiveTheNextTap()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 433 ;
HEIGHT 188 ;
ICON "PWCTICON" ;
TITLE "For My First" ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 63 ,35 CHECKBOX check1;
CAPTION "Fayed";
ON CHANGE MSGINFO( "Works at Architecture of PWCT, Researcher at KSU and Software Engineer at RVC" ) ;
WIDTH 130;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 62 ,170 CHECKBOX check2;
CAPTION "Islam";
WIDTH 130;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 64 ,305 CHECKBOX check3;
CAPTION "PWCT";
WIDTH 130;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

return


End Of Resistance

INIT PROCEDURE Init_123_PROJECT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'First Project'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Frame ( Local )",11,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Hello'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Hello Worled'",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Start'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ActiveTheNextTap",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ActiveTheNextTap ( Event : CLICK )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'For My First'",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check1 ) , Caption : 'Fayed'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action 'Works at Architecture of PWCT, Researcher at KSU and Software Engineer at",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check2 ) , Caption : 'Islam'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check3 ) , Caption : 'PWCT'",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
Return
*-------------------------------------------------------------------*
