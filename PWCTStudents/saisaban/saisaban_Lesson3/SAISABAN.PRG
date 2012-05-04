*---------------------------------------------------------------------------*
* Time : 12:09:56    Date : 04/17/2012
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
WIDTH 449 ;
HEIGHT 139 ;
ICON "PWCTICON" ;
TITLE "M-A-I" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {128,128,255} 

@ 44 ,116 LABEL lbl1 ;
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
WIDTH 101 HEIGHT 99
@ 43 ,222 TEXTBOX textUserName;
ON ENTER MyHello()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 7 ,114 LABEL lbl4 ;
VALUE "Press Enter To Login " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Bauhaus 93" SIZE 14  ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MyHello
Name := win1.textUserName.Value
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
@ 85 ,163 LABEL lbl3 ;
VALUE "Sisaban " ;
WIDTH 142 ;
HEIGHT 39 ;
FONT "Bradley Hand ITC" SIZE 16  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_SAISABAN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'M-A-I'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user Name :'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Images\saisaban.jpg'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textUserName  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action MyHello()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Press Enter To Login '",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyHello",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Name = win1.textUserName.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' Hello ' + Name",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Hello ' + Name + ' ....thank you for useing my program'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Sisaban '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",78,78)
Return
*-------------------------------------------------------------------*
