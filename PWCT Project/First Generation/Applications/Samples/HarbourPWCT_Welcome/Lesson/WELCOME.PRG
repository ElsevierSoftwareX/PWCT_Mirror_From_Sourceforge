*---------------------------------------------------------------------------*
* Time : 22:24:09    Date : 10/19/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_WELCOME_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WELCOME_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 418 ;
ICON "PWCTICON" ;
TITLE "welcome" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 202 ,24 LABEL lbl1 ;
VALUE "user name" ;
WIDTH 154 ;
HEIGHT 33 ;
FONT "Cooper Black" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 304 ,180 BUTTONEX btn1;
CAPTION "Done";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK mydone()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
@ 203 ,190 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Cooper Black" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 32 ,57 IMAGE image1;
PICTURE "WELCOME.JPG";
STRETCH ;
WIDTH 339 HEIGHT 138
DEFINE STATUSBAR 

CLOCK

DATE

END STATUSBAR

DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action myclose()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc mydone
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := "Hello "  +  mytext  + " we wish to spend great time with us"
MyOut := MSGBOX(mytext,"Hello")
Return Nil


End Of Resistance

INIT PROCEDURE Init_WELCOME
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'welcome'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'user name'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Done'",21,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydone()",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'WELCOME.JPG'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Date",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydone",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = 'Hello '  +  mytext  + ' we wish to spend great time with us'",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title 'Hello' Type: Message Box",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
