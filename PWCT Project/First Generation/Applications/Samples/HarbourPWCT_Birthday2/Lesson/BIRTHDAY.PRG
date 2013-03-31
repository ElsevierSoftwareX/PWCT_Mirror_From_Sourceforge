*---------------------------------------------------------------------------*
* Time : 22:01:41    Date : 10/19/2011
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
WIDTH 497 ;
HEIGHT 511 ;
ICON "PWCTICON" ;
TITLE "birthday" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 224 ,65 LABEL lbl1 ;
VALUE "Pleas Enter Your Name" ;
WIDTH 356 ;
HEIGHT 40 ;
FONT "Gill Sans Ultra Bold" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 407 ,374 BUTTONEX btn1;
CAPTION "Done";
ON CLICK reem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
@ 275 ,123 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 219 ;
FONT "Bauhaus 93" SIZE 20 ;
BACKCOLOR {255,225,240} ;
FONTCOLOR {0,0,0} 

@ 15 ,12 IMAGE image1;
PICTURE "HAPPY-BIRTHDAY.JPG";
STRETCH ;
WIDTH 449 HEIGHT 202
DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action myclose()
END POPUP
END MENU
@ 327 ,154 LABEL lbl2 ;
VALUE "Your age" ;
WIDTH 157 ;
HEIGHT 44 ;
FONT "Gill Sans Ultra Bold" SIZE 20  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 373 ,123 TEXTBOX text2;
HEIGHT 41 ;
WIDTH 221 ;
FONT "Elephant" SIZE 18 ;
BACKCOLOR {255,221,238} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc reem
user := win1.text1.Value
age := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Pleas Enter Your Name!!","Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 508 ;
HEIGHT 421 ;
ICON "PWCTICON" ;
TITLE "Happy Birth Day "+ user ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 103 ,123 IMAGE image1;
PICTURE "HELLO.JPG";
STRETCH ;
WIDTH 304 HEIGHT 219
@ 7 ,8 LABEL lbl1 ;
VALUE "Happy Birthday " + user ;
WIDTH 490 ;
HEIGHT 39 ;
FONT "Cooper Black" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 328 ,13 LABEL lbl2 ;
VALUE "We wish a special day to you" ;
WIDTH 474 ;
HEIGHT 46 ;
FONT "Cooper Black" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
@ 51 ,73 LABEL lbl3 ;
VALUE "you are "+age + " years old" ;
WIDTH 385 ;
HEIGHT 41 ;
FONT "Cooper Black" SIZE 22  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc myclose
MyOut := MSGOKCANCEL("Do you want to close birthday Application?","exit message")
IF myOut=true
win1.Release ( )
ELSE
Return 0
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
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Your age'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure reem",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","age = win1.text2.Value",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Pleas Enter Your Name!!' Title 'Error' Type: Message Exclamation",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Happy Birth Day '+ user",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",73,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'HELLO.JPG'",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Happy Birthday ' + user",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'We wish a special day to you'",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",92,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'you are '+age + ' years old'",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",99,103)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to close birthday Application?' Title 'exit message' Type: Message Ok/Cancel",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myOut=true )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
Return
*-------------------------------------------------------------------*
