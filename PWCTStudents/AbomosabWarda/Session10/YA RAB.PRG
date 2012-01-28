*---------------------------------------------------------------------------*
* Time : 15:01:47    Date : 01/27/2012
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
WIDTH 510 ;
HEIGHT 503 ;
ICON "PWCTICON" ;
TITLE "ya rab" ;
MAIN ;
BACKCOLOR {255,0,255} 

@ 284 ,41 LABEL lbl1 ;
VALUE "User name" ;
WIDTH 118 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 287 ,235 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 368 ,172 BUTTONEX btn1;
CAPTION "Login";
ON CLICK logform()  ;
WIDTH 119 HEIGHT 33 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
@ 1 ,4 IMAGE image1;
PICTURE "IMAGE002.JPG";
STRETCH ;
WIDTH 486 HEIGHT 200
@ 237 ,235 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 237 ,46 LABEL lbl2 ;
VALUE "Message : " ;
WIDTH 103 ;
HEIGHT 35 ;
AUTOSIZE ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
DEFINE STATUSBAR 

STATUSITEM "READY"

DATE

CLOCK

END STATUSBAR

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action close()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Please Enter User name","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 503 ;
HEIGHT 269 ;
ICON "PWCTICON" ;
TITLE "Hellow"+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {128,255,0} 

@ 60 ,43 LABEL lbl2 ;
VALUE message+ " "+ user ;
WIDTH 403 ;
HEIGHT 97 ;
FONT "Bernard MT Condensed" SIZE 36  ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0}
@ 196 ,7 BUTTONEX btn2;
CAPTION "<<back";
ON CLICK closeform2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 18 ;
TOOLTIP ""
@ 196 ,276 LABEL lbl3 ;
VALUE "created by:Ahmed Warda" ;
WIDTH 216 ;
HEIGHT 30 ;
FONT "Baskerville Old Face" SIZE 14  ;
BACKCOLOR {255,0,255} ;
FONTCOLOR {128,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Do you want to close App","Close App")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc closeform2
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ya rab'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'IMAGE002.JPG'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message : '",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",44,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'READY' )",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Date",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter User name' Title 'Error' Type: Message Exclamation",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hellow'+user",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",82,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : message+ ' '+ user",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",90,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<<back'",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform2()",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'created by:Ahmed Warda'",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to close App' Title 'Close App' Type: Message Ok/Cancel",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform2",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
Return
*-------------------------------------------------------------------*
