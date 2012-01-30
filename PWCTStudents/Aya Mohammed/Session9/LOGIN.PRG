*---------------------------------------------------------------------------*
* Time : 22:10:59    Date : 01/28/2012
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


Resistance R_LOGIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 511 ;
HEIGHT 283 ;
ICON "PWCTICON" ;
TITLE "Login" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 19 ,335 IMAGE image1;
PICTURE "WELCOME.JPG";
STRETCH ;
WIDTH 139 HEIGHT 140
@ 84 ,19 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 24 ,19 LABEL lbl1 ;
VALUE "UserName:" ;
WIDTH 116 ;
HEIGHT 33 ;
FONT "Arial" SIZE 12  ;
UNDERLINE ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,0,128}
@ 153 ,58 BUTTONEX btn1;
CAPTION "Login";
ON CLICK Login()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Login
UserName := win1.text1.Value
IF UserName ==""
MyOut := MSGExclamation("Please enter UserName","Warning")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 536 ;
HEIGHT 255 ;
ICON "PWCTICON" ;
TITLE "Hello"+" "+UserName ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 81 ,43 LABEL lbl2 ;
VALUE "Welcome"+" "+UserName+" "+"To PWCT" ;
WIDTH 474 ;
HEIGHT 49 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,64}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Login'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'WELCOME.JPG'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'UserName:'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Login",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Login",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","UserName = win1.text1.Value",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UserName =='' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please enter UserName' Title 'Warning' Type: Message Exclamation",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello'+' '+UserName",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Welcome'+' '+UserName+' '+'To PWCT'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
