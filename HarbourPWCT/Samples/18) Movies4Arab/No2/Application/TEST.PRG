#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 18:32:30    Date : 12/28/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance ROUOSF1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance ROUOSF1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 516 ;
HEIGHT 258 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
MAIN ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

END STATUSBAR

@ 64 ,98 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 65 ,307 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 101 ;
HEIGHT 32 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 124 ,198 BUTTONEX btn1;
CAPTION "«· —ÕÌ»";
ON CLICK myhello()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1

Proc myexit
win1.Release ( )
Return Nil
Proc myhello
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := "«Â·« Ê”Â·« Ì« : " + mytext
MyOut := MSGBOX(mytext,"«· —ÕÌ»")
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Items",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhello",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = '«Â·« Ê”Â·« Ì« : ' + mytext",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title '«· —ÕÌ»' Type: Message Box",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*
