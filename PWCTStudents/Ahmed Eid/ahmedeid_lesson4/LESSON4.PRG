*---------------------------------------------------------------------------*
* Time : 17:52:38    Date : 03/01/2012
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


Resistance R_LESSON4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 507 ;
HEIGHT 379 ;
ICON "PWCTICON" ;
TITLE "mainwindow  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,255,0} 

@ 155 ,0 LABEL lbl1 ;
VALUE "user name " ;
WIDTH 167 ;
HEIGHT 59 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,255}
@ 157 ,165 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 333 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0} 

@ 185 ,166 BUTTONEX btn1;
CAPTION "login ";
ON CLICK login()  ;
WIDTH 334 HEIGHT 32 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 214 ,-20 IMAGE image1;
PICTURE "Image.jpg";
STRETCH ;
WIDTH 518 HEIGHT 195
@ 0 ,-3 IMAGE image2;
PICTURE "aeid.jpg";
STRETCH ;
WIDTH 514 HEIGHT 159
@ 2 ,191 BUTTONEX btn2;
CAPTION "«ÿ·»‰« ‰’· «·Ìﬂ  ";
ON CLICK MSGINFO( "JustCallUs01061679790" ) ;
WIDTH 140 HEIGHT 27 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 126 ,0 LABEL lbl3 ;
VALUE "      Message " ;
WIDTH 169 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 127 ,166 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 333 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU
END MENU
POPUP "file "
MENUITEM "callus " Action MSGINFO( "01061679790" )
MENUITEM "ourwebsite " Action MSGINFO( "www.alfathadv.com" )
MENUITEM "Exit " Action close()
END POPUP
POPUP "Edit "
MENUITEM "copy       ctrl+c " Action MSGINFO( "ctrl+c" )
MENUITEM "past       ctrl+v" Action MSGINFO( "ctrl+v" )
END POPUP
DEFINE STATUSBAR ;
BOLD 

STATUSITEM "ready"

DATE;
WIDTH 200 

CLOCK;
AMPM 

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGBOX("Please Enter User Name "," Error")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 711 ;
HEIGHT 228 ;
ICON "PWCTICON" ;
TITLE "Hello  " + user ;
MODAL ;
BACKCOLOR {255,255,0} 

@ 153 ,78 LABEL lbl2 ;
VALUE "             if u need something else please contact me 01061679790 " ;
WIDTH 710 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
UNDERLINE ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 0 ,-2 IMAGE image3;
PICTURE "aaeid.jpg";
STRETCH ;
WIDTH 703 HEIGHT 153
@ 35 ,252 LABEL lbl4 ;
VALUE message+" " + user ;
WIDTH 167 ;
HEIGHT 47 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 153 ,-2 BUTTONEX btn3;
CAPTION "<<Back ";
ON CLICK closeform2()  ;
WIDTH 101 HEIGHT 39 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Do U want To Close App ","Close App ")
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

INIT PROCEDURE Init_LESSON4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'mainwindow  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'login '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login()",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Image.jpg'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'aeid.jpg'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«ÿ·»‰« ‰’· «·Ìﬂ  '",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'JustCallUs01061679790'",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '      Message '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file '",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'callus ' )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ourwebsite ' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Edit '",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'copy       ctrl+c ' )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'past       ctrl+v' )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'ready' )",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Date",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter User Name ' Title ' Error' Type: Message Box",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello  ' + user",98,102)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '             if u need something else please contact me 01061679790 '",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",110,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'aaeid.jpg'",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : message+' ' + user",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '<<Back '",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform2()",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",135,137)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do U want To Close App ' Title 'Close App ' Type: Message Ok/Cancel",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform2",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",150,150)
Return
*-------------------------------------------------------------------*
