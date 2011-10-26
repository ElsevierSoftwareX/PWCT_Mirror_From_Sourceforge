*---------------------------------------------------------------------------*
* Time : 21:02:41    Date : 10/21/2011
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
WIDTH 553 ;
HEIGHT 301 ;
ON INIT mywork()  ;
ICON "PWCTICON" ;
TITLE "Two Dimensional Array (10,10)" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 8 ,6 GRID Grid1;
WIDTH 530 ;
HEIGHT 240 ;
HEADERS {"1","2","3","4","5","6","7","8","9","10"};
WIDTHS {50,50,50,50,50,50,50,50,50,50} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

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


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Two Dimensional Array (10,10)'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action mywork",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'1','2','3','4','5','6','7','8','9','10'}",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",13,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array myarray",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {} To Array myarray",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From y = 1 To 10 Step 1)",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '' To Array myarray[x]",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","cx = CONVERT x TO STRING",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","cy = CONVERT y TO STRING",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","cx = All Trim cx",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","cy = All Trim cy",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","myarray[x][y] = cx+','+cy",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( myarray[x] )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",39,39)
Return
*-------------------------------------------------------------------*
