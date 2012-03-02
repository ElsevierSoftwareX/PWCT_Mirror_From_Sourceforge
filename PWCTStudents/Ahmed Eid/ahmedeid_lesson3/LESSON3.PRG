*---------------------------------------------------------------------------*
* Time : 14:40:46    Date : 03/01/2012
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


Resistance R_LESSON3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 508 ;
HEIGHT 446 ;
ICON "PWCTICON" ;
TITLE "mainwindow  " ;
MAIN ;
BACKCOLOR {0,255,0} 

@ 155 ,-1 LABEL lbl1 ;
VALUE "user name " ;
WIDTH 167 ;
HEIGHT 59 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 154 ,166 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 331 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 183 ,166 BUTTONEX btn1;
CAPTION "login ";
ON CLICK login()  ;
WIDTH 333 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 214 ,-20 IMAGE image1;
PICTURE "Image.jpg";
STRETCH ;
WIDTH 518 HEIGHT 195
@ -2 ,-1 IMAGE image2;
PICTURE "aeid.jpg";
STRETCH ;
WIDTH 499 HEIGHT 156
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
user := win1.text1.Value
IF user==""
MyOut := MSGBOX("Please Enter User Name "," Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 711 ;
HEIGHT 228 ;
ICON "PWCTICON" ;
TITLE "Hello  " + user ;
MODAL ;
BACKCOLOR {255,255,0} 

@ 153 ,-1 LABEL lbl2 ;
VALUE "             if u need something else please contact me 01061679790 " ;
WIDTH 710 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
UNDERLINE ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 0 ,-1 IMAGE image3;
PICTURE "aaeid.jpg";
STRETCH ;
WIDTH 703 HEIGHT 153
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'mainwindow  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'login '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Image.jpg'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'aeid.jpg'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter User Name ' Title ' Error' Type: Message Box",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello  ' + user",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '             if u need something else please contact me 01061679790 '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'aaeid.jpg'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
