#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 18:18:48    Date : 01/02/2009
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


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 328 ;
HEIGHT 219 ;
ICON "PWCTICON" ;
TITLE "„À«· ⁄·Ï «·ÿ»«⁄…" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 74 ,109 BUTTONEX btn1;
CAPTION "ÿ»«⁄…";
ON CLICK myprint()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1

Proc myprint
#include "winprint.ch"
init printsys
select by dialog Preview
GET SELECTED PRINTER TO vPrinter
IF vprinter == ""
Return 0
ENDIF
Set Units MM
Start Doc
Start Page
define font "pagefont" name "arial" size 9
select font "pagefont"
define brush "pagebrush" style BS_SOLID color RGB(0,255,255)
SELECT BRUSH "pagebrush"
define pen "pagepen" style PS_SOLID width 1 color RGB(0,0,0)
SELECT PEN "pagepen"
FOR x = 1 TO 10 STEP 1
set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 25 width 100 
@ 10,10*x say x to print

Next
End Page
Start Page
define font "pagefont" name "arial" size 9
select font "pagefont"
define brush "pagebrush" style BS_SOLID color RGB(0,255,255)
SELECT BRUSH "pagebrush"
define pen "pagepen" style PS_SOLID width 1 color RGB(0,0,0)
SELECT PEN "pagepen"
@10,10 PICTURE "test.bmp" SIZE 150,150
set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 25 width 100 
@ 100,190 say "»Ì  «·«Õ·«„" to print

change brush "pagebrush" style BS_NULL COLOR {64,0,64}
change pen "pagepen" style PS_SOLID width 2 color {64,0,64}
@80,170,120,240 RECTANGLE
End Page
End Doc
release printsys
Return Nil


End Of Resistance

INIT PROCEDURE Init_PRINT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",10,11)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",13,15)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myprint",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Init Print System",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vPrinter = Select Printer by Dialog , Preview",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( vprinter == '' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Set Units (MM)",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Start Document",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text x , Y(10), X(10*x) , Font('arial',25,100) , Color ({0,0,0}) to Print",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",47,53)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Picture 'test.bmp' (Top 10 Left 10 Height 150 Width 150 ) TO PRINT",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text '»Ì  «·«Õ·«„' , Y(100), X(190) , Font('arial',25,100) , Color ({0,0,0}) to Print",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 80, X 170, Height 120, Width 240 ) PenWidth (2) Color ({64,0,64}) to Print",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Document",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Release Print System",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
