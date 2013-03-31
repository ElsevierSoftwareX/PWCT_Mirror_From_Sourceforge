*---------------------------------------------------------------------------*
* Time : 21:52:23    Date : 10/19/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_BIRTHDAY_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_BIRTHDAY_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "birthday" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 224 ,70 LABEL lbl1 ;
VALUE "Pleas Enter Your Name" ;
WIDTH 356 ;
HEIGHT 40 ;
FONT "Gill Sans Ultra Bold" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 325 ,375 BUTTONEX btn1;
CAPTION "Done";
ON CLICK reem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
@ 272 ,133 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 219 ;
FONT "Bauhaus 93" SIZE 20 ;
BACKCOLOR {255,225,240} ;
FONTCOLOR {0,0,0} 

@ 1 ,24 IMAGE image1;
PICTURE "HAPPY-BIRTHDAY.JPG";
STRETCH ;
WIDTH 420 HEIGHT 216
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc reem
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("Pleas Enter Your Name!!","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 499 ;
HEIGHT 397 ;
ICON "PWCTICON" ;
TITLE "Happy Birth Day"+ user ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 120 ,270 IMAGE image1;
PICTURE "HELLO.JPG";
STRETCH ;
WIDTH 190 HEIGHT 250
@ 15 ,34 LABEL lbl1 ;
VALUE "Happy Birthday " + user ;
WIDTH 430 ;
HEIGHT 69 ;
FONT "Cooper Black" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 64 ,5 LABEL lbl2 ;
VALUE "We wish a special day to you" ;
WIDTH 474 ;
HEIGHT 46 ;
FONT "Cooper Black" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_BIRTHDAY
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'birthday'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Pleas Enter Your Name'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Done'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action reem()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'HAPPY-BIRTHDAY.JPG'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure reem",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Pleas Enter Your Name!!' Title 'Error' Type: Message Exclamation",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Happy Birth Day'+ user",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'HELLO.JPG'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Happy Birthday ' + user",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'We wish a special day to you'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
Return
*-------------------------------------------------------------------*
