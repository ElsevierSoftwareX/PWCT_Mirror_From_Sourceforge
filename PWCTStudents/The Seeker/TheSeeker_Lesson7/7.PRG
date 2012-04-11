*---------------------------------------------------------------------------*
* Time : 06:55:08    Date : 03/26/2012
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


Resistance R_7_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_7_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 671 ;
HEIGHT 380 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„  " ;
MAIN ;
BACKCOLOR {255,255,255} 

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DEFINE MAIN MENU
POPUP "„·› "
MENUITEM "Œ—ÊÃ " Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "ready"

END STATUSBAR

@ 140 ,365 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 139 ,181 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 200 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 241 ,253 BUTTONEX btn1;
CAPTION "«· —ÕÌ» ";
ON CLICK myhello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
procedure myhello()
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := "«Â·« Ê”Â·« »ﬂ Ì«"+mytext
MyOut := MSGBOX(mytext," «· —ÕÌ»")
return


End Of Resistance

INIT PROCEDURE Init_7
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»”„ «··Â «·—Õ„‰ «·—ÕÌ„  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",11,13)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·› '",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ ' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'ready' )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«· —ÕÌ» '",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myhello",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhello ( Event : CLICK )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = '«Â·« Ê”Â·« »ﬂ Ì«'+mytext",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title ' «· —ÕÌ»' Type: Message Box",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
Return
*-------------------------------------------------------------------*
