#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:14:07    Date : 11/09/2008
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


Resistance RNQEIC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RNQEIC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 343 ;
HEIGHT 208 ;
ICON "PWCTICON" ;
TITLE "Barcode Font" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 62 ,26 LABEL lbl1 ;
VALUE "1234567890" ;
WIDTH 281 ;
HEIGHT 43 ;
AUTOSIZE ;
FONT "3 of 9 Barcode" SIZE 36  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 16 ,66 TEXTBOX text1;
ON CHANGE mychange()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 121 ,116 BUTTONEX btn1;
CAPTION "Print";
ON CLICK myprint()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win1.text1.Value := 1234567890
ACTIVATE WINDOW win1

Proc mychange
myvalue := win1.text1.Value
myvalue = STR ( myvalue )
myvalue = ALLTRIM ( myvalue )
win1.lbl1.Value := myvalue
Return Nil
Proc myprint
#include "winprint.ch"
init printsys
select by dialog Preview
Set Units MM
Start Doc
Set Orientation PORTRAIT
Start Page
define font "pagefont" name "arial" size 9
select font "pagefont"
define brush "pagebrush" style BS_SOLID color RGB(0,255,255)
SELECT BRUSH "pagebrush"
define pen "pagepen" style PS_SOLID width 1 color RGB(0,0,0)
SELECT PEN "pagepen"
myvalue := win1.lbl1.Value
set textcolor {0,0,0}
CHANGE font "pagefont" name "3 of 9 Barcode" size 72 width 36 
@ 50,10 say myvalue to print

set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 72 width 36 
@ 70,10 say myvalue to print

End Page
End Doc
release printsys
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 1234567890",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mychange",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = win1.text1.Value",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = CONVERT myvalue TO STRING",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = All Trim myvalue",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := myvalue",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myprint",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Init Print System",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Printer by Dialog , Preview",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Set Units (MM)",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Start Document",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Set Page Orientation (PORTRAIT)",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = win1.lbl1.Value",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text myvalue , Y(50), X(10) , Font('3 of 9 Barcode',72,36) , Color ({0,0,0}) to Print",60,63)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text myvalue , Y(70), X(10) , Font('arial',72,36) , Color ({0,0,0}) to Print",64,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Document",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Release Print System",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*
