*---------------------------------------------------------------------------*
* Time : 02:30:56    Date : 04/10/2012
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


Resistance R_LOGONFORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGONFORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 514 ;
HEIGHT 299 ;
ICON "PWCTICON" ;
TITLE "Main Window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,0} 

@ 171 ,178 BUTTONEX btn1;
CAPTION "LogIn";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 107 ,142 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 109 ,25 LABEL lbl1 ;
VALUE "User Name" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 0 ,374 IMAGE image1;
PICTURE "C:\Documents and Settings\Kibreet\Desktop\All Test\test03\login.bmp";
STRETCH ;
WIDTH 129 HEIGHT 101
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc LogForm
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("Please Enter UserName","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 361 ;
HEIGHT 187 ;
ICON "PWCTICON" ;
TITLE "Hello" +" " + user ;
MODAL ;
NOSIZE ;
BACKCOLOR {128,128,255} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGONFORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main Window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'LogIn'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform()",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'C:\Documents and Settings\Kibreet\Desktop\All Test\test03\login.bmp'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LogForm",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter UserName' Title 'Error' Type: Message Exclamation",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello' +' ' + user",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
