*---------------------------------------------------------------------------*
* Time : 23:43:00    Date : 02/25/2012
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


Resistance R_LOGINFORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGINFORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 437 ;
HEIGHT 524 ;
ICON "PWCTICON" ;
TITLE "Login  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 188 ,143 TEXTBOX text3;
ON GOTFOCUS foc()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
NOTABSTOP ;
FONTCOLOR {0,0,0} 

@ 239 ,24 LABEL lbl1 ;
VALUE "User Name:  " ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 299 ,25 LABEL lbl2 ;
VALUE "Pssword:" ;
WIDTH 91 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 0 ,113 IMAGE image1;
PICTURE "ecenter.jpg";
STRETCH ;
WIDTH 184 HEIGHT 137
@ 125 ,50 LABEL lbl3 ;
VALUE "Welcome to E-learning  center " ;
WIDTH 350 ;
HEIGHT 55 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 244 ,145 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 298 ,144 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 398 ,272 BUTTONEX btn2;
CAPTION "Cancel ";
ON CLICK Close()  ;
WIDTH 78 HEIGHT 28 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 398 ,164 BUTTONEX btn3;
CAPTION "Login ";
ON CLICK Login()  ;
WIDTH 81 HEIGHT 28 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 188 ,23 LABEL lbl7 ;
VALUE "Coures Name: " ;
WIDTH 109 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
DEFINE MAIN MENU
POPUP "Users "
MENUITEM "Add User " Action MSGINFO( "Add new user" )
MENUITEM "Delete User " Action MSGINFO( "Delete User" )
MENUITEM "Exit " Action Exit()
END POPUP
END MENU
POPUP "Courses "
MENUITEM "Add Course " Action MSGINFO( "New Course" )
MENUITEM "Delete Course " Action MSGINFO( "Delete Course " )
END POPUP
POPUP "Help "
MENUITEM "About  " Action MSGINFO( "Developed by Shereen Hassan " )
END POPUP
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return
procedure Login()
user := win1.text1.Value
cname := win1.text3.Value
pass := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Enter Username Please ","Error ")
ELSEIF pass==""
MyOut := MSGExclamation("Please Enter Password ","Error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 425 ;
HEIGHT 355 ;
TITLE "Welcome " + user ;
MODAL ;
BACKCOLOR {255,255,255} 

@ 28 ,18 LABEL lbl4 ;
VALUE "The  "+cname+" course is avilable  " ;
WIDTH 398 ;
HEIGHT 39 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 88 ,85 LABEL lbl5 ;
VALUE "Press Start to Continue " ;
WIDTH 267 ;
HEIGHT 46 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 140 ,157 BUTTONEX btn5;
CAPTION "";
PICTURE "start2.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK MSGINFO( "Staring ...." ) ;
WIDTH 75 HEIGHT 110 ;
TOOLTIP ""
@ 280 ,299 BUTTONEX btn6;
CAPTION "Quit ";
ON CLICK Logout()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 256 ,165 LABEL lbl6 ;
VALUE "Start " ;
WIDTH 37 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return
procedure Logout()
win2.Release ( )
return
Proc Exit
MyOut := MSGOKCANCEL(" Do you want to close the application","Close the application ")
IF MyOut=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
procedure foc()
win1.text3.SetFocus ( )
return


End Of Resistance

INIT PROCEDURE Init_LOGINFORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Login  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action foc",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'User Name:  '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Pssword:'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'ecenter.jpg'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Welcome to E-learning  center '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel '",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Login '",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Login",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Coures Name: '",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,88)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Users '",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add User ' )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Delete User ' )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Courses '",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add Course ' )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Delete Course ' )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help '",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About  ' )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Date",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Login ( Event : CLICK )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text3.Value",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","pass = win1.text2.Value",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Enter Username Please ' Title 'Error ' Type: Message Exclamation",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( pass=='' )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Password ' Title 'Error ' Type: Message Exclamation",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Welcome ' + user",130,134)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",135,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'The  '+cname+' course is avilable  '",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",141,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Press Start to Continue '",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",150,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ''",157,161)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Staring ....'",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Quit '",165,166)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Logout",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",168,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Start '",171,172)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",173,179)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",180,181)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",182,184)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Logout ( Event : CLICK )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Do you want to close the application' Title 'Close the application ' Type: Message Ok/Cancel",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=true )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure foc - Event : GOTFOCUS",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.SetFocus ( )",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
Return
*-------------------------------------------------------------------*
