*---------------------------------------------------------------------------*
* Time : 02:07:12    Date : 10/22/2011
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


Resistance R_PRINTTEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PRINTTEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 286 ;
HEIGHT 124 ;
ICON "PWCTICON" ;
TITLE "Printing Sample" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 0 ,-4 IMAGE image1;
PICTURE "back.jpg";
STRETCH ;
WIDTH 290 HEIGHT 90
@ 27 ,88 BUTTONEX btn1;
CAPTION "Start";
FONTCOLOR {0,0,0};
BACKCOLOR {116,241,169};
ON CLICK MYPRINT()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

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
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Printing Sample'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'back.jpg'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Start'",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MYPRINT",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MYPRINT",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Init Print System",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","vPrinter = Select Printer by Dialog , Preview",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( vPrinter == '' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Canceled by user' Title 'Ok' Type: Message Box",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Set Units (MM)",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Start Document",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Set Page Orientation (PORTRAIT)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 25 Step 1)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Page [1]' , Y(10*x), X(10) , Font('arial',20,50) , Color ({30*x,30*x,255}) to Print",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",56,62)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Picture 'C:\SSRPWI\DOUBLES\RPWI1\SAMPLES\12) PRINTING\IMAGE.JPG' (Top 0 Left 0 Height 100 Width 100 ) TO PRINT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",65,71)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 5 Step 1)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Page [3]' , Y(10*x), X(10) , Font('arial',20,50) , Color ({255,30*x,60*x}) to Print",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",80,86)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 10, X 10, Height 200, Width 200 ) PenWidth (2) Color ({0,0,255}) to Print",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 50, X 50, Height 150, Width 150 ) PenWidth (2) Color ({238,183,142}) to Print",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 80, X 80, Height 120, Width 120 ) PenWidth (2) Color ({0,255,128}) to Print",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",97,103)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 10, X 10, Height 50, Width 200 ) PenWidth (1) Color ({0,255,0}) to Print",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 60, X 60, Height 110, Width 200 ) PenWidth (10) Color ({0,0,0}) to Print",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 120, X 60, Height 150, Width 200 ) PenWidth (50) Color ({0,0,255}) to Print",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Document",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Release Print System",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
Return
*-------------------------------------------------------------------*
