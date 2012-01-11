*---------------------------------------------------------------------------*
* Time : 21:17:25    Date : 01/09/2012
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


Resistance R_10_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_10_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 613 ;
HEIGHT 420 ;
ICON "PWCTICON" ;
TITLE "Main Window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,64} 

@ 141 ,71 LABEL lbl1 ;
VALUE "User Name :" ;
WIDTH 138 ;
HEIGHT 42 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,128} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 141 ,258 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 270 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0} 

@ 237 ,213 BUTTONEX btn1;
CAPTION "Log in";
ON CLICK logs()  ;
WIDTH 113 HEIGHT 38 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 12 ,205 IMAGE image1;
PICTURE "aa.jpg";
STRETCH ;
WIDTH 148 HEIGHT 120
@ 185 ,87 LABEL lbl2 ;
VALUE "Message : " ;
WIDTH 138 ;
HEIGHT 42 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,128}
@ 186 ,258 TEXTBOX text2;
HEIGHT 34 ;
WIDTH 270 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action exit()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure logs()
msg := win1.text2.value
name := win1.text1.Value
IF name==""
MyOut := MSGExclamation("Please Enter Username !","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 527 ;
HEIGHT 314 ;
ICON "PWCTICON" ;
TITLE "Hello" + " " +name ;
MODAL ;
BACKCOLOR {255,0,128} 

@ 39 ,25 LABEL lbl3 ;
VALUE msg ;
WIDTH 474 ;
HEIGHT 111 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,128}
@ 174 ,185 BUTTONEX btn2;
CAPTION "<<<  Back";
ON CLICK winclose()  ;
WIDTH 220 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return
procedure winclose()
win2.Release ( )
return
Proc exit
myout := MSGOKCANCEL("Do you want to close application ?","Close Application")
IF myout = true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_10
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main Window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name :'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Log in'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logs",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'aa.jpg'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message : '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logs ( Event : CLICK )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","msg = win1.text2.value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( name=='' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Username !' Title 'Error' Type: Message Exclamation",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello' + ' ' +name",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : msg",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<<<  Back'",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action winclose",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",97,99)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure winclose ( Event : CLICK )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to close application ?' Title 'Close Application' Type: Message Ok/Cancel",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",112,112)
Return
*-------------------------------------------------------------------*
