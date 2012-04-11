*---------------------------------------------------------------------------*
* Time : 15:04:49    Date : 04/06/2012
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


Resistance R_USER_NAME_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_USER_NAME_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 413 ;
HEIGHT 399 ;
ICON "PWCTICON" ;
TITLE "user name  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,128} 

@ 223 ,16 LABEL lbl1 ;
VALUE "user name " ;
WIDTH 200 ;
HEIGHT 47 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 219 ,166 TEXTBOX text1;
HEIGHT 44 ;
WIDTH 219 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 281 ,143 BUTTONEX btn1;
CAPTION "log on ";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 11 ,134 IMAGE image1;
PICTURE "LAUGH.ICO";
STRETCH ;
WIDTH 145 HEIGHT 130
@ 171 ,22 LABEL lbl2 ;
VALUE "message " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 163 ,163 TEXTBOX text2;
HEIGHT 44 ;
WIDTH 223 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU
POPUP " file"
MENUITEM "exit " Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure logform()
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation(" plz enter user name"," error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 407 ;
HEIGHT 260 ;
ICON "PWCTICON" ;
TITLE "Hellow "+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,255,255} 

@ 93 ,99 LABEL lbl3 ;
VALUE message + " " + user ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 168 ,25 BUTTONEX btn2;
CAPTION "<< Back ";
ON CLICK pclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return
Proc close
MyOut := MSGOKCANCEL(" do you want to close ?"," close app")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
procedure pclose()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_USER_NAME
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'user name  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'log on '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'LAUGH.ICO'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'message '",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' file'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit ' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'ready' )",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Date",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform ( Event : CLICK )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' plz enter user name' Title ' error' Type: Message Exclamation",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hellow '+user",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",87,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : message + ' ' + user",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",95,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<< Back '",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pclose",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' do you want to close ?' Title ' close app' Type: Message Ok/Cancel",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pclose ( Event : CLICK )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
Return
*-------------------------------------------------------------------*
