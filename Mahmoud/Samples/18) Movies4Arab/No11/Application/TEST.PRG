#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 14:22:43    Date : 01/07/2009
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
			Atom test                          
				Shell myshell                       
					SubShell Details                       
						Var Number_N_
						Var Square_N_
					SubShell Records                       
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
WIDTH 500 ;
HEIGHT 400 ;
ON INIT mystart()  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 GRID Grid1;
WIDTH 200 ;
HEIGHT 200 ;
HEADERS {"Number","Square"};
WIDTHS {100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc mystart
NEW VIRTUAL DATA FILE mynumbers DETAILS test:myshell:details DATA test:myshell:records
Open Virtual Data File mynumbers
FOR x = 1 TO 100 STEP 1
Add New Record
Load Record
number := x
square := x*x
Upload Record
Next
Goto First Record
mymax := GET_RECORDS_COUNT
FOR x = 1 TO mymax STEP 1
Load Record
number = STR ( number )
square = STR ( square )
number = ALLTRIM ( number )
square = ALLTRIM ( square )
win1.grid1.AddItem ( {number,square} )
Goto Next Record
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",56)
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","NEW VIRTUAL DATA FILE mynumbers DETAILS test:myshell:details DATA test:myshell:records",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Open Virtual Data File mynumbers",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 100 Step 1)",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Load Record",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","number = x",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","square = x*x",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Upload Record",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := GET_RECORDS_COUNT",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Load Record",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","number = CONVERT number TO STRING",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","square = CONVERT square TO STRING",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","number = All Trim number",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","square = All Trim square",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {number,square} )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Record",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
Return
*-------------------------------------------------------------------*
