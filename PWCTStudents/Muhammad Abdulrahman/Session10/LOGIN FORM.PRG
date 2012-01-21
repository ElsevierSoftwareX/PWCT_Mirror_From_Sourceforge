*---------------------------------------------------------------------------*
* Time : 01:27:16    Date : 01/22/2012
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
HEIGHT 350 ;
ICON "PWCTICON" ;
TITLE "Main Window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,255} 

@ 240 ,187 BUTTONEX btn1;
CAPTION "Login";
FONTCOLOR {64,128,128};
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 141 ,155 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 143 ,27 LABEL lbl1 ;
VALUE "User Name" ;
WIDTH 200 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 18 ,111 IMAGE image1;
PICTURE "EGYPT.JPG";
STRETCH ;
WIDTH 205 HEIGHT 93
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action Myexit()
END POPUP
END MENU
@ 190 ,153 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 189 ,25 LABEL lbl3 ;
VALUE "Message" ;
WIDTH 136 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Logform
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Enter Username","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 569 ;
HEIGHT 170 ;
ICON "PWCTICON" ;
TITLE "Welcome"+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,128,128} 

@ 41 ,75 LABEL lbl2 ;
VALUE Message+" "+user ;
WIDTH 347 ;
HEIGHT 58 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 89 ,370 BUTTONEX btn2;
CAPTION "<<< Go Back";
ON CLICK closeform2()  ;
WIDTH 172 HEIGHT 26 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc Myexit
MyOut := MSGOKCANCEL("Do you want to close App","Close App")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc Closeform2
win2.Release ( )
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
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Message'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Date",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Logform",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Enter Username' Title 'Error' Type: Message Exclamation",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Welcome'+user",81,85)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",86,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : Message+' '+user",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",94,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<<< Go Back'",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform2()",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myexit",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to close App' Title 'Close App' Type: Message Ok/Cancel",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Closeform2",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
Return
*-------------------------------------------------------------------*
