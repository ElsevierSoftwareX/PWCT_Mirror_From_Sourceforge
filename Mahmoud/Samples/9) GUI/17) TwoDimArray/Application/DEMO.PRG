#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 13:52:21    Date : 12/17/2008
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
WIDTH 553 ;
HEIGHT 301 ;
ON INIT mywork()  ;
ICON "PWCTICON" ;
TITLE "Two Dimension Array (10,10)" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 8 ,6 GRID Grid1;
WIDTH 530 ;
HEIGHT 240 ;
HEADERS {"1","2","3","4","5","6","7","8","9","10"};
WIDTHS {50,50,50,50,50,50,50,50,50,50} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc mywork
myarray := {}
FOR x = 1 TO 10 STEP 1
AADD( myarray , {})
FOR y = 1 TO 10 STEP 1
AADD( myarray[x] , "")
cx = STR ( x )
cy = STR ( y )
cx = ALLTRIM ( cx )
cy = ALLTRIM ( cy )
myarray[x][y] := cx+","+cy
Next
win1.grid1.AddItem ( myarray[x] )
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",12,19)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array myarray",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {} To Array myarray",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From y = 1 To 10 Step 1)",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '' To Array myarray[x]",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","cx = CONVERT x TO STRING",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","cy = CONVERT y TO STRING",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","cx = All Trim cx",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","cy = All Trim cy",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","myarray[x][y] = cx+','+cy",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( myarray[x] )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
Return
*-------------------------------------------------------------------*
