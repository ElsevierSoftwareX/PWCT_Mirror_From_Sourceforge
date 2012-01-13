*---------------------------------------------------------------------------*
* Time : 08:00:18    Date : 01/12/2012
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
WIDTH 420 ;
HEIGHT 278 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {0,255,255} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

CLOCK

END STATUSBAR

@ 113 ,99 BUTTONEX btn1;
CAPTION "œŒÊ· ";
ON CLICK LOGIN()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 55 ,51 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 130 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 58 ,191 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„ " ;
WIDTH 73 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 86 ,272 IMAGE image1;
PICTURE "PWCT_logo.JPG";
STRETCH ;
WIDTH 135 HEIGHT 150
@ 24 ,193 LABEL lbl2 ;
VALUE "—”«·… " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 16 ,50 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 130 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
procedure LOGIN()
USER := win1.text1.Value
IF USER==""
MyOut := MSGExclamation("«œŒ· «”„ «·„” Œœ„ ","»—Ã«¡ «·«‰ »«… ")
ELSE
MESS := win1.text2.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 451 ;
HEIGHT 259 ;
ICON "PWCTICON" ;
TITLE "HELLO  " +USER ;
CHILD ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 54 ,82 LABEL lbl3 ;
VALUE MESS+ "  " + USER ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 111 ,159 BUTTONEX btn2;
CAPTION "Œ—ÊÃ ";
ON CLICK CLOSESYSTEM()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'œŒÊ· '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action LOGIN",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«”„ «·„” Œœ„ '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PWCT_logo.JPG'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '—”«·… '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LOGIN ( Event : CLICK )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","USER = win1.text1.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( USER=='' )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«œŒ· «”„ «·„” Œœ„ ' Title '»—Ã«¡ «·«‰ »«… ' Type: Message Exclamation",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","MESS = win1.text2.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'HELLO  ' +USER",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",84,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : MESS+ '  ' + USER",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",92,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ '",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CLOSESYSTEM",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
Return
*-------------------------------------------------------------------*
