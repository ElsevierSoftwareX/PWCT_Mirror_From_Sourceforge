*---------------------------------------------------------------------------*
* Time : 00:23:41    Date : 02/12/2012
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


Resistance R_TEST13_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST13_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 536 ;
HEIGHT 277 ;
ICON "PWCTICON" ;
TITLE "«· ⁄—Ì›" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 63 ,334 LABEL lbl1 ;
VALUE "«·√”‹‹‹‹„" ;
WIDTH 108 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 63 ,107 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 143 ,189 BUTTONEX btn1;
CAPTION "«· —Õ‹Ì»";
ON CLICK text()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
DEFINE MAIN MENU of win1
POPUP "«·‹„·›"
MENUITEM "Œ‹—ÊÃ" Action Exit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc Exit
win1.Release ( )
Return Nil
Proc text
txt := win1.text1.Value
txt = ALLTRIM ( txt )
MyOut := MSGBOX("„—Õ»« »ﬂ"+" "+txt,"«· —ÕÌ»")
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST13
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· ⁄—Ì›'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·√”‹‹‹‹„'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«· —Õ‹Ì»'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action text",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·‹„·›'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ‹—ÊÃ' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure text",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","txt = win1.text1.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","txt = All Trim txt",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„—Õ»« »ﬂ'+' '+txt Title '«· —ÕÌ»' Type: Message Box",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
Return
*-------------------------------------------------------------------*
