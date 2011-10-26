*---------------------------------------------------------------------------*
* Time : 23:19:33    Date : 10/21/2011
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


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 678 ;
HEIGHT 454 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Text Here";
WIDTH 100 

KEYBOARD;
WIDTH 100 

DATE;
WIDTH 100 

CLOCK;
WIDTH 100

END STATUSBAR

DEFINE TOOLBAR Toolbar1;
BUTTONSIZE 100 , 30 

BUTTON toolbarbtn1;
CAPTION "Hello" ;
ADJUST ;
ON CLICK mybtn()  ;
TOOLTIP "" ;
SEPARATOR ;
AUTOSIZE 

END TOOLBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc mybtn
MyOut := MSGBOX("Text Here","Text Here")
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Text Here' )",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Date",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Toolbar ( Toolbar1 )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarbtn1 )",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",39,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Toolbar",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Text Here' Title 'Text Here' Type: Message Box",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
Return
*-------------------------------------------------------------------*
