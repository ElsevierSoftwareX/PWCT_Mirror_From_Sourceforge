*---------------------------------------------------------------------------*
* Time : 16:22:47    Date : 12/20/2011
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


Resistance R_NEW2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 437 ;
HEIGHT 267 ;
ICON "PWCTICON" ;
TITLE "log in window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,255,255} 

@ 147 ,61 BUTTONEX btn1;
CAPTION "log in";
ON CLICK login()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 147 ,232 BUTTONEX btn2;
CAPTION "exit";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 41 ,66 LABEL lbl1 ;
VALUE "user name" ;
WIDTH 78 ;
HEIGHT 17 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {255,255,0}
@ 83 ,66 LABEL lbl2 ;
VALUE "password" ;
WIDTH 78 ;
HEIGHT 17 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {255,255,0}
@ 77 ,165 TEXTBOX text2;
HEIGHT 22 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 33 ,165 TEXTBOX text1;
HEIGHT 22 ;
WIDTH 202 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure exit()
win1.Release ( )
return
procedure login()
username := win1.text1.Value
password := win1.text2.Value
IF username=="munzer"
IF password=="147258"
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 620 ;
HEIGHT 447 ;
ICON "PWCTICON" ;
TITLE "welcome"+username ;
MODAL ;
BACKCOLOR {255,255,128} 

@ 8 ,233 LABEL lbl3 ;
VALUE "welcome sir" ;
WIDTH 118 ;
HEIGHT 29 ;
FONT "andalus" SIZE 14  ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0}
@ 57 ,8 IMAGE image1;
PICTURE "NATURE_1.JPG";
WIDTH 290 HEIGHT 320
@ 57 ,302 IMAGE image3;
PICTURE "PHOTO_450X450_014.JPG";
WIDTH 290 HEIGHT 320
END WINDOW

ACTIVATE WINDOW win2
EndIF

ELSE
MyOut := MSGBOX("user name or password is incorrect","error")
ENDIF
ELSE
MyOut := MSGBOX("user name or password is incorrect","error")
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_NEW2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'log in window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'log in'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'exit'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'password'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login ( Event : CLICK )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","username = win1.text1.Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","password = win1.text2.Value",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( username=='munzer' )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( password=='147258' )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'welcome'+username",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'welcome sir'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'NATURE_1.JPG'",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'PHOTO_450X450_014.JPG'",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'user name or password is incorrect' Title 'error' Type: Message Box",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'user name or password is incorrect' Title 'error' Type: Message Box",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",100,100)
Return
*-------------------------------------------------------------------*
