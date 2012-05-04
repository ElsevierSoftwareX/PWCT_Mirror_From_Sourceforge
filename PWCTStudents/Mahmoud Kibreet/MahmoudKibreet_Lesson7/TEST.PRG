*---------------------------------------------------------------------------*
* Time : 14:38:43    Date : 04/30/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 186 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
MAIN ;
BACKCOLOR {255,255,255} 

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "ÃÂ“"

END STATUSBAR

@ 13 ,141 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 12 ,72 LABEL lbl1 ;
VALUE "«·√”„" ;
WIDTH 55 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 54 ,166 BUTTONEX btn1;
CAPTION "«· —ÕÌ»";
ON CLICK myhello()  ;
WIDTH 136 HEIGHT 42 ;
FONT "Arial" SIZE 24 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc myhello
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := mytext + ": √Â·« Ê”Â·« Ì«   "
MyOut := MSGBOX(mytext,"«· —ÕÌ»")
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»”„ «··Â «·—Õ„‰ «·—ÕÌ„'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",11,13)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'ÃÂ“' )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·√”„'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«· —ÕÌ»'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myhello()",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhello",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = mytext + ': √Â·« Ê”Â·« Ì«   '",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title '«· —ÕÌ»' Type: Message Box",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*
