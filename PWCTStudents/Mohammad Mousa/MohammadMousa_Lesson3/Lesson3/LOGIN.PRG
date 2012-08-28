*---------------------------------------------------------------------------*
* Time : 08:55:22    Date : 07/07/2012
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
WIDTH 429 ;
HEIGHT 273 ;
ICON "Main Window" ;
TITLE "  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,0} 

@ 121 ,11 LABEL lbl1 ;
VALUE "User Name:" ;
WIDTH 117 ;
HEIGHT 34 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,0,0}
@ 177 ,131 BUTTONEX btn1;
CAPTION "Login";
ON CLICK logform()  ;
WIDTH 215 HEIGHT 33 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 125 ,130 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 214 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,15 IMAGE image1;
PICTURE "logo.jpg";
STRETCH ;
WIDTH 386 HEIGHT 92
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
text := win1.text1.Value
IF text==""
MyOut := MSGExclamation("«·—Ã«¡ √œŒ«· «·√”„ ›Ì «·Õﬁ·","Œÿ√")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 482 ;
HEIGHT 297 ;
ICON "PWCTICON" ;
TITLE text+" "+"„—Õ»«" ;
MODAL ;
BACKCOLOR {128,0,0} 

@ 48 ,63 LABEL lbl2 ;
VALUE "„—Õ»« »ﬂ" ;
WIDTH 360 ;
HEIGHT 131 ;
FONT "Tahoma" SIZE 72  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {255,255,255}
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name:'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'logo.jpg'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","text = win1.text1.Value",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( text=='' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«·—Ã«¡ √œŒ«· «·√”„ ›Ì «·Õﬁ·' Title 'Œÿ√' Type: Message Exclamation",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : text+' '+'„—Õ»«'",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '„—Õ»« »ﬂ'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*
