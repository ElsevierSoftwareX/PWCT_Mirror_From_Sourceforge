*---------------------------------------------------------------------------*
* Time : 10:07:28    Date : 11/29/2011
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
 * (Noun) *
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


Resistance R_LOG_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOG_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 571 ;
HEIGHT 257 ;
ICON "PWCTICON" ;
TITLE "—”«·… «· —ÕÌ»" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

@ 151 ,83 BUTTONEX btn1;
CAPTION "Login";
ON CLICK mylogin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 13 ,33 LABEL lbl1 ;
VALUE "UserName:" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,255,0} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 41 ,33 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255} 

@ 35 ,274 IMAGE image1;
PICTURE "pwc.jpg";
STRETCH ;
WIDTH 265 HEIGHT 128
@ 113 ,33 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255} 

@ 81 ,30 LABEL lbl2 ;
VALUE "Your message here:" ;
WIDTH 205 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mylogin
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Please Enter UserName & Message!!","Error Login")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 401 ;
HEIGHT 203 ;
ICON "PWCTICON" ;
TITLE "Hello Mister "+user ;
MODAL ;
BACKCOLOR {0,128,255} 

@ 60 ,72 LABEL lbl1 ;
VALUE message + " " + user ;
WIDTH 242 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,255,0} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 125 ,276 BUTTONEX btn2;
CAPTION "Back";
ON CLICK myback()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Are you shure that you want to close the application?","close application")
IF myout==true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc myback
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOG
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,53)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Date",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mylogin",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter UserName & Message!!' Title 'Error Login' Type: Message Exclamation",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello Mister '+user",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : message + ' ' + user",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",92,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Back'",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you shure that you want to close the application?' Title 'close application' Type: Message Ok/Cancel",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==true )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myback",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
Return
*-------------------------------------------------------------------*
