*---------------------------------------------------------------------------*
* Time : 02:12:13    Date : 01/28/2012
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


Resistance R_NEW_APPLICATION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW_APPLICATION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 601 ;
HEIGHT 310 ;
ICON "PWCTICON" ;
TITLE "New Application" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 3 ,128 LABEL lbl1 ;
VALUE "Welcome to New Application " ;
WIDTH 297 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 125 ,131 CHECKBOX check1;
CAPTION "Take a tour about the application ";
WIDTH 277;
Height 31;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 152 ,131 CHECKBOX check2;
CAPTION "Enter to the application directly";
WIDTH 261;
Height 36;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 40 ,129 LABEL lbl2 ;
VALUE "You will enjoy using this application because it is easy to use" ;
WIDTH 461 ;
HEIGHT 32 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 233 ,476 BUTTONEX btn2;
CAPTION "Cancel ";
ON CLICK closeapplication()  ;
WIDTH 92 HEIGHT 25 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 0 ,3 IMAGE sh;
PICTURE "E:\photo\green background\green background.jpg";
STRETCH ;
WIDTH 116 HEIGHT 282
@ 233 ,377 BUTTONEX btn3;
CAPTION "Next";
ON CLICK MSGINFO( "Next Page" ) ;
WIDTH 96 HEIGHT 25 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )


End Of Resistance

INIT PROCEDURE Init_NEW_APPLICATION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'New Application'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome to New Application '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check1 ) , Caption : 'Take a tour about the application '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check2 ) , Caption : 'Enter to the application directly'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'You will enjoy using this application because it is easy to use'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( sh ) , Image : 'E:\photo\green background\green background.jpg'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Next'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Next Page'",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",61,61)
Return
*-------------------------------------------------------------------*
