*---------------------------------------------------------------------------*
* Time : 11:18:48    Date : 07/07/2012
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


Resistance R_LOGIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 442 ;
HEIGHT 387 ;
ICON "PWCTICON" ;
TITLE "Main Window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,0} 

@ 176 ,24 LABEL lbl1 ;
VALUE "User Name:" ;
WIDTH 117 ;
HEIGHT 34 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,0,0}
@ 228 ,149 BUTTONEX btn1;
CAPTION "Login";
ON CLICK logform()  ;
WIDTH 215 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 176 ,148 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 214 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,15 IMAGE image1;
PICTURE "logo.jpg";
STRETCH ;
WIDTH 386 HEIGHT 92
@ 122 ,31 LABEL lbl2 ;
VALUE "Message:" ;
WIDTH 111 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 124 ,147 TEXTBOX text2;
HEIGHT 34 ;
WIDTH 221 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("«·—Ã«¡ √œŒ«· «·√”„ ›Ì «·Õﬁ·","Œÿ√")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 482 ;
HEIGHT 297 ;
ICON "PWCTICON" ;
TITLE user+" "+"„—Õ»«" ;
MODAL ;
BACKCOLOR {128,0,0} 

@ 86 ,28 LABEL lbl1 ;
VALUE message+" "+user ;
WIDTH 419 ;
HEIGHT 46 ;
FONT "Tahoma" SIZE 24  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {255,255,255}
@ 211 ,343 BUTTONEX btn1;
CAPTION "<< Back";
ON CLICK closeform2()  ;
WIDTH 107 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Â·  —Ìœ ›⁄·« «·Œ—ÊÃ ø","—”«·…  √ﬂÌœ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc closeform2
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main Window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name:'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'logo.jpg'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message:'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Date",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«·—Ã«¡ √œŒ«· «·√”„ ›Ì «·Õﬁ·' Title 'Œÿ√' Type: Message Exclamation",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : user+' '+'„—Õ»«'",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : message+' '+user",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '<< Back'",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform2()",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ ›⁄·« «·Œ—ÊÃ ø' Title '—”«·…  √ﬂÌœ' Type: Message Ok/Cancel",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform2",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
Return
*-------------------------------------------------------------------*
