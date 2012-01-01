*---------------------------------------------------------------------------*
* Time : 16:26:02    Date : 12/29/2011
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

@ 43 ,230 LABEL lbl3 ;
VALUE "Message" ;
WIDTH 103 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 75 ,233 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 220 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU of win1
END MENU
POPUP "File"
MENUITEM "Exit" Action Close()
END POPUP
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
user := win1.text1.Value
msg := win1.text2.Value
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

@ 60 ,6 LABEL lbl2 ;
VALUE msg +":  " +user ;
WIDTH 324 ;
HEIGHT 48 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 182 ,83 BUTTONEX btn2;
CAPTION "<<Back";
ON CLICK CloseWin2()  ;
WIDTH 118 HEIGHT 32 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc Close
MyOut := MSGOKCANCEL("Do you want close App?","Close App")
IF MyOut
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc CloseWin2
win2.Release ( )
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Message'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Date",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","msg = win1.text2.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Username' Title 'Error' Type: Message Exclamation",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello'+ ' : ' +user",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",83,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : msg +':  ' +user",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<<Back'",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseWin2",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want close App?' Title 'Close App' Type: Message Ok/Cancel",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseWin2",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
Return
*-------------------------------------------------------------------*
