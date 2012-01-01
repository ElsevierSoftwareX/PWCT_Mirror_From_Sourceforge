*---------------------------------------------------------------------------*
* Time : 05:06:41    Date : 12/29/2011
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


Resistance R_LOGINFORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGINFORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 479 ;
HEIGHT 322 ;
ICON "PWCTICON" ;
TITLE "Login Form" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 14 ,7 IMAGE image1;
PICTURE "MEMBERS-LOGIN-RIGHT.JPG";
STRETCH ;
WIDTH 230 HEIGHT 261
@ 112 ,233 LABEL lbl1 ;
VALUE "User Name" ;
WIDTH 134 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 188 ,234 BUTTONEX btn1;
CAPTION "Login";
ON CLICK login()  ;
WIDTH 103 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 148 ,234 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 221 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("Please Enter Username","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 361 ;
HEIGHT 278 ;
ICON "PWCTICON" ;
TITLE "Hello"+ " : " +user ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGINFORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Login Form'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'MEMBERS-LOGIN-RIGHT.JPG'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Username' Title 'Error' Type: Message Exclamation",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello'+ ' : ' +user",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
