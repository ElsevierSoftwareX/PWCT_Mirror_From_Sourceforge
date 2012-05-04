*---------------------------------------------------------------------------*
* Time : 19:35:48    Date : 04/17/2012
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


Resistance R_SAISABAN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAISABAN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 471 ;
HEIGHT 157 ;
ICON "PWCTICON" ;
TITLE "M-A-I" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255} 

@ 70 ,129 LABEL lbl1 ;
VALUE "user Name :" ;
WIDTH 115 ;
HEIGHT 26 ;
FONT "Bauhaus 93" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 2 ,-2 IMAGE image1;
PICTURE "Images\saisaban.jpg";
STRETCH ;
WIDTH 107 HEIGHT 114
@ 69 ,235 TEXTBOX textUserName;
ON ENTER MyHello()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Blackadder ITC" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 7 ,114 LABEL lbl4 ;
VALUE "Press Enter To Login " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Bauhaus 93" SIZE 14  ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {255,255,255}
@ 32 ,126 LABEL lbl5 ;
VALUE "Signature " ;
WIDTH 94 ;
HEIGHT 28 ;
FONT "Bauhaus 93" SIZE 14  ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0}
@ 31 ,236 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Blackadder ITC" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MyHello
Name := win1.textUserName.Value
M := win1.text1.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 625 ;
HEIGHT 202 ;
ICON "PWCTICON" ;
TITLE " Hello " + Name ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 

@ 0 ,-5 LABEL lbl2 ;
VALUE "Hello " + Name + " ....thank you for useing my program" ;
WIDTH 665 ;
HEIGHT 58 ;
FONT "Blackadder ITC" SIZE 26  ;
BACKCOLOR {255,0,128} ;
FONTCOLOR {0,0,128}
@ 93 ,160 LABEL lbl3 ;
VALUE "Sisaban " ;
WIDTH 142 ;
HEIGHT 39 ;
FONT "Bradley Hand ITC" SIZE 16  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 135 ,500 BUTTONEX btn1;
CAPTION "Close ";
ON CLICK Close()  ;
WIDTH 113 HEIGHT 22 ;
FONT "Arial Narrow" SIZE 12 ;
TOOLTIP ""
@ 66 ,160 LABEL lbl6 ;
VALUE M ;
WIDTH 206 ;
HEIGHT 27 ;
FONT "Bradley Hand ITC" SIZE 16  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
Proc Close
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAISABAN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'M-A-I'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user Name :'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Images\saisaban.jpg'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textUserName  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action MyHello()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Press Enter To Login '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Signature '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyHello",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Name = win1.textUserName.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","M = win1.text1.Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' Hello ' + Name",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",68,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Hello ' + Name + ' ....thank you for useing my program'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Sisaban '",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close()",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : M",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",97,101)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
Return
*-------------------------------------------------------------------*
