*---------------------------------------------------------------------------*
* Time : 22:26:53    Date : 08/07/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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
 * (Noun) *
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


Resistance R_S9_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_S9_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 537 ;
HEIGHT 413 ;
ICON "PWCTICON" ;
TITLE " ÿ«»⁄…  ›« ‰" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ -28 ,-40 IMAGE image1;
PICTURE "2100.JPG";
WIDTH 592 HEIGHT 430
@ 318 ,186 BUTTONEX btn1;
CAPTION "«ÿ»⁄";
FONTCOLOR {0,0,100};
ON CLICK myprint()  ;
WIDTH 117 HEIGHT 39 ;
FONT "Arial" SIZE 22 ;
BOLD ;
ITALIC ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myprint
#include "winprint.ch"
init printsys
select by dialog Preview
GET SELECTED PRINTER TO vPrinter
IF vprint==""
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
@10,10 PICTURE "JJ.JPG" SIZE 150,150
set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 25 width 100 
@ 100,190 say "»Ì  «·«Õ·«„" to print

change brush "pagebrush" style BS_NULL COLOR {136,136,255}
change pen "pagepen" style PS_SOLID width 2 color {136,136,255}
@80,170,120,240 RECTANGLE
End Page
End Doc
release printsys
Return Nil


End Of Resistance

INIT PROCEDURE Init_S9
START DOUBLES
Return
*-------------------------------------------------------------------*
