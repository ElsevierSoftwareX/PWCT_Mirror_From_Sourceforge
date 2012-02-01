*---------------------------------------------------------------------------*
* Time : 15:33:28    Date : 01/30/2012
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


Resistance R_WELCOME_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WELCOME_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Welcome Form" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {255,128,0} 

@ 116 ,82 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 123 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
DEFINE MAIN MENU of win1
POPUP "File"
MENUITEM "Exit" Action exit()
END POPUP
END MENU
@ 116 ,218 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 191 ,176 BUTTONEX btn1;
CAPTION "Click here";
ON CLICK show()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE STATUSBAR ;
BOLD 

DATE

CLOCK

STATUSITEM "Ready";
TOOLTIP "Ready"

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc exit
win1.Release ( )
Return Nil
Proc show
msg := win1.text1.Value
msg = ALLTRIM ( msg )
MyOut := MSGBOX("Welcome"+msg,"Welcome")
Return Nil


End Of Resistance

INIT PROCEDURE Init_WELCOME
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome Form'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Click here'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action show",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Date",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","msg = win1.text1.Value",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","msg = All Trim msg",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Welcome'+msg Title 'Welcome' Type: Message Box",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
Return
*-------------------------------------------------------------------*
