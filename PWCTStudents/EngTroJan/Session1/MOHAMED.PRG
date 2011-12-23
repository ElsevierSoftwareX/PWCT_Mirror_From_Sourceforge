*---------------------------------------------------------------------------*
* Time : 07:13:18    Date : 12/22/2011
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


Resistance R_MOHAMED_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MOHAMED_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 445 ;
HEIGHT 152 ;
ICON "PWCTICON" ;
TITLE "My First Application" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 78 ,333 BUTTONEX btn2;
CAPTION "Exit";
ON CLICK closeapp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 5 ,17 IMAGE image1;
PICTURE "strawberry.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 12 ,136 LABEL lbl1 ;
VALUE "Strawberry : My Graduation Project" ;
WIDTH 275 ;
HEIGHT 36 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,128,192}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapp()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_MOHAMED
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'My First Application'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapp",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'strawberry.jpg'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Strawberry : My Graduation Project'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapp ( Event : CLICK )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
Return
*-------------------------------------------------------------------*
