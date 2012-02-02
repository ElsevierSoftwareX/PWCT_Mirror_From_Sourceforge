*---------------------------------------------------------------------------*
* Time : 14:50:08    Date : 02/01/2012
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
WIDTH 492 ;
HEIGHT 370 ;
ICON "PWCTICON" ;
TITLE "Main Window" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,128} 

@ 240 ,206 BUTTONEX btn1;
CAPTION "Login";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 189 ,160 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 196 ,38 LABEL lbl1 ;
VALUE "User Name:" ;
WIDTH 85 ;
HEIGHT 19 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,64}
@ 47 ,208 IMAGE image1;
PICTURE "371614_100000623458719_853102847_n.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 153 ,160 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 156 ,37 LABEL lbl2 ;
VALUE "Messege " ;
WIDTH 92 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exite" Action close()
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

Proc Logform
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Please Enter UserName ","Error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 439 ;
HEIGHT 326 ;
ICON "PWCTICON" ;
TITLE "Hello"+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,255,64} 

@ 113 ,33 LABEL lbl1 ;
VALUE message + " " + user ;
WIDTH 364 ;
HEIGHT 46 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 230 ,19 BUTTONEX btn2;
CAPTION "<<< Back ";
ON CLICK closeform2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Do you want to close App?","Close App ")
message := win1.text2.Value
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform()",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name:'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '371614_100000623458719_853102847_n.jpg'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Messege '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,53)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exite' )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Date",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Logform",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter UserName ' Title 'Error ' Type: Message Exclamation",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello'+user",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",85,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : message + ' ' + user",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<<< Back '",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform2()",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to close App?' Title 'Close App ' Type: Message Ok/Cancel",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform2",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
Return
*-------------------------------------------------------------------*
