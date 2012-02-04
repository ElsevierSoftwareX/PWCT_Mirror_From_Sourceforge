*---------------------------------------------------------------------------*
* Time : 18:38:06    Date : 02/03/2012
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
WIDTH 375 ;
HEIGHT 278 ;
ICON "PWCTICON" ;
TITLE "Main  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,255} 

DEFINE MAIN MENU
POPUP "File "
MENUITEM "welcome " Action callwelcome()
MENUITEM "Close " Action closesystem()
END POPUP
END MENU
@ 32 ,5 LABEL lbl2 ;
VALUE "Programming Without Coding Technology" ;
WIDTH 354 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 103 ,87 LABEL lbl3 ;
VALUE "Mahmoud Albadawey " ;
WIDTH 190 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 142 ,50 LABEL lbl4 ;
VALUE "Oracle Developer and Instructor " ;
WIDTH 265 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 15  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

win1.Center ( )
ACTIVATE WINDOW win1
EndIF

Proc callwelcome
myobject = windowwelcome()
myout = myobject:showwindow()
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
WIDTH 302 ;
HEIGHT 207 ;
ICON "PWCTICON" ;
TITLE "Welcome  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,128} 

@ 29 ,9 LABEL lbl1 ;
VALUE "Name : " ;
WIDTH 56 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 27 ,77 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} 

@ 107 ,42 BUTTONEX btn1;
CAPTION "Show Hello ";
ON CLICK self:sayhello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 106 ,149 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
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
MyOut := MSGBOX("Hello "+myname,"Wlcome ")
Return 0


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'welcome ' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close ' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Programming Without Coding Technology'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Mahmoud Albadawey '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Oracle Developer and Instructor '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure callwelcome",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobject of Class windowwelcome",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobject.showwindow()",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class windowwelcome",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Method closewindow",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Method sayhello",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class windowwelcome",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winwelcome ) , Title : 'Welcome  '",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",73,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name : '",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",83,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Hello '",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:sayhello",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:closewindow",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","winwelcome.Center ( )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closewindow Class windowwelcome",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","winwelcome.Release ( )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method sayhello Class windowwelcome",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","myname = winwelcome.text1.Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Hello '+myname Title 'Wlcome ' Type: Message Box",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",121,121)
Return
*-------------------------------------------------------------------*
