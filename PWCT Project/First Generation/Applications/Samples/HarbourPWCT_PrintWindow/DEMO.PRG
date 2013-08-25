*---------------------------------------------------------------------------*
* Time : 03:30:09    Date : 07/28/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.06.18
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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
WIDTH 310 ;
HEIGHT 340 ;
ICON "PWCTICON" ;
TITLE "Print Window  " ;
MAIN ;
BACKCOLOR {255,255,255} 
@ 32 ,26 LABEL lbl1 ;
VALUE "Hello " ;
WIDTH 230 ;
HEIGHT 50 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {64,0,64}
@ 101 ,25 LABEL lbl2 ;
VALUE "How are you ? " ;
WIDTH 230 ;
HEIGHT 50 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,128,0}
@ 192 ,75 BUTTONEX btn1;
CAPTION "Print ";
ON CLICK PrintWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure PrintWindow()
#include "winprint.ch"
init printsys
win1.SaveAs ( "window.jpg" )
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
@0,0 PICTURE "window.JPG" SIZE 100,100
End Page
End Doc
release printsys
return

End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Print Window  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Hello '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'How are you ? '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Print '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PrintWindow",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PrintWindow ( Event : CLICK )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Init Print System",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.SaveAs ( 'window.jpg' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","vPrinter = Select Printer by Dialog , Preview",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Set Units (MM)",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Start Document",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Set Page Orientation (PORTRAIT)",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",47,53)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Picture 'window.JPG' (Top 0 Left 0 Height 100 Width 100 ) TO PRINT",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Document",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Release Print System",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*
