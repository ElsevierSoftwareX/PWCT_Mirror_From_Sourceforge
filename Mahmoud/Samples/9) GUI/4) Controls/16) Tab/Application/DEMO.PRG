*---------------------------------------------------------------------------*
* Time : 00:47:28    Date : 10/22/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN 

DEFINE TAB Tab1;
AT 10 ,9;
WIDTH 440;
HEIGHT 325;
FONT "arial" SIZE 9 ;
TOOLTIP ""
PAGE "Text Here"
@ 60 ,40 LABEL lbl1 ;
VALUE "Text Here" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END PAGE
PAGE "Text Here"
@ 50 ,30 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK "" 

END PAGE
END TAB
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",10,13)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Text Here' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Text Here'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Text Here' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
Return
*-------------------------------------------------------------------*
