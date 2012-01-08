*---------------------------------------------------------------------------*
* Time : 17:01:57    Date : 01/08/2012
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


Resistance R_9_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_9_18smart1() code
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
HEIGHT 34 ;
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
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure logs()
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

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return


End Of Resistance

INIT PROCEDURE Init_9
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
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logs ( Event : CLICK )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( name=='' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Username !' Title 'Error' Type: Message Exclamation",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello' + ' ' +name",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
