*---------------------------------------------------------------------------*
* Time : 20:08:52    Date : 10/19/2011
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


Resistance R_APPLICATION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Reem" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 207 ,140 LABEL lbl1 ;
VALUE "Message" ;
WIDTH 82 ;
HEIGHT 29 ;
FONT "Cooper Black" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 134 ,154 LABEL lbl2 ;
VALUE "Title" ;
WIDTH 60 ;
HEIGHT 28 ;
FONT "Cooper Black" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 12 ,23 LABEL lbl3 ;
VALUE "please type your message here" ;
WIDTH 447 ;
HEIGHT 47 ;
FONT "Cooper Black" SIZE 22  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 323 ,378 BUTTONEX btn1;
CAPTION "exit";
FONTCOLOR {0,128,255};
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 320 ,14 BUTTONEX btn2;
CAPTION "show";
FONTCOLOR {0,128,255};
ON CLICK myshow()  ;
WIDTH 101 HEIGHT 36 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 207 ,220 TEXTBOX text1;
HEIGHT 89 ;
WIDTH 252 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 128 ,220 TEXTBOX text2;
HEIGHT 49 ;
WIDTH 215 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 52 ,12 IMAGE image1;
PICTURE "NEITH.JPG";
STRETCH ;
WIDTH 120 HEIGHT 260
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc myshow
roma := win1.text1.Value
num := win1.text2.Value
MyOut := MSGINFO(roma,num)
Return Nil


End Of Resistance

INIT PROCEDURE Init_APPLICATION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Reem'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Message'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Title'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'please type your message here'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'exit'",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'show'",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myshow()",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'NEITH.JPG'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myshow",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","roma = win1.text1.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.text2.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message roma Title num Type: Message Info",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
