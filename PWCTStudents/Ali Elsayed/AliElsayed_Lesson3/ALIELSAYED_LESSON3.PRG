*---------------------------------------------------------------------------*
* Time : 20:34:33    Date : 02/18/2012
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


Resistance R_ALIELSAYED_LESSON3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALIELSAYED_LESSON3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 501 ;
HEIGHT 388 ;
ICON "PWCTICON" ;
TITLE " Login Form " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 135 ,195 TEXTBOX text1;
HEIGHT 43 ;
WIDTH 205 ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 229 ,185 BUTTONEX btn1;
CAPTION "Login ";
ON CLICK logform()  ;
WIDTH 97 HEIGHT 38 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 141 ,42 LABEL lbl1 ;
VALUE "User Name " ;
WIDTH 198 ;
HEIGHT 47 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 4 ,187 IMAGE image1;
PICTURE "login.bmp";
STRETCH ;
WIDTH 100 HEIGHT 100
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
IF user==""
MyOut := MSGBOX("„‰ ›÷·ﬂ √œŒ· «”„ «·„” Œœ„"," Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Hello  " + user ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALIELSAYED_LESSON3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Login Form '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'login.bmp'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„‰ ›÷·ﬂ √œŒ· «”„ «·„” Œœ„' Title ' Error' Type: Message Box",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello  ' + user",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
Return
*-------------------------------------------------------------------*
