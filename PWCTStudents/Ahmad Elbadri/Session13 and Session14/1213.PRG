*---------------------------------------------------------------------------*
* Time : 22:53:24    Date : 01/22/2012
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


Resistance R_1213_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_1213_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 578 ;
HEIGHT 412 ;
ICON "PWCTICON" ;
TITLE "12-13" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 60 ,1 LABEL lbl1 ;
VALUE "Please Enter Your Name :" ;
WIDTH 246 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 111 ,1 TEXTBOX text1;
ON ENTER sayhello()  ;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 160 ,1 BUTTONEX btn1;
CAPTION "Say Hello";
FONTCOLOR {0,0,255};
ON CLICK sayhello()  ;
WIDTH 102 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 69 ,314 LABEL lbl2 ;
VALUE "From :" ;
WIDTH 59 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 68 ,443 LABEL lbl3 ;
VALUE "To :" ;
WIDTH 37 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 63 ,381 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 51 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 64 ,483 TEXTBOX text3;
HEIGHT 31 ;
WIDTH 50 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 109 ,380 BUTTONEX btn2;
CAPTION "Count";
FONTCOLOR {255,0,0};
ON CLICK count()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 145 ,331 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,392 LABEL lbl4 ;
VALUE "Counter" ;
WIDTH 103 ;
HEIGHT 39 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc sayhello
name := win1.text1.Value
MyOut := MSGBOX("Hello "+name,"Welcome")
Return Nil
Proc count
f := win1.text2.Value
t := win1.text3.Value
FOR x = f TO t STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_1213
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '12-13'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Please Enter Your Name :'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action sayhello",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Hello'",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sayhello",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'From :'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'To :'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Count'",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Counter'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sayhello",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Hello '+name Title 'Welcome' Type: Message Box",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","f = win1.text2.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","t = win1.text3.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = f To t Step 1)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
Return
*-------------------------------------------------------------------*
