#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:55:24    Date : 09/26/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance RCVPGO1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RCVPGO1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 505 ;
HEIGHT 400 ;
ICON "C:\SSBUILD\ICON\PWCT.ICO" ;
TITLE "Print Text" ;
MAIN ;
BACKCOLOR {0,0,0} 

@ 7 ,10 EDITBOX edit1;
WIDTH 230 ;
HEIGHT 279;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,255,64} ;
FONTCOLOR {0,0,0}
@ 300 ,72 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 300 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 300 ,376 BUTTON btn1;
CAPTION "Print";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,246 LISTBOX list1;
WIDTH 230 ;
HEIGHT 279 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 300 ,10 LABEL lbl1 ;
VALUE "Text" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win1

Proc myadd
mystr := win1.text1.Value
if .not. empty(win1.edit1.VALUE)
win1.edit1.VALUE := win1.edit1.VALUE + CHR(13) + CHR(10) + mystr
else
win1.edit1.VALUE := mystr
endif
Win1.List1.Additem ( mystr )
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Event",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.text1.Value",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to Editbox (edit1) of Window (win1)",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to Listbox (List1) of Window (Win1)",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
Return
*-------------------------------------------------------------------*
