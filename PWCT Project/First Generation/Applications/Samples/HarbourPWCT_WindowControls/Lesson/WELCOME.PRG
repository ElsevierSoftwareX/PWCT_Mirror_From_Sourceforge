*---------------------------------------------------------------------------*
* Time : 16:09:57    Date : 10/19/2011
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


Resistance R_WELCOME_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WELCOME_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 592 ;
HEIGHT 464 ;
ICON "PWCTICON" ;
TITLE "Sbonge World" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "SPONGEBOB.ANI" ;
BACKCOLOR {255,255,255} 

@ 4 ,101 LABEL lbl1 ;
VALUE "Welcome to My World" ;
WIDTH 383 ;
HEIGHT 61 ;
FONT "Curlz MT" SIZE 26  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,64}
@ 377 ,455 BUTTONEX btn1;
CAPTION "Close";
ON CLICK MSGINFO( MyClose() ) ;
WIDTH 113 HEIGHT 40 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
@ 120 ,294 TEXTBOX text1;
HEIGHT 42 ;
WIDTH 158 ;
FONT "Arial" SIZE 20 ;
BACKCOLOR {253,235,232} ;
FONTCOLOR {0,0,0} 

@ 79 ,177 LABEL lbl2 ;
VALUE "Write your Name Please" ;
WIDTH 240 ;
HEIGHT 26 ;
FONT "Forte" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 219 ,294 LISTBOX list1;
WIDTH 159 ;
HEIGHT 45 ;
ITEMS {"english","Arabic","France"} ;
FONT "arial" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 176 ,177 LABEL lbl3 ;
VALUE "Enter Your Native Language" ;
WIDTH 270 ;
HEIGHT 38 ;
FONT "Forte" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 277 ,177 LABEL lbl4 ;
VALUE "Enter Your Country" ;
WIDTH 196 ;
HEIGHT 33 ;
FONT "Forte" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 313 ,294 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {"Egypt","USA","UK","Canada"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 93 ,11 IMAGE image1;
PICTURE "PICTURE1.JPG";
STRETCH ;
WIDTH 152 HEIGHT 189
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MyClose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WELCOME
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Sbonge World'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome to My World'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MyClose()",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Write your Name Please'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'english','Arabic','France'}",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Enter Your Native Language'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Enter Your Country'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Egypt','USA','UK','Canada'}",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PICTURE1.JPG'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyClose",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
Return
*-------------------------------------------------------------------*
