*---------------------------------------------------------------------------*
* Time : 01:38:39    Date : 01/08/2012
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


Resistance R_WASEEM9_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WASEEM9_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 392 ;
HEIGHT 167 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 19 ,33 LABEL lbl1 ;
VALUE "your name" ;
WIDTH 104 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 73 ,50 BUTTONEX btn1;
CAPTION "login";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 17 ,147 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 73 ,204 BUTTONEX btn3;
CAPTION "close.";
ON CLICK close2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("Enter your name","eror")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 295 ;
HEIGHT 472 ;
ICON "PWCTICON" ;
TITLE "Hello" +user ;
MODAL ;
BACKCOLOR {0,0,0} 

@ 7 ,13 LABEL lbl2 ;
VALUE "My works today :" ;
WIDTH 145 ;
HEIGHT 22 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 35 ,50 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 74 ,49 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 113 ,49 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 151 ,50 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 190 ,50 TEXTBOX text9;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 233 ,49 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 274 ,49 TEXTBOX text11;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 314 ,50 TEXTBOX text12;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 31 ,16 CHECKBOX check3;
CAPTION "";
WIDTH 30;
Height 34;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 105 ,19 CHECKBOX check4;
CAPTION "";
WIDTH 19;
Height 0;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 112 ,15 CHECKBOX check5;
CAPTION "";
WIDTH 32;
Height 31;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 150 ,16 CHECKBOX check6;
CAPTION "";
WIDTH 24;
Height 33;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 192 ,17 CHECKBOX check7;
CAPTION "";
WIDTH 31;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 231 ,15 CHECKBOX check8;
CAPTION "";
WIDTH 34;
Height 31;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 272 ,15 CHECKBOX check9;
CAPTION "";
WIDTH 28;
Height 27;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 311 ,16 CHECKBOX check10;
CAPTION "";
WIDTH 32;
Height 31;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 74 ,15 CHECKBOX check11;
CAPTION "";
WIDTH 29;
Height 28;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {0,0,0}
@ 375 ,85 BUTTONEX btn2;
CAPTION "close";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
win1.Release ( )
win2.Release ( )
Return Nil
Proc close2
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM9
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'your name'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'login'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform()",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'close.'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close2()",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Enter your name' Title 'eror' Type: Message Exclamation",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello' +user",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'My works today :'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",90,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",102,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check3 ) , Caption : ''",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check4 ) , Caption : ''",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check5 ) , Caption : ''",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check6 ) , Caption : ''",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",136,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check7 ) , Caption : ''",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",143,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check8 ) , Caption : ''",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",150,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check9 ) , Caption : ''",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",157,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check10 ) , Caption : ''",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",164,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check11 ) , Caption : ''",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",171,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close'",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",179,181)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",182,183)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close2",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",195,195)
Return
*-------------------------------------------------------------------*
