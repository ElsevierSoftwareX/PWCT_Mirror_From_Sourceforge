*---------------------------------------------------------------------------*
* Time : 23:19:20    Date : 01/02/2012
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


Resistance R_3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_3_18smart1() code
tarig := {"„’—Ì","»—Ìÿ«‰Ì","«„—ÌﬂÌ","”Ê—Ì"}
DO ChangeLanguage
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 632 ;
HEIGHT 421 ;
ICON "PWCTICON" ;
TITLE "»Ì«‰« ﬂ «·‘Œ’Ì…" ;
MAIN ;
TOPMOST ;
BACKCOLOR {255,174,136} 

@ 43 ,297 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 200 ;
VALUE "Õ«“„ ’·«Õ «»Ê «”„«⁄Ì·" ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {128,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 41 ,504 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 80 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,174,136} ;
FONTCOLOR {0,0,0}
@ 86 ,297 LISTBOX list1;
WIDTH 200 ;
HEIGHT 180 ;
ITEMS tarig ;
VALUE "„’—Ì" ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 288 ,297 COMBOBOX combo1;
WIDTH 200 ;
HEIGHT 300;
ITEMS {"—∆Ì” Ã„ÂÊ—Ì… „’— «·⁄—»Ì…"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 339 ,12 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK Close()  ;
WIDTH 97 HEIGHT 26 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
DO RightToLeft WITH "win1","list1"
DO RightToLeft WITH "win1","combo1"
@ 9 ,12 IMAGE 1;
PICTURE "C:\USERS\T\DESKTOP\Õ«“„.JPG";
STRETCH ;
WIDTH 252 HEIGHT 253
@ 88 ,504 LABEL lbl2 ;
VALUE "«·Ã‰”Ì…" ;
WIDTH 80 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,174,136} ;
FONTCOLOR {0,0,0}
@ 290 ,505 LABEL lbl3 ;
VALUE "«·„Â‰…" ;
WIDTH 79 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,174,136} ;
FONTCOLOR {0,0,0}
@ 339 ,121 BUTTONEX btn2;
CAPTION "„Ê«›ﬁ";
ON CLICK MSGINFO( "  !«·‘⁄» Ì—Ìœ Õ«“„ «»Ê «”„«⁄Ì·" ) ;
WIDTH 100 HEIGHT 26 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc RightToLeft( p1,p2 )
Local x,y
y = GetControlHandle ( p2,p1 )
x = CALLDLL32("GetWindowLong","USER32.DLL",y,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",y,-20,NUMOR(x,0x400000,0x100000))
Return Nil
Proc ChangeLanguage
myout = CALLDLL32("ActivateKeyboardLayout","user32.dll",1,0)
Return Nil
procedure Close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","tarig = {'„’—Ì','»—Ìÿ«‰Ì','«„—ÌﬂÌ','”Ê—Ì'}",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ChangeLanguage",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»Ì«‰« ﬂ «·‘Œ’Ì…'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : tarig",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'—∆Ì” Ã„ÂÊ—Ì… „’— «·⁄—»Ì…'}",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RightToLeft Parameters 'win1','list1'",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure RightToLeft Parameters 'win1','combo1'",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( 1 ) , Image : 'C:\USERS\T\DESKTOP\Õ«“„.JPG'",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·Ã‰”Ì…'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·„Â‰…'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '„Ê«›ﬁ'",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action '  !«·‘⁄» Ì—Ìœ Õ«“„ «»Ê «”„«⁄Ì·'",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RightToLeft( p1,p2 )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,y",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","y = Call Function GetControlHandle ( p2,p1 )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","x = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters y,-20",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters y,-20,NUMOR(x,0x400000,0x100000)",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ChangeLanguage",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'user32.dll' , Function 'ActivateKeyboardLayout' , Parameters 1,0",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",97,97)
Return
*-------------------------------------------------------------------*
