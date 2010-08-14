#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 13:51:28    Date : 12/09/2008
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


Resistance RQYAPN1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RQYAPN1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 206 ;
HEIGHT 124 ;
ICON "PWCTICON" ;
TITLE "Printing Sample" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 27 ,48 BUTTONEX btn1;
CAPTION "Start";
FONTCOLOR {255,255,255};
BACKCOLOR {255,128,192};
ON CLICK MYPRINT()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1

Proc MYPRINT
#include "winprint.ch"
init printsys
select by dialog Preview
GET SELECTED PRINTER TO vPrinter
IF vPrinter == ""
MyOut := MSGBOX("Operation Canceled by user","Ok")
Return 0
ENDIF
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
FOR x = 1 TO 25 STEP 1
set textcolor {30*x,30*x,255}
CHANGE font "pagefont" name "arial" size 20 width 50 ;
BOLD 
@ 10*x,10 say "Page [1]" to print

Next
End Page
Start Page
define font "pagefont" name "arial" size 9
select font "pagefont"
define brush "pagebrush" style BS_SOLID color RGB(0,255,255)
SELECT BRUSH "pagebrush"
define pen "pagepen" style PS_SOLID width 1 color RGB(0,0,0)
SELECT PEN "pagepen"
@0,0 PICTURE "C:\SSRPWI\DOUBLES\RPWI1\SAMPLES\12) PRINTING\IMAGE.JPG" SIZE 100,100
End Page
Start Page
define font "pagefont" name "arial" size 9
select font "pagefont"
define brush "pagebrush" style BS_SOLID color RGB(0,255,255)
SELECT BRUSH "pagebrush"
define pen "pagepen" style PS_SOLID width 1 color RGB(0,0,0)
SELECT PEN "pagepen"
FOR x = 1 TO 5 STEP 1
set textcolor {255,30*x,60*x}
CHANGE font "pagefont" name "arial" size 20 width 50 ;
BOLD 
@ 10*x,10 say "Page [3]" to print

Next
End Page
Start Page
define font "pagefont" name "arial" size 9
select font "pagefont"
define brush "pagebrush" style BS_SOLID color RGB(0,255,255)
SELECT BRUSH "pagebrush"
define pen "pagepen" style PS_SOLID width 1 color RGB(0,0,0)
SELECT PEN "pagepen"
change brush "pagebrush" style BS_SOLID COLOR {0,0,255}
change pen "pagepen" style PS_SOLID width 2 color {0,0,255}
@10,10,200,200 RECTANGLE
change brush "pagebrush" style BS_SOLID COLOR {238,183,142}
change pen "pagepen" style PS_SOLID width 2 color {238,183,142}
@50,50,150,150 RECTANGLE
change brush "pagebrush" style BS_SOLID COLOR {0,255,128}
change pen "pagepen" style PS_SOLID width 2 color {0,255,128}
@80,80,120,120 RECTANGLE
End Page
Start Page
define font "pagefont" name "arial" size 9
select font "pagefont"
define brush "pagebrush" style BS_SOLID color RGB(0,255,255)
SELECT BRUSH "pagebrush"
define pen "pagepen" style PS_SOLID width 1 color RGB(0,0,0)
SELECT PEN "pagepen"
change brush "pagebrush" style BS_NULL COLOR {0,255,0}
change pen "pagepen" style PS_SOLID width 1 color {0,255,0}
@10,10,50,200 RECTANGLE
change brush "pagebrush" style BS_NULL COLOR {0,0,0}
change pen "pagepen" style PS_SOLID width 10 color {0,0,0}
@60,60,110,200 RECTANGLE
change brush "pagebrush" style BS_NULL COLOR {0,0,255}
change pen "pagepen" style PS_SOLID width 50 color {0,0,255}
@120,60,150,200 RECTANGLE
End Page
End Doc
release printsys
Return Nil


End Of Resistance

INIT PROCEDURE Init_PRINTTEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",10,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MYPRINT",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Init Print System",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vPrinter = Select Printer by Dialog , Preview",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( vPrinter == '' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Canceled by user' Title 'Ok' Type: Message Box",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Set Units (MM)",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Start Document",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Set Page Orientation (PORTRAIT)",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",35,41)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 25 Step 1)",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Page [1]' , Y(10*x), X(10) , Font('arial',20,50) , Color ({30*x,30*x,255}) to Print",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Picture 'C:\SSRPWI\DOUBLES\RPWI1\SAMPLES\12) PRINTING\IMAGE.JPG' (Top 0 Left 0 Height 100 Width",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",59,65)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 5 Step 1)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Page [3]' , Y(10*x), X(10) , Font('arial',20,50) , Color ({255,30*x,60*x}) to Print",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",74,80)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 10, X 10, Height 200, Width 200 ) PenWidth (2) Color ({0,0,255}) to Print",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 50, X 50, Height 150, Width 150 ) PenWidth (2) Color ({238,183,142}) to Print",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 80, X 80, Height 120, Width 120 ) PenWidth (2) Color ({0,255,128}) to Print",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",91,97)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 10, X 10, Height 50, Width 200 ) PenWidth (1) Color ({0,255,0}) to Print",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 60, X 60, Height 110, Width 200 ) PenWidth (10) Color ({0,0,0}) to Print",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 120, X 60, Height 150, Width 200 ) PenWidth (50) Color ({0,0,255}) to Print",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Document",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Release Print System",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
Return
*-------------------------------------------------------------------*
