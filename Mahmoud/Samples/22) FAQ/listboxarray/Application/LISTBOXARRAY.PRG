*---------------------------------------------------------------------------*
* Time : 05:42:36    Date : 10/23/2011
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


Resistance R_LISTBOXARRAY_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LISTBOXARRAY_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Listbox items from array" ;
MAIN ;
BACKCOLOR {236,233,216} 

myarray := {}
AADD( myarray , "item 1")
AADD( myarray , "item 2")
AADD( myarray , "item 3")
AADD( myarray , "item 4")
AADD( myarray , "item 5")
AADD( myarray , "item 6")
AADD( myarray , "item 7")
AADD( myarray , "item 8")
AADD( myarray , "item 9")
@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS myarray ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_LISTBOXARRAY
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Listbox items from array'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array myarray",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'item 1' To Array myarray",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'item 2' To Array myarray",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'item 3' To Array myarray",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'item 4' To Array myarray",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'item 5' To Array myarray",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'item 6' To Array myarray",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'item 7' To Array myarray",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'item 8' To Array myarray",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'item 9' To Array myarray",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : myarray",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,32)
Return
*-------------------------------------------------------------------*
