*---------------------------------------------------------------------------*
* Time : 03:15:50    Date : 01/26/2012
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "files" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action myexit()
END POPUP
END MENU
POPUP "minimize"
MENUITEM "minimize" Action mymini()
END POPUP
@ 311 ,9 BUTTONEX btn1;
CAPTION "exit";
ON CLICK warda()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Elephant" SIZE 16 ;
TOOLTIP ""
@ 308 ,202 BUTTONEX btn2;
CAPTION "Show the message";
ON CLICK msgbox()  ;
WIDTH 162 HEIGHT 34 ;
FONT "Berlin Sans FB" SIZE 14 ;
TOOLTIP ""
@ 45 ,137 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 225 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 112 ,138 TEXTBOX text2;
HEIGHT 143 ;
WIDTH 223 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 45 ,5 LABEL lbl1 ;
VALUE "The name" ;
WIDTH 119 ;
HEIGHT 29 ;
FONT "Bernard MT Condensed" SIZE 16  ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {128,64,0}
@ 111 ,6 LABEL lbl2 ;
VALUE "subject :" ;
WIDTH 118 ;
HEIGHT 47 ;
FONT "Bernard MT Condensed" SIZE 22  ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,160}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc mymini
win1.Minimize ( )
Return Nil
Proc warda
win1.Release ( )
Return Nil
Proc msgbox
dido := win1.text1.Value
warda := win1.text2.Value
MyOut := MSGINFO(warda,dido)
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'files'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'minimize'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'minimize' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'exit'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action warda()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Show the message'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action msgbox()",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The name'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'subject :'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymini",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize ( )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure warda",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure msgbox",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","dido = win1.text1.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","warda = win1.text2.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message warda Title dido Type: Message Info",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
