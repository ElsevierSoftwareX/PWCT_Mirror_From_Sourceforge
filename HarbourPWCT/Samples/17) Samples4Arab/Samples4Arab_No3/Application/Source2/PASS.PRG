*---------------------------------------------------------------------------*
* Time : 05:41:32    Date : 10/22/2011
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
WIDTH 334 ;
HEIGHT 200 ;
ICON "sameh.ico" ;
TITLE "IF-ELSEIF statement sample" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 61 ,147 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 160 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 103 ,11 BUTTONEX btn1;
CAPTION "Test password";
ON CLICK Testpass()  ;
WIDTH 296 HEIGHT 28 ;
FONT "arial" SIZE 12 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 65 ,12 LABEL lbl1 ;
VALUE "Enter password" ;
WIDTH 130 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
@ 32 ,13 LABEL lbl2 ;
VALUE "Count of incorrect passwords" ;
WIDTH 215 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 33 ,234 LABEL lbl3 ;
VALUE "0" ;
WIDTH 33 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Testpass
pass := win1.text1.Value
IF pass="sameh"
MyOut := MSGINFO("Hello Sameh","Login")
ELSEIF pass="mahmoud"
MyOut := MSGINFO("Hello Mahmoud","Login")
ELSEIF pass="stephen"
MyOut := MSGINFO("Hello Stephen","Login")
ELSE
MyOut := MSGExclamation("Incorrect password, Try Again !!!","Sorry")
win1.text1.SetFocus ( )
testnum := win1.lbl3.Value
testnum = VAL ( testnum )
testnum := testnum+1
testnum = STR ( testnum )
testnum = ALLTRIM ( testnum )
win1.lbl3.Value := testnum
ENDIF


End Of Resistance

INIT PROCEDURE Init_PASS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'IF-ELSEIF statement sample'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",17,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Test password'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Testpass()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Enter password'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Count of incorrect passwords'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '0'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Testpass",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","pass = win1.text1.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pass='sameh' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Hello Sameh' Title 'Login' Type: Message Info",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( pass='mahmoud' )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Hello Mahmoud' Title 'Login' Type: Message Info",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( pass='stephen' )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Hello Stephen' Title 'Login' Type: Message Info",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Incorrect password, Try Again !!!' Title 'Sorry' Type: Message Exclamation",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = win1.lbl3.Value",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = CONVERT testnum TO Numeric",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = testnum+1",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = CONVERT testnum TO STRING",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","testnum = All Trim testnum",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := testnum",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",82,82)
Return
*-------------------------------------------------------------------*
