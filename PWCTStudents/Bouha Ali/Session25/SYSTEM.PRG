*---------------------------------------------------------------------------*
* Time : 23:19:49    Date : 01/28/2012
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


Resistance R_SYSTEM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SYSTEM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 530 ;
HEIGHT 272 ;
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
@ -3 ,-1 IMAGE image1;
PICTURE "Imagewelcome.jpg";
STRETCH ;
WIDTH 524 HEIGHT 238
END WINDOW

win1.Center ( )
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
WIDTH 463 ;
HEIGHT 154 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 26 ,36 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 22 ,111 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {125,208,43} ;
FONTCOLOR {0,0,0} 

@ 23 ,328 BUTTONEX btn1;
CAPTION "Say Hello";
ON CLICK self:sayhello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 70 ,299 BUTTONEX btn2;
CAPTION "Close Window";
ON CLICK self:closewindow()  ;
WIDTH 129 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
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
myvar := winwelcome.text1.Value
MyOut := MSGBOX("Hello  " +myvar+" we miss you","Welcome")
Return 0


End Of Resistance

INIT PROCEDURE Init_SYSTEM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Welcome' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Imagewelcome.jpg'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure callwelcome",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class windowwelcome",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobj.showwindow()",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class windowwelcome",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Method closewindow",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Method sayhello",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class windowwelcome",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winwelcome ) , Title : 'Welcome'",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Hello'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:sayhello()",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:closewindow()",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","winwelcome.Center ( )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closewindow Class windowwelcome",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","winwelcome.Release ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method sayhello Class windowwelcome",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","myvar = winwelcome.text1.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Hello  ' +myvar+' we miss you' Title 'Welcome' Type: Message Box",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",88,88)
Return
*-------------------------------------------------------------------*
