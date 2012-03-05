*---------------------------------------------------------------------------*
* Time : 21:13:17    Date : 03/02/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 370 ;
HEIGHT 389 ;
ICON "PWCTICON" ;
TITLE "Design New Window" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {184,219,254} 

@ 34 ,110 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 97 ,108 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 160 ,106 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 223 ,104 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 36 ,42 LABEL lbl1 ;
VALUE "Height :" ;
WIDTH 53 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 11  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,0}
@ 100 ,42 LABEL lbl2 ;
VALUE "Width :" ;
WIDTH 49 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 11  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,0}
@ 161 ,42 LABEL lbl3 ;
VALUE "Color :" ;
WIDTH 50 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 11  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,0}
@ 225 ,42 LABEL lbl4 ;
VALUE "Title :" ;
WIDTH 40 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 11  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,0}
@ 296 ,88 BUTTONEX btn1;
CAPTION "Creat Form ";
ON CLICK createform()  ;
WIDTH 172 HEIGHT 28 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc createform
height := win1.text1.Value
width := win1.text2.Value
colornum := win1.text3.Value
title := win1.text4.Value
IF height==""
MyOut := MSGExclamation("Please Enter your desired height ","Error")
ELSEIF width==""
MyOut := MSGExclamation("Please Enter your desired width  "," Error")
ELSEIF colornum==""
MyOut := MSGExclamation("Please Enter your desired color  "," Error")
ELSEIF title==""
MyOut := MSGExclamation("Please Enter your desired title  "," Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &width ;
HEIGHT &height ;
ICON "PWCTICON" ;
TITLE "&title  " ;
MODAL ;
NOSIZE ;
BACKCOLOR {&colornum} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Design New Window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Height :'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Width :'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Color :'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Title :'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Creat Form '",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action createform()",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure createform",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text1.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text2.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","colornum = win1.text3.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text4.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( height=='' )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter your desired height ' Title 'Error' Type: Message Exclamation",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( width=='' )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter your desired width  ' Title ' Error' Type: Message Exclamation",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( colornum=='' )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter your desired color  ' Title ' Error' Type: Message Exclamation",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( title=='' )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter your desired title  ' Title ' Error' Type: Message Exclamation",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title  '",106,110)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",111,116)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
Return
*-------------------------------------------------------------------*
