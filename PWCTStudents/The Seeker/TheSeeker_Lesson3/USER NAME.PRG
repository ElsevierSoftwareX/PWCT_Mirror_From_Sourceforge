*---------------------------------------------------------------------------*
* Time : 19:18:06    Date : 03/14/2012
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


Resistance R_USER_NAME_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_USER_NAME_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 413 ;
HEIGHT 399 ;
ICON "PWCTICON" ;
TITLE "user name  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,128} 

@ 192 ,14 LABEL lbl1 ;
VALUE "user name " ;
WIDTH 200 ;
HEIGHT 47 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 193 ,153 TEXTBOX text1;
HEIGHT 41 ;
WIDTH 221 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 270 ,136 BUTTONEX btn1;
CAPTION "log on ";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 36 ,141 IMAGE image1;
PICTURE "LAUGH.ICO";
STRETCH ;
WIDTH 145 HEIGHT 130
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure logform()
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation(" plz enter user name"," error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 407 ;
HEIGHT 260 ;
ICON "PWCTICON" ;
TITLE "Hellow "+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,255,255} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return


End Of Resistance

INIT PROCEDURE Init_USER_NAME
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'user name  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'log on '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'LAUGH.ICO'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' plz enter user name' Title ' error' Type: Message Exclamation",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hellow '+user",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
Return
*-------------------------------------------------------------------*
