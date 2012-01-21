*---------------------------------------------------------------------------*
* Time : 23:36:59    Date : 01/21/2012
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


Resistance R_LOGIN_FORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_FORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 434 ;
HEIGHT 235 ;
ICON "PWCTICON" ;
TITLE "Main Window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,255} 

@ 138 ,131 BUTTONEX btn1;
CAPTION "Login";
FONTCOLOR {64,128,128};
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 65 ,25 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 28 ,25 LABEL lbl1 ;
VALUE "User Name" ;
WIDTH 200 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 10 ,293 IMAGE image1;
PICTURE "EGYPT.JPG";
STRETCH ;
WIDTH 116 HEIGHT 84
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action Myexit()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Logform
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("Enter Username","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 522 ;
HEIGHT 175 ;
ICON "PWCTICON" ;
TITLE "Welcome"+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,128,128} 

@ 41 ,75 LABEL lbl2 ;
VALUE "Thank you for using PWCT" ;
WIDTH 347 ;
HEIGHT 58 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc Myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN_FORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main Window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'EGYPT.JPG'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Logform",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Enter Username' Title 'Error' Type: Message Exclamation",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Welcome'+user",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",60,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Thank you for using PWCT'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myexit",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
Return
*-------------------------------------------------------------------*
