*---------------------------------------------------------------------------*
* Time : 15:06:31    Date : 01/10/2012
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


Resistance R_TEXTMSG_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEXTMSG_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 475 ;
HEIGHT 387 ;
ICON "PWCTICON" ;
TITLE "show message" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 299 ,281 BUTTONEX btn1;
CAPTION "show";
ON CLICK msgbox()  ;
WIDTH 141 HEIGHT 43 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
@ 300 ,16 BUTTONEX btn2;
CAPTION "exit";
ON CLICK myexit()  ;
WIDTH 141 HEIGHT 43 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
@ 33 ,9 LABEL lbl1 ;
VALUE "title" ;
WIDTH 58 ;
HEIGHT 36 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {0,255,255}
@ 147 ,5 LABEL lbl2 ;
VALUE "text" ;
WIDTH 58 ;
HEIGHT 36 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {0,255,255}
@ 26 ,124 TEXTBOX text1;
HEIGHT 48 ;
WIDTH 309 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 94 ,124 TEXTBOX text2;
HEIGHT 190 ;
WIDTH 309 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc msgbox
ayash := win1.text1.Value
seif := win1.text2.Value
MyOut := MSGINFO(seif,ayash)
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEXTMSG
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'show message'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'show'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action msgbox",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'exit'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myexit",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'title'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'text'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure msgbox",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ayash = win1.text1.Value",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","seif = win1.text2.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message seif Title ayash Type: Message Info",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*
