*---------------------------------------------------------------------------*
* Time : 20:25:21    Date : 01/23/2012
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


Resistance R_LOGFORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGFORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 408 ;
HEIGHT 280 ;
ICON "PWCTICON" ;
TITLE "Main Window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,128} 

@ 102 ,16 LABEL lbl1 ;
VALUE "User Name :" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 102 ,129 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 160 ,159 BUTTONEX btn1;
CAPTION "Login";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 60 ,128 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 60 ,13 LABEL lbl2 ;
VALUE "message:  " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
DEFINE MAIN MENU
POPUP "File"
MENUITEM "exit" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("please enter user name","error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 318 ;
HEIGHT 195 ;
ICON "PWCTICON" ;
TITLE "hello " + user ;
MODAL ;
NOSIZE ;
BACKCOLOR {64,128,128} 

@ 29 ,14 LABEL lbl3 ;
VALUE message + " " + user ;
WIDTH 275 ;
HEIGHT 46 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 119 ,13 BUTTONEX btn2;
CAPTION "<<Back";
ON CLICK closeform2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Do you want to close App","Close App")
IF MyOut=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc closeform2
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGFORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main Window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name :'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'message:  '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Date",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'please enter user name' Title 'error' Type: Message Exclamation",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'hello ' + user",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",80,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : message + ' ' + user",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",88,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<<Back'",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform2",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to close App' Title 'Close App' Type: Message Ok/Cancel",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=true )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform2",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
Return
*-------------------------------------------------------------------*
