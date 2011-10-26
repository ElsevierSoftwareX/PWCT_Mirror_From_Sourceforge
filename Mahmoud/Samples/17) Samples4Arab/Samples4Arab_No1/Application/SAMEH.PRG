*---------------------------------------------------------------------------*
* Time : 04:31:37    Date : 10/22/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_SAMEH_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAMEH_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 414 ;
HEIGHT 316 ;
ICON "win1" ;
TITLE "Center Window" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} ;
HELPBUTTON 

win1.Center ( )
@ 20 ,13 LABEL lbl1 ;
VALUE "The First Application using PWCT" ;
WIDTH 376 ;
HEIGHT 44 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 228 ,217 BUTTONEX btn1;
CAPTION "Ok";
ON CLICK Sameh()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 173 ,149 LABEL lbl2 ;
VALUE "mr sameh" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
DEFINE MAIN MENU
POPUP "Sameh"
MENUITEM "About Application" Action MSGINFO( "Sameh Kamel : This is my first PWCT application" ) NAME About
SEPARATOR
MENUITEM "Exit" Action Sameh()
END POPUP
END MENU
@ 70 ,144 IMAGE image1;
PICTURE "logo.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 228 ,47 BUTTONEX btn2;
CAPTION "Center Window";
ON CLICK Sameh2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Sameh
win1.Release ( )
Return Nil
Proc Sameh2
win1.Center ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAMEH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Center Window'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The First Application using PWCT'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Ok'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Sameh()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'mr sameh'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Sameh'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About Application' ) NAME About     SEPARATOR",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'logo.jpg'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Center Window'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Sameh2()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sameh",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sameh2",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
Return
*-------------------------------------------------------------------*
