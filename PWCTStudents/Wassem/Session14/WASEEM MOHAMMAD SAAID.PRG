#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 20:40:08    Date : 01/16/2012
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


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 675 ;
HEIGHT 399 ;
ICON "PWCTICON" ;
TITLE "The Counter" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,160} 

@ 31 ,2 LABEL lbl1 ;
VALUE "The First work number" ;
WIDTH 214 ;
HEIGHT 37 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 72 ,6 LABEL lbl2 ;
VALUE "The Last work number" ;
WIDTH 215 ;
HEIGHT 38 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 32 ,221 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 68 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 71 ,219 TEXTBOX text2;
HEIGHT 29 ;
WIDTH 72 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 133 ,30 BUTTONEX btn1;
CAPTION "The works that I have to end it";
ON CLICK btnn()  ;
WIDTH 252 HEIGHT 25 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 27 ,296 EDITBOX edit1;
WIDTH 98 ;
HEIGHT 283;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 172 ,31 IMAGE image1;
PICTURE "wwww.jpg";
STRETCH ;
WIDTH 252 HEIGHT 138
@ 323 ,22 BUTTONEX btn2;
CAPTION "CLOSE";
ON CLICK close()  ;
WIDTH 374 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "General"
MENUITEM "The progammer" Action MSGINFO( "The programmer is Waseem Mohammad Saaid from Syria / Dair Al-zoor" )
MENUITEM "Help" Action MSGINFO( "You can enter the first number and the last one then press the button " )
END POPUP
END MENU
@ 318 ,441 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 42 ,441 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 81 ,441 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 120 ,441 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 159 ,441 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 200 ,441 TEXTBOX text9;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 240 ,441 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 280 ,441 TEXTBOX text11;
HEIGHT 30 ;
WIDTH 200 ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 48 ,410 LABEL lbl4 ;
VALUE "1" ;
WIDTH 17 ;
HEIGHT 33 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 82 ,410 LABEL lbl5 ;
VALUE "2" ;
WIDTH 32 ;
HEIGHT 37 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 124 ,410 LABEL lbl6 ;
VALUE "3" ;
WIDTH 28 ;
HEIGHT 26 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 162 ,410 LABEL lbl7 ;
VALUE "4" ;
WIDTH 27 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 203 ,410 LABEL lbl8 ;
VALUE "5" ;
WIDTH 25 ;
HEIGHT 31 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 242 ,410 LABEL lbl9 ;
VALUE "6" ;
WIDTH 20 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 281 ,410 LABEL lbl10 ;
VALUE "7" ;
WIDTH 22 ;
HEIGHT 29 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 317 ,410 LABEL lbl11 ;
VALUE "8" ;
WIDTH 26 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
@ 8 ,440 LABEL lbl12 ;
VALUE "My works:" ;
WIDTH 120 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc btnn
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x = num1 TO num2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM_MOHAMMAD_SAAID
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'The Counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The First work number'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'The Last work number'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'The works that I have to end it'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnn()",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'wwww.jpg'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Image Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'CLOSE'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'General'",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'The progammer' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Help' )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",72,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",79,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",86,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",93,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",100,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",107,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",114,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",121,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '1'",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '2'",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",136,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : '3'",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",143,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '4'",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",150,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : '5'",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",157,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : '6'",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",164,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : '7'",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",171,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : '8'",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",178,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'My works:'",183,184)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",185,189)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",190,191)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",192,194)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",195,197)
SS_ESASTEP("Circuits\Main\Main\Main","pro",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnn",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",204,208)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Start Here",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",213,213)
Return
*-------------------------------------------------------------------*
