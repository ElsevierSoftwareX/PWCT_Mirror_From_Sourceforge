*---------------------------------------------------------------------------*
* Time : 22:41:57    Date : 01/27/2012
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


Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 545 ;
HEIGHT 308 ;
ICON "PWCTICON" ;
TITLE "Ahmed" ;
MAIN ;
BACKCOLOR {255,0,255} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

CLOCK

DATE

END STATUSBAR

@ 90 ,56 LABEL lbl1 ;
VALUE "The Name" ;
WIDTH 110 ;
HEIGHT 33 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 92 ,230 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 242 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,64,0} 

@ 157 ,172 BUTTONEX btn1;
CAPTION "Welcome";
ON CLICK myhellow()  ;
WIDTH 117 HEIGHT 37 ;
FONT "Broadway" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myhellow
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := " You Are Welcome  " +  mytext
MyOut := MSGBOX(mytext," Welcome ")
Return Nil
Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Ahmed'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Date",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The Name'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Welcome'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myhellow()",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhellow",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = ' You Are Welcome  ' +  mytext",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title ' Welcome ' Type: Message Box",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*
