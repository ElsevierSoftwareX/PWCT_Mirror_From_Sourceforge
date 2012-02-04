*---------------------------------------------------------------------------*
* Time : 01:01:39    Date : 02/04/2012
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


Resistance R_MAGED_ALGMAL_LOGIN_PRO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAGED_ALGMAL_LOGIN_PRO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 557 ;
HEIGHT 322 ;
ICON "PWCTICON" ;
TITLE "main window" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 178 ,48 LABEL lbl1 ;
VALUE "user name" ;
WIDTH 134 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 178 ,195 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 223 ,238 BUTTONEX btn1;
CAPTION "log in";
ON CLICK login()  ;
WIDTH 108 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 226 ,413 BUTTONEX btn2;
CAPTION "close";
ON CLICK closeapplication()  ;
WIDTH 108 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 15 ,198 IMAGE image1;
PICTURE "MEMBERS-LOGIN-RIGHT.JPG";
STRETCH ;
WIDTH 208 HEIGHT 127
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )
return
Proc login
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("Please Enter Username !","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 520 ;
HEIGHT 248 ;
ICON "PWCTICON" ;
TITLE "hello" +user ;
MODAL ;
BACKCOLOR {255,255,255} 

@ 171 ,396 BUTTONEX btn3;
CAPTION "close";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 5 ,142 IMAGE image2;
PICTURE "276898,XCITEFUN-WELCOME-MARVI.JPG";
STRETCH ;
WIDTH 257 HEIGHT 113
@ 164 ,10 LABEL lbl2 ;
VALUE "by / maged algmal" ;
WIDTH 206 ;
HEIGHT 40 ;
FONT "Brush Script MT" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
procedure close()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_MAGED_ALGMAL_LOGIN_PRO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'main window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'log in'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'MEMBERS-LOGIN-RIGHT.JPG'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Username !' Title 'Error' Type: Message Exclamation",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'hello' +user",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'close'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : '276898,XCITEFUN-WELCOME-MARVI.JPG'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'by / maged algmal'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
Return
*-------------------------------------------------------------------*
