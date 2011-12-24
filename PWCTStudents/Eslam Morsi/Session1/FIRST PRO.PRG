*---------------------------------------------------------------------------*
* Time : 14:13:18    Date : 12/24/2011
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


Resistance R_FIRST_PRO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FIRST_PRO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 723 ;
HEIGHT 370 ;
ICON "PWCTICON" ;
TITLE "Say Hello" ;
MAIN ;
BACKCOLOR {128,64,0} 

@ 38 ,271 LABEL lbl1 ;
VALUE "Trainig num 1" ;
WIDTH 153 ;
HEIGHT 33 ;
FONT "Bauhaus 93" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 197 ,293 BUTTONEX btn1;
CAPTION "Close";
ON CLICK CloseAPP()  ;
WIDTH 128 HEIGHT 36 ;
FONT "Bauhaus 93" SIZE 18 ;
TOOLTIP ""
@ 196 ,479 BUTTONEX btn2;
CAPTION "Say Hello";
ON CLICK MSGINFO( "Hello World" ) ;
WIDTH 139 HEIGHT 38 ;
FONT "Bauhaus 93" SIZE 18 ;
TOOLTIP ""
@ 200 ,91 BUTTONEX btn3;
CAPTION "About";
ON CLICK ShiftTaps()  ;
WIDTH 132 HEIGHT 31 ;
FONT "Bauhaus 93" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure CloseAPP()
win1.Release ( )
return
procedure ShiftTaps()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 634 ;
HEIGHT 312 ;
ICON "PWCTICON" ;
TITLE "2" ;
CHILD ;
BACKCOLOR {0,0,0} 

@ 10 ,10 LISTBOX list1;
WIDTH 250 ;
HEIGHT 185 ;
FONT "Franklin Gothic Heavy" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 164 ,286 BUTTONEX btn4;
CAPTION "Fayed";
ON CLICK AboutMrFayed()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Candara" SIZE 16 ;
TOOLTIP ""
@ 91 ,284 BUTTONEX btn5;
CAPTION "Islam";
ON CLICK AboutIslam()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Candara" SIZE 16 ;
TOOLTIP ""
@ 26 ,283 BUTTONEX btn6;
CAPTION "PWCT";
ON CLICK PWCT()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Candara" SIZE 16 ;
TOOLTIP ""
@ 224 ,554 BUTTONEX btn7;
CAPTION "Close";
ON CLICK ClosePro()  ;
WIDTH 53 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 225 ,11 BUTTONEX btn8;
CAPTION "Main window";
ON CLICK RestoreWin1()  ;
WIDTH 175 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure RestoreWin1()
win1.Center ( )
return
procedure ClosePro()
win2.Release ( )
return
procedure AboutMrFayed()
win2.list1.AddItem ( "Works at Architecture of PWCT, Researcher at KSU and Software Engineer at RVC" )
return
procedure AboutIslam()
win2.list1.AddItem ( "Islamlovelinux@linuxmail.org" )
return
procedure PWCT()
win2.list1.AddItem ( "„‘—Ê⁄ ⁄—»Ï „Ã«‰Ï Ê„‰ Ã Õ— „› ÊÕ «·„’œ—" )
return


End Of Resistance

INIT PROCEDURE Init_FIRST_PRO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Say Hello'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Trainig num 1'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseAPP",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Say Hello'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Hello World'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'About'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ShiftTaps",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseAPP ( Event : CLICK )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShiftTaps ( Event : CLICK )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '2'",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Fayed'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AboutMrFayed",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Islam'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AboutIslam",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'PWCT'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PWCT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Close'",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ClosePro",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Main window'",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action RestoreWin1",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RestoreWin1 ( Event : CLICK )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ClosePro ( Event : CLICK )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AboutMrFayed ( Event : CLICK )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list1.AddItem ( 'Works at Architecture of PWCT, Researcher at KSU and Software Engineer at RVC' )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AboutIslam ( Event : CLICK )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list1.AddItem ( 'Islamlovelinux@linuxmail.org' )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PWCT ( Event : CLICK )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list1.AddItem ( '„‘—Ê⁄ ⁄—»Ï „Ã«‰Ï Ê„‰ Ã Õ— „› ÊÕ «·„’œ—' )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
Return
*-------------------------------------------------------------------*
