*---------------------------------------------------------------------------*
* Time : 01:32:44    Date : 02/02/2012
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


Resistance R_LOGIN_PAGE_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_PAGE_2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 445 ;
HEIGHT 414 ;
ICON "PWCTICON" ;
TITLE "Login Page  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ -9 ,0 IMAGE image1;
PICTURE "BLUE-BACKGROUND.JPG";
STRETCH ;
WIDTH 493 HEIGHT 411
@ 60 ,30 IMAGE image2;
PICTURE "LOGIN.JPG";
STRETCH ;
WIDTH 364 HEIGHT 263
@ 28 ,30 IMAGE image3;
PICTURE "LOG.JPG";
STRETCH ;
WIDTH 365 HEIGHT 34
@ 62 ,30 LABEL lbl1 ;
VALUE " " ;
WIDTH 365 ;
HEIGHT 6 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {45,150,255} ;
FONTCOLOR {0,0,0}
@ 173 ,41 LABEL lbl2 ;
VALUE "Username" ;
WIDTH 84 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 225 ,40 LABEL lbl3 ;
VALUE "Password" ;
WIDTH 81 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 171 ,122 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 166 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 221 ,123 TEXTBOX text2;
HEIGHT 29 ;
WIDTH 167 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 35 ,152 LABEL lbl4 ;
VALUE "USER LOGIN " ;
WIDTH 121 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {117,117,117} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 73 ,37 LABEL lbl5 ;
VALUE "Welcome " ;
WIDTH 109 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {32,143,255}
@ 104 ,43 LABEL lbl6 ;
VALUE "Please login your username  " ;
WIDTH 220 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 126 ,44 LABEL lbl7 ;
VALUE "and password " ;
WIDTH 109 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 273 ,140 BUTTONEX btn1;
CAPTION "Login ";
ON CLICK login()  ;
WIDTH 72 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 274 ,217 BUTTONEX btn2;
CAPTION "Quit ";
ON CLICK quit()  ;
WIDTH 69 HEIGHT 26 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "File "
MENUITEM "New " Action MSGINFO( "New Page" )
MENUITEM "Open " Action MSGINFO( "Open File" )
MENUITEM "Save " Action MSGINFO( "Save File" )
MENUITEM "Save As " Action MSGINFO( "Save As File" )
MENUITEM "Exit " Action exit()
END POPUP
POPUP "Edit "
MENUITEM "Cut " Action MSGINFO( "Cut Text " )
MENUITEM "Copy " Action MSGINFO( "Copy Text " )
MENUITEM "Paste " Action MSGINFO( "Paste Text " )
MENUITEM "Search" Action MSGINFO( "Search" )
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

Proc login
user := win1.text1.Value
password := win1.text2.Value
message := win1.lbl5.Value
IF user==""
MyOut := MSGExclamation("Please Enter Username ","Error ")
ELSEIF password==""
MyOut := MSGExclamation("Please Enter Password ","Error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 388 ;
HEIGHT 289 ;
ICON "PWCTICON" ;
TITLE message+""+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ -45 ,-6 IMAGE image4;
PICTURE "BACKGROUND.JPG";
STRETCH ;
WIDTH 393 HEIGHT 249
@ 203 ,-3 IMAGE image5;
PICTURE "BACKGROUND2.JPG";
STRETCH ;
WIDTH 388 HEIGHT 66
@ 70 ,174 LABEL lbl8 ;
VALUE message+""+user ;
WIDTH 175 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 127 ,90 LABEL lbl9 ;
VALUE "Now you can start using the application " ;
WIDTH 278 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 212 ,282 BUTTONEX btn4;
CAPTION "Close";
ON CLICK close()  ;
WIDTH 72 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 213 ,208 BUTTONEX btn5;
CAPTION "Next ";
ON CLICK MSGINFO( "Next Page" ) ;
WIDTH 71 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc exit
MyOut := MSGOKCANCEL("Do you want to close application? "," close application ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
procedure quit()
win1.Release ( )
return
procedure close()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LOGIN_PAGE_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Login Page  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'BLUE-BACKGROUND.JPG'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'LOGIN.JPG'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'LOG.JPG'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Username'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Password'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'USER LOGIN '",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",65,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Welcome '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Please login your username  '",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'and password '",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",93,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login '",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Quit '",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action quit",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'New ' )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Open ' )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Save ' )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Save As ' )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Edit '",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Cut ' )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Copy ' )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Paste ' )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Search' )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Date",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","password = win1.text2.Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.lbl5.Value",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Username ' Title 'Error ' Type: Message Exclamation",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( password=='' )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Password ' Title 'Error ' Type: Message Exclamation",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : message+''+user",151,155)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",156,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : 'BACKGROUND.JPG'",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",164,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image5 ) , Image : 'BACKGROUND2.JPG'",166,167)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : message+''+user",170,171)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",172,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Now you can start using the application '",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",181,187)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Close'",188,189)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",191,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Next '",194,195)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Next Page'",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",197,199)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",200,201)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",202,204)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to close application? ' Title ' close application ' Type: Message Ok/Cancel",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure quit ( Event : CLICK )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",220,220)
Return
*-------------------------------------------------------------------*
