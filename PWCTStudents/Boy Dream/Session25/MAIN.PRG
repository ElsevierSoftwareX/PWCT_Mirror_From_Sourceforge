*---------------------------------------------------------------------------*
* Time : 20:42:07    Date : 01/03/2012
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
BACKCOLOR {239,239,239} 

DEFINE MAIN MENU of win1
POPUP "File"
MENUITEM "Welcome" Action CallWelcome()
MENUITEM "Close System" Action Close()
END POPUP
END MENU
END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc Close
win1.Release ( )
Return Nil
Proc CallWelcome
ObjWelcome = WinWelcome()
MyOut = ObjWelcome:ShowWin()
Return Nil
Class WinWelcome
Method ShowWin
Method CloseWin
Method SayHello
EndClass
Method ShowWin Class WinWelcome
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 447 ;
HEIGHT 153 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {239,239,239} ;
HELPBUTTON 

@ 10 ,37 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 8 ,97 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 311 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 59 ,163 BUTTONEX btn1;
CAPTION "Say Hello";
ON CLICK self:SayHello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 59 ,269 BUTTONEX btn2;
CAPTION "Close";
ON CLICK self:CloseWin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win2.Center ( )
ACTIVATE WINDOW win2
EndIF

Return 0
Method CloseWin Class WinWelcome
win2.Release ( )
Return 0
Method SayHello Class WinWelcome
Name := win2.text1.Value
MyOut := MSGBOX("Hello" + " " +Name,"Welcome")
Return 0


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Welcome' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CallWelcome",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ObjWelcome of Class WinWelcome",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = ObjWelcome.ShowWin()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class WinWelcome",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWin",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWin",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method SayHello",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWin Class WinWelcome",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Welcome'",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",41,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Hello'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SayHello",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CloseWin",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWin Class WinWelcome",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SayHello Class WinWelcome",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Name = win2.text1.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Hello' + ' ' +Name Title 'Welcome' Type: Message Box",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",89,89)
Return
*-------------------------------------------------------------------*
