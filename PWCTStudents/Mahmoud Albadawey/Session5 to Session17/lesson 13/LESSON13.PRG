*---------------------------------------------------------------------------*
* Time : 06:06:33    Date : 01/23/2012
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


Resistance R_LESSON13_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON13_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 363 ;
HEIGHT 275 ;
ICON "PWCTICON" ;
TITLE "Lesson 13" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "„·› "
MENUITEM "Œ—ÊÃ " Action exit()
END POPUP
END MENU
DEFINE STATUSBAR ;
BOLD 

STATUSITEM "Ready"

STATUSITEM "Development by : Mahmoud Albadawey";
WIDTH 250 

END STATUSBAR

@ 73 ,44 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 78 ,269 LABEL lbl1 ;
VALUE "«·≈”„ " ;
WIDTH 208 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 143 ,122 BUTTONEX btn1;
CAPTION " —ÕÌ» ";
ON CLICK hello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc exit
win1.Release ( )
Return Nil
Proc hello
message := win1.text1.Value
message = ALLTRIM ( message )
MyOut := MSGBOX("„—Õ»« Ì« "+message,"Welcome ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON13
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 13'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·› '",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ ' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Development by : Mahmoud Albadawey' )",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·≈”„ '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' —ÕÌ» '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hello",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hello",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text1.Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","message = All Trim message",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„—Õ»« Ì« '+message Title 'Welcome ' Type: Message Box",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
