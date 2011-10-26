*---------------------------------------------------------------------------*
* Time : 18:27:10    Date : 10/24/2011
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Welcome" Action callwelcome()
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc callwelcome
myobj = windowwelcome()
myout = myobj:showwindow()
Return Nil
Proc closesystem
win1.Release ( )
Return Nil
Class windowwelcome
Method showwindow
Method closewindow
Method sayhello
EndClass
Method showwindow Class windowwelcome
if !iswindowdefined( winwelcome )
DEFINE WINDOW winwelcome ;
AT 10 ,10 ;
WIDTH 408 ;
HEIGHT 164 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
BACKCOLOR {132,242,179} 

@ 30 ,66 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {132,242,179} ;
FONTCOLOR {0,0,0}
@ 26 ,136 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 70 ,63 BUTTONEX btn1;
CAPTION "Say Hello";
ON CLICK self:sayhello()  ;
WIDTH 130 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 70 ,204 BUTTONEX btn2;
CAPTION "Close Window";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winwelcome.Center ( )
ACTIVATE WINDOW winwelcome
EndIF

Return 0
Method closewindow Class windowwelcome
winwelcome.Release ( )
Return 0
Method sayhello Class windowwelcome
myname := winwelcome.text1.Value
MyOut := MSGBOX("Hello " + myname,"Welcome")


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Welcome' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure callwelcome",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class windowwelcome",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobj.showwindow()",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class windowwelcome",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method closewindow",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method sayhello",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class windowwelcome",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winwelcome ) , Title : 'Welcome'",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Hello'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:sayhello()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:closewindow()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","winwelcome.Center ( )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closewindow Class windowwelcome",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","winwelcome.Release ( )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method sayhello Class windowwelcome",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","myname = winwelcome.text1.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Hello ' + myname Title 'Welcome' Type: Message Box",83,83)
Return
*-------------------------------------------------------------------*
