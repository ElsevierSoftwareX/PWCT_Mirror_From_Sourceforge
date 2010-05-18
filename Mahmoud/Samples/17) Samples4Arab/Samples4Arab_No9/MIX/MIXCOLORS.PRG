#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 18:21:18    Date : 01/19/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance RRXXHY1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RRXXHY1() code
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
READONLY ;
FONT "Arial" SIZE 14 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0}
@ 68 ,74 TEXTBOX text2;
ON CHANGE Mix()  ;
HEIGHT 30 ;
WIDTH 72 ;
VALUE 255 ;
READONLY ;
FONT "Arial" SIZE 14 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0}
@ 123 ,74 TEXTBOX text3;
ON CHANGE Mix()  ;
HEIGHT 30 ;
WIDTH 72 ;
VALUE 255 ;
READONLY ;
FONT "Arial" SIZE 14 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0}
@ 13 ,166 SLIDER slider1;
RANGE 0 , 255;
ON Scroll Cmix()  ;
VALUE 255 ;
WIDTH 313 ;
HEIGHT 30 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" 

@ 68 ,166 SLIDER slider2;
RANGE 0 , 255;
ON Scroll Cmix()  ;
VALUE 255 ;
WIDTH 313 ;
HEIGHT 30 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" 

@ 123 ,166 SLIDER slider3;
RANGE 0 , 255;
ON Scroll Cmix()  ;
VALUE 255 ;
WIDTH 313 ;
HEIGHT 30 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" 

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

INIT PROCEDURE Init_MIX_COLORS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",16,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Slider ( slider1 )",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON Scroll",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Slider ( slider2 )",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON Scroll",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Properties",59,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Slider ( slider3 )",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON Scroll",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Properties",68,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 )",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Procedure",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mix",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","R = win1.text1.Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","G = win1.text2.Value",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","B = win1.text3.Value",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.BackColor := {R,G,B}",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Cmix",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","SR = win1.Slider1.Value",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","SG = win1.Slider2.Value",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","SB = win1.Slider3.Value",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := SR",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := SG",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := SB",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure About",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This program designed by Sameh Kamel using PWCT' Title 'Mix Colors' Type: Message Info",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",137,137)
Return
*-------------------------------------------------------------------*
