*---------------------------------------------------------------------------*
* Time : 16:27:57    Date : 10/22/2011
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


Resistance R_COMBOITEMS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COMBOITEMS_18smart1() code
myarray := {}
AADD( myarray , "1")
AADD( myarray , "2")
AADD( myarray , "3")
FOR x = 4 TO 100 STEP 2
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
AADD( myarray , x2)
Next
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Combobox Items From Array" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 300;
ITEMS myarray ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_COMBOITEMS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array myarray",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '1' To Array myarray",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '2' To Array myarray",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '3' To Array myarray",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 4 To 100 Step 2)",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item x2 To Array myarray",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Combobox Items From Array'",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : myarray",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",29,31)
Return
*-------------------------------------------------------------------*
