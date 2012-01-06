*---------------------------------------------------------------------------*
* Time : 22:57:28    Date : 01/04/2012
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
WIDTH 628 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Message Program Example" ;
MAIN ;
BACKCOLOR {255,255,128} 

@ 32 ,19 LABEL lbl1 ;
VALUE "Message Name" ;
WIDTH 174 ;
HEIGHT 33 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}
@ 32 ,198 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 283 ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {255,255,255} 

@ 118 ,19 LABEL lbl2 ;
VALUE "Message Content" ;
WIDTH 173 ;
HEIGHT 29 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}
@ 118 ,199 TEXTBOX text2;
HEIGHT 131 ;
WIDTH 283 ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {255,255,255} 

@ 290 ,195 BUTTONEX btn1;
CAPTION "Show ";
ON CLICK shwmsg()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 290 ,343 BUTTONEX btn2;
CAPTION "Exit";
ON CLICK releasew()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure releasew()
win1.Release ( )
return
procedure shwmsg()
msg := win1.text1.Value
content := win1.text2.Value
IF msg == ""
MyOut := MSGINFO("Plese type message name ......","Error")
ELSEIF content ==""
MyOut := MSGINFO("Please type message content ...","Error 2")
ELSE
MyOut := MSGINFO(content,msg)
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_7
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Message Program Example'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Message Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message Content'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action shwmsg",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action releasew",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure releasew ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure shwmsg ( Event : CLICK )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","msg = win1.text1.Value",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","content = win1.text2.Value",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( msg == '' )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Plese type message name ......' Title 'Error' Type: Message Info",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( content =='' )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please type message content ...' Title 'Error 2' Type: Message Info",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message content Title msg Type: Message Info",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
Return
*-------------------------------------------------------------------*
