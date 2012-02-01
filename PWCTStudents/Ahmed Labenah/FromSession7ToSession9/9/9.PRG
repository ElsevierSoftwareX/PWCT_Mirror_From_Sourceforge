*---------------------------------------------------------------------------*
* Time : 15:17:35    Date : 01/10/2012
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


Resistance R_9_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_9_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 256 ;
ICON "PWCTICON" ;
TITLE "LOG IN" ;
MAIN ;
BACKCOLOR {255,0,0} 

@ 10 ,10 LABEL lbl1 ;
VALUE "User Name:" ;
WIDTH 131 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,128,128} ;
FONTCOLOR {0,0,0}
@ 53 ,53 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 103 ,53 BUTTONEX btn1;
CAPTION "Log In";
ON CLICK Userlogin()  ;
WIDTH 244 HEIGHT 34 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
@ 171 ,375 BUTTONEX btn2;
CAPTION "Exit";
ON CLICK Exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
@ 15 ,312 IMAGE image1;
PICTURE "30092_449699869055_595549055_5802556_7661005_n.jpg";
STRETCH ;
WIDTH 165 HEIGHT 144
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc UserLogin
Login := win1.text1.Value
IF Login==""
MyOut := MSGSTOP("User Name Equal Null ... Please inter user Name","Error Detected")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 291 ;
HEIGHT 175 ;
ICON "PWCTICON" ;
TITLE "Hello" ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,0,0} 

@ 21 ,48 LABEL lbl2 ;
VALUE "Hello"+" "+Login ;
WIDTH 167 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "Arial Narrow" SIZE 18  ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {0,0,255}
@ 93 ,213 BUTTONEX btn3;
CAPTION "Exit";
ON CLICK Close222()  ;
WIDTH 53 HEIGHT 33 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
procedure Close222()
win2.Release ( )
return
Return Nil
procedure Exit()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_9
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'LOG IN'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name:'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Log In'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Userlogin()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Exit",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '30092_449699869055_595549055_5802556_7661005_n.jpg'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure UserLogin",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Login = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Login=='' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'User Name Equal Null ... Please inter user Name' Title 'Error Detected' Type: Message Stop",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello'",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Hello'+' '+Login",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Exit'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close222",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close222 ( Event : CLICK )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit ( Event : CLICK )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*
