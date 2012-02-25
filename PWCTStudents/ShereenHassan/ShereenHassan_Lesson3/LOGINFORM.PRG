*---------------------------------------------------------------------------*
* Time : 00:54:14    Date : 02/25/2012
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


Resistance R_LOGINFORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGINFORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 440 ;
HEIGHT 438 ;
ICON "PWCTICON" ;
TITLE "Login  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 199 ,44 LABEL lbl1 ;
VALUE "User Name:  " ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 259 ,45 LABEL lbl2 ;
VALUE "Pssword:" ;
WIDTH 91 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 0 ,113 IMAGE image1;
PICTURE "ecenter.jpg";
STRETCH ;
WIDTH 184 HEIGHT 137
@ 125 ,50 LABEL lbl3 ;
VALUE "Welcome to E-learning  center " ;
WIDTH 350 ;
HEIGHT 55 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 204 ,145 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 258 ,144 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 328 ,272 BUTTONEX btn2;
CAPTION "Cancel ";
ON CLICK Close()  ;
WIDTH 78 HEIGHT 28 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 328 ,164 BUTTONEX btn3;
CAPTION "Login ";
ON CLICK Login()  ;
WIDTH 81 HEIGHT 28 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return
procedure Login()
user := win1.text1.Value
pass := win1.text2.Value
IF user==""
MyOut := MSGSTOP("Please Enter Username ","Error ")
ELSEIF pass==""
MyOut := MSGSTOP("Please Enter Password ","Error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 425 ;
HEIGHT 355 ;
TITLE "Welcome " + user ;
MODAL ;
BACKCOLOR {255,255,255} 

@ 35 ,54 LABEL lbl4 ;
VALUE "The course is avilable now" ;
WIDTH 291 ;
HEIGHT 53 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 88 ,85 LABEL lbl5 ;
VALUE "Press Start to Contiue " ;
WIDTH 212 ;
HEIGHT 55 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 140 ,157 BUTTONEX btn5;
CAPTION "";
PICTURE "start2.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK MSGINFO( "Staring ...." ) ;
WIDTH 75 HEIGHT 110 ;
TOOLTIP ""
@ 280 ,299 BUTTONEX btn6;
CAPTION "Quit ";
ON CLICK Logout()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 256 ,165 LABEL lbl6 ;
VALUE "Start " ;
WIDTH 37 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return
procedure Logout()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LOGINFORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Login  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name:  '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Pssword:'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'ecenter.jpg'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Welcome to E-learning  center '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Login '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Login",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Login ( Event : CLICK )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","pass = win1.text2.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Username ' Title 'Error ' Type: Message Stop",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( pass=='' )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Password ' Title 'Error ' Type: Message Stop",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Welcome ' + user",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",93,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'The course is avilable now'",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",99,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Press Start to Contiue '",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",108,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ''",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Staring ....'",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Quit '",123,124)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Logout",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Start '",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",131,137)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",138,139)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",140,142)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Logout ( Event : CLICK )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
Return
*-------------------------------------------------------------------*
