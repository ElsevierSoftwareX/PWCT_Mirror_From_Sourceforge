*---------------------------------------------------------------------------*
* Time : 06:53:33    Date : 10/22/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_MIXCOLORS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MIXCOLORS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 501 ;
HEIGHT 301 ;
ICON "PWCTICON" ;
TITLE "Mix Colors" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 13 ,74 TEXTBOX text1;
ON CHANGE Mix()  ;
HEIGHT 30 ;
WIDTH 72 ;
VALUE 255 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 68 ,74 TEXTBOX text2;
ON CHANGE Mix()  ;
HEIGHT 30 ;
WIDTH 72 ;
VALUE 255 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 123 ,74 TEXTBOX text3;
ON CHANGE Mix()  ;
HEIGHT 30 ;
WIDTH 72 ;
VALUE 255 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 13 ,166 SLIDER slider1;
RANGE 0 , 255;
ON Scroll Cmix()  ;
VALUE 255 ;
WIDTH 313 ;
HEIGHT 30 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" ;
NOTICKS 

@ 68 ,166 SLIDER slider2;
RANGE 0 , 255;
ON Scroll Cmix()  ;
VALUE 255 ;
WIDTH 313 ;
HEIGHT 30 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" ;
NOTICKS 

@ 123 ,166 SLIDER slider3;
RANGE 0 , 255;
ON Scroll Cmix()  ;
VALUE 255 ;
WIDTH 313 ;
HEIGHT 30 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" ;
NOTICKS 

@ 228 ,379 BUTTONEX btn1;
CAPTION "Close";
ON CLICK Exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 13 ,8 LABEL lbl1 ;
VALUE "Red" ;
WIDTH 51 ;
HEIGHT 19 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 68 ,8 LABEL lbl2 ;
VALUE "Green" ;
WIDTH 54 ;
HEIGHT 19 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 123 ,8 LABEL lbl3 ;
VALUE "Blue" ;
WIDTH 56 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 167 ,176 LABEL lbl4 ;
VALUE "" ;
WIDTH 303 ;
HEIGHT 50 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 228 ,260 BUTTONEX btn2;
CAPTION "About";
ON CLICK About()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Mix
R := win1.text1.Value
G := win1.text2.Value
B := win1.text3.Value
win1.lbl4.BackColor := {R,G,B}
Return Nil
Proc Cmix
SR := win1.Slider1.Value
SG := win1.Slider2.Value
SB := win1.Slider3.Value
win1.text1.Value := SR
win1.text2.Value := SG
win1.text3.Value := SB
Return Nil
Proc Exit
win1.Release ( )
Return Nil
Proc About
MyOut := MSGINFO("This program designed by Sameh Kamel using PWCT","Mix Colors")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MIXCOLORS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Mix Colors'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Mix",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",17,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Mix",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Mix",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Slider ( slider1 )",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON Scroll : Action Cmix",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Properties",51,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Slider ( slider2 )",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON Scroll : Action Cmix",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Properties",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Slider ( slider3 )",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON Scroll : Action Cmix",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Properties",71,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Exit",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Red'",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",86,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Green'",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Blue'",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",100,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : ''",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'About'",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action About",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",120,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mix",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","R = win1.text1.Value",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","G = win1.text2.Value",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","B = win1.text3.Value",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.BackColor := {R,G,B}",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Cmix",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","SR = win1.Slider1.Value",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","SG = win1.Slider2.Value",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","SB = win1.Slider3.Value",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := SR",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := SG",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := SB",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure About",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This program designed by Sameh Kamel using PWCT' Title 'Mix Colors' Type: Message Info",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
Return
*-------------------------------------------------------------------*
