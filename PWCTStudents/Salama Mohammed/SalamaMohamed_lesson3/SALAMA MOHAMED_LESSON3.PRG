*---------------------------------------------------------------------------*
* Time : 00:08:32    Date : 11/03/2012
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


Resistance R_SALAMA_MOHAMED_LESSON3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_MOHAMED_LESSON3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 210 ,300 ;
WIDTH 514 ;
HEIGHT 349 ;
ICON "PWCTICON" ;
TITLE " —ÕÌ» »«·ÌÊ“—" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 175 ,148 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 228 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 176 ,23 LABEL lbl1 ;
VALUE "user name" ;
WIDTH 115 ;
HEIGHT 39 ;
AUTOSIZE ;
FONT "Arial Black" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 230 ,206 BUTTONEX btn1;
CAPTION "login";
ON CLICK logform()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial Black" SIZE 14 ;
TOOLTIP ""
@ 13 ,156 IMAGE 1;
PICTURE "2.jpg";
STRETCH ;
WIDTH 208 HEIGHT 146
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
IF user==""
MyOut := MSGExclamation("„‰ ›÷·ﬂ «œŒ· «”„ﬂ ","Œÿ√ ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 210 ,350 ;
WIDTH 372 ;
HEIGHT 269 ;
ICON "PWCTICON" ;
TITLE "√Â·«Ê„—Õ»« "+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,255,255} 

@ 78 ,19 LABEL lbl2 ;
VALUE "„’„„ » ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ " ;
WIDTH 349 ;
HEIGHT 62 ;
AUTOSIZE ;
FONT "Arabic Typesetting" SIZE 24  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SALAMA_MOHAMED_LESSON3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' —ÕÌ» »«·ÌÊ“—'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'login'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( 1 ) , Image : '2.jpg'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„‰ ›÷·ﬂ «œŒ· «”„ﬂ ' Title 'Œÿ√ ' Type: Message Exclamation",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '√Â·«Ê„—Õ»« '+user",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '„’„„ » ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ '",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
Return
*-------------------------------------------------------------------*
