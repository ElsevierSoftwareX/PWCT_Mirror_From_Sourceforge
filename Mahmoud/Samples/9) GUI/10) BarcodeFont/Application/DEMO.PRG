*---------------------------------------------------------------------------*
* Time : 20:23:42    Date : 10/21/2011
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
WIDTH 343 ;
HEIGHT 208 ;
ICON "PWCTICON" ;
TITLE "Barcode Font" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ -5 ,0 IMAGE image1;
PICTURE "back.jpg";
STRETCH ;
WIDTH 360 HEIGHT 190
@ 62 ,26 LABEL lbl1 ;
VALUE "1234567890" ;
WIDTH 281 ;
HEIGHT 33 ;
FONT "3 of 9 Barcode" SIZE 36  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 16 ,66 TEXTBOX text1;
ON CHANGE mychange()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 121 ,116 BUTTONEX btn1;
CAPTION "Print";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK myprint()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win1.text1.Value := 1234567890
ACTIVATE WINDOW win1
EndIF

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
GET SELECTED PRINTER TO vPrinter
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


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Barcode Font'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'back.jpg'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '1234567890'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mychange",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Print'",33,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myprint",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 1234567890",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mychange",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = win1.text1.Value",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = CONVERT myvalue TO STRING",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = All Trim myvalue",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := myvalue",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myprint",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Init Print System",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","vPrinter = Select Printer by Dialog , Preview",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Set Units (MM)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Start Document",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Set Page Orientation (PORTRAIT)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = win1.lbl1.Value",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text myvalue , Y(50), X(10) , Font('3 of 9 Barcode',72,36) , Color ({0,0,0}) to Print",69,72)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text myvalue , Y(70), X(10) , Font('arial',72,36) , Color ({0,0,0}) to Print",73,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Document",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Release Print System",79,79)
Return
*-------------------------------------------------------------------*
