*---------------------------------------------------------------------------*
* Time : 21:00:31    Date : 03/01/2012
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
WIDTH 331 ;
HEIGHT 376 ;
ICON "PWCTICON" ;
TITLE " Main Window " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 246 ,108 BUTTONEX btn1;
CAPTION " Login";
BACKCOLOR {255,255,255};
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 189 ,131 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 151 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 190 ,28 LABEL lbl1 ;
VALUE "User Name " ;
WIDTH 82 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,0,0}
@ 10 ,208 IMAGE image1;
PICTURE "Moslima.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 133 ,131 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 150 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 135 ,27 LABEL lbl2 ;
VALUE " Message " ;
WIDTH 82 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,0,0}
DEFINE MAIN MENU
POPUP "File "
MENUITEM "Exit " Action close()
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
MyOut := MSGExclamation("Please Enter UserName ","Error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 249 ;
HEIGHT 242 ;
ICON "PWCTICON" ;
TITLE " Hello "+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 6 ,10 IMAGE image2;
PICTURE "welcome.jpg";
STRETCH ;
WHITEBACKGROUND ;
WIDTH 223 HEIGHT 187
@ 153 ,46 LABEL lbl3 ;
VALUE message+" " + user ;
WIDTH 147 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 10 ,69 BUTTONEX btn2;
CAPTION "<<Back ";
ON CLICK closeform2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Do you want to close App ? ","close App ")
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Main Window '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' Login'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Moslima.jpg'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' Message '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Date",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter UserName ' Title 'Error ' Type: Message Exclamation",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' Hello '+user",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",85,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'welcome.jpg'",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : message+' ' + user",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",98,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<<Back '",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform2",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",108,110)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",113,115)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to close App ? ' Title 'close App ' Type: Message Ok/Cancel",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform2",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
Return
*-------------------------------------------------------------------*
