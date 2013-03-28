*---------------------------------------------------------------------------*
* Time : 05:06:14    Date : 10/22/2011
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


Resistance R_PASS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PASS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 330 ;
HEIGHT 155 ;
ICON "sameh.ico" ;
TITLE "Simple login sample - by Sameh Kamel" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 47 ,9 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 195 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 47 ,218 BUTTONEX btn1;
CAPTION "Open";
ON CLICK Testpass()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 82 ,218 BUTTONEX btn2;
CAPTION "Exit";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 12 ,9 LABEL lbl1 ;
VALUE "Enter password" ;
WIDTH 130 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Testpass
pass := win1.text1.Value
IF pass="sameh"
MyOut := MSGINFO("Welcome to the system","Login")
win1.Release ( )
ELSEIF pass<>"sameh"
MyOut := MSGExclamation("Incorrect password","Sorry")
win1.text1.SetFocus ( )
ENDIF
Return Nil
Proc Close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_PASS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Simple login sample - by Sameh Kamel'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",17,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Open'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Testpass()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close()",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Enter password'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Testpass",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","pass = win1.text1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pass='sameh' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Welcome to the system' Title 'Login' Type: Message Info",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( pass<>'sameh' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Incorrect password' Title 'Sorry' Type: Message Exclamation",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
