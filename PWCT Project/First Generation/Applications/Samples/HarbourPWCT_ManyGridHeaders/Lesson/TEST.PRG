*---------------------------------------------------------------------------*
* Time : 04:48:42    Date : 10/23/2011
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
myheaders := {}
FOR x = 1 TO 20 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
AADD( myheaders , "Header " + x2)
Next
mywidths := {}
FOR x = 1 TO 20 STEP 1
AADD( mywidths , 100)
Next
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 542 ;
HEIGHT 563 ;
ICON "PWCTICON" ;
TITLE "Many Grid Columns sample" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 GRID Grid1;
WIDTH 500 ;
HEIGHT 500 ;
HEADERS myheaders;
WIDTHS mywidths ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

win1.grid1.Width := win1.grid1.width + 1
ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array myheaders",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 20 Step 1)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Header ' + x2 To Array myheaders",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array mywidths",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 20 Step 1)",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 100 To Array mywidths",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Many Grid Columns sample'",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : myheaders",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",22,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.Width := win1.grid1.width + 1",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
Return
*-------------------------------------------------------------------*
