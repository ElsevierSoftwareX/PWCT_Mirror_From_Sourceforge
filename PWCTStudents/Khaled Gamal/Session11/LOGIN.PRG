*---------------------------------------------------------------------------*
* Time : 14:34:51    Date : 01/26/2012
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
WIDTH 572 ;
HEIGHT 341 ;
ICON "PWCTICON" ;
TITLE "Log in" ;
MAIN ;
BACKCOLOR {0,0,255} 

@ 161 ,114 LABEL lbl1 ;
VALUE "Enter your name" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 160 ,296 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 248 ,231 BUTTONEX btn1;
CAPTION "Ok";
ON CLICK Login()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 18 ,79 IMAGE image1;
PICTURE "Tron-Legacy-Banner.jpg";
WIDTH 450 HEIGHT 135
@ 204 ,114 LABEL lbl2 ;
VALUE "Message :" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 196 ,296 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU of win1
POPUP "File"
MENUITEM "Exit" Action exit()
END POPUP
END MENU
DEFINE STATUSBAR ;
BOLD ;
ITALIC 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Login
msg := win1.text1.Value
message := win1.text2.Value
IF msg==""
MyOut := MSGINFO("Please enter name","message")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 417 ;
HEIGHT 326 ;
ICON "PWCTICON" ;
TITLE "Hello"+" "+msg ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,255} 

@ 116 ,114 LABEL lbl3 ;
VALUE message+" "+msg ;
WIDTH 136 ;
HEIGHT 36 ;
FONT "Arial" SIZE 9  ;
BOLD ;
UNDERLINE ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,0}
@ 188 ,80 BUTTONEX btn2;
CAPTION "<<Back";
ON CLICK back()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc exit
x := MSGOKCANCEL("Do you want to close?","Exit")
IF x==true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc back
win1.Show ( )
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Log in'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Enter your name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Ok'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Login",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Tron-Legacy-Banner.jpg'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message :'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",51,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Date",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Login",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","msg = win1.text1.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( msg=='' )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please enter name' Title 'message' Type: Message Info",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello'+' '+msg",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",79,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : message+' '+msg",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",89,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<<Back'",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action back",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to close?' Title 'Exit' Type: Message Ok/Cancel",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==true )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure back",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Show ( )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",121,121)
Return
*-------------------------------------------------------------------*
