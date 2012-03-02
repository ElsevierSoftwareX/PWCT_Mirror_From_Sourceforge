*---------------------------------------------------------------------------*
* Time : 21:16:36    Date : 02/25/2012
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


Resistance R_LOGIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 325 ;
HEIGHT 334 ;
ICON "PWCTICON" ;
TITLE " Main Window " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 236 ,108 BUTTONEX btn1;
CAPTION " Login";
BACKCOLOR {255,255,255};
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 159 ,131 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 151 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 160 ,28 LABEL lbl1 ;
VALUE "User Name " ;
WIDTH 82 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,0,0}
@ 20 ,198 IMAGE image1;
PICTURE "Moslima.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("Please Enter UserName ","Error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 249 ;
HEIGHT 242 ;
ICON "PWCTICON" ;
TITLE " Hello "+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 6 ,10 IMAGE image2;
PICTURE "welcome.jpg";
STRETCH ;
WHITEBACKGROUND ;
WIDTH 223 HEIGHT 187
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Main Window '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' Login'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Moslima.jpg'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter UserName ' Title 'Error ' Type: Message Exclamation",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' Hello '+user",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'welcome.jpg'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
Return
*-------------------------------------------------------------------*
