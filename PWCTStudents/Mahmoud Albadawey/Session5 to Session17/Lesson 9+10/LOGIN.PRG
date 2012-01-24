*---------------------------------------------------------------------------*
* Time : 07:02:36    Date : 01/21/2012
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
WIDTH 414 ;
HEIGHT 259 ;
ICON "PWCTICON" ;
TITLE "Login  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 94 ,157 BUTTONEX btn1;
CAPTION "Login ";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
BOLD ;
TOOLTIP ""
@ 41 ,112 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 45 ,26 LABEL lbl1 ;
VALUE "User Name : " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 147 ,37 LABEL lbl2 ;
VALUE "Message : " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 139 ,112 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action exit1()
END POPUP
END MENU
DEFINE STATUSBAR ;
BOLD 

STATUSITEM "Login";
TOOLTIP "Login Window"

DATE;
TOOLTIP "Date" 

CLOCK;
TOOLTIP "Time"

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Enter User Name Please"," Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 347 ;
HEIGHT 229 ;
ICON "PWCTICON" ;
TITLE "Welcom "+ user ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 52 ,79 LABEL lbl3 ;
VALUE Message+ " "+user ;
WIDTH 206 ;
HEIGHT 39 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 115 ,122 BUTTONEX btn2;
CAPTION "<< Back";
ON CLICK exit2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
BOLD ;
TOOLTIP ""
DEFINE STATUSBAR ;
BOLD 

STATUSITEM "User Name : "+user

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc exit1
MyOut := MSGOKCANCEL("Do you want to exit ? ","Exit")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc exit2
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Login  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name : '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message : '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Login' )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Date",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Enter User Name Please' Title ' Error' Type: Message Exclamation",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Welcom '+ user",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",88,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : Message+ ' '+user",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<< Back'",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit2",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'User Name : '+user )",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit1",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to exit ? ' Title 'Exit' Type: Message Ok/Cancel",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit2",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
Return
*-------------------------------------------------------------------*
