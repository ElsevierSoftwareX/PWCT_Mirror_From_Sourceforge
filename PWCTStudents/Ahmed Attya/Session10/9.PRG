*---------------------------------------------------------------------------*
* Time : 11:13:11    Date : 12/29/2011
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
WIDTH 632 ;
HEIGHT 432 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «· «”⁄ Ê«·⁄«‘—" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,192} 

@ 286 ,222 BUTTONEX btn1;
CAPTION "LogIN";
FONTCOLOR {0,0,0};
ON CLICK logon()  ;
WIDTH 138 HEIGHT 55 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
@ 189 ,180 TEXTBOX text1;
HEIGHT 61 ;
WIDTH 241 ;
FONT "Arial" SIZE 22 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0} 

@ 202 ,9 LABEL lbl1 ;
VALUE "User Name" ;
WIDTH 159 ;
HEIGHT 54 ;
AUTOSIZE ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 6 ,419 IMAGE image1;
PICTURE "63F6FE7FA2.JPG";
STRETCH ;
WIDTH 189 HEIGHT 106
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action closeform1()
END POPUP
END MENU
@ 120 ,182 TEXTBOX text2;
HEIGHT 58 ;
WIDTH 239 ;
FONT "Arial" SIZE 22 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 120 ,26 LABEL lbl2 ;
VALUE "Message : " ;
WIDTH 133 ;
HEIGHT 58 ;
AUTOSIZE ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
DEFINE STATUSBAR 

DATE

CLOCK

KEYBOARD

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logon
message := win1.text2.Value
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("Please Enter User Name","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 608 ;
HEIGHT 381 ;
ICON "PWCTICON" ;
TITLE "Hello" + " " + user ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,192} 

@ 88 ,92 LABEL lbl3 ;
VALUE message + " " + user ;
WIDTH 426 ;
HEIGHT 114 ;
AUTOSIZE ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 265 ,45 BUTTONEX btn2;
CAPTION "<< Back";
FONTCOLOR {255,0,0};
ON CLICK closeform2()  ;
WIDTH 130 HEIGHT 56 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc closeform1
MyOut := MSGOKCANCEL("Do you want to Close App","Close App")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc closeform2
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_9
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «· «”⁄ Ê«·⁄«‘—'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'LogIN'",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logon()",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '63F6FE7FA2.JPG'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message : '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",56,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Date",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logon",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter User Name' Title 'Error' Type: Message Exclamation",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello' + ' ' + user",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",89,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : message + ' ' + user",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",100,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<< Back'",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform2()",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform1",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to Close App' Title 'Close App' Type: Message Ok/Cancel",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform2",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",131,131)
Return
*-------------------------------------------------------------------*
