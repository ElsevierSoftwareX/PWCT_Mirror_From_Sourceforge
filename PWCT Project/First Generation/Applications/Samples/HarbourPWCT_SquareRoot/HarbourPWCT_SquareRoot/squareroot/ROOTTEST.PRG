*---------------------------------------------------------------------------*
* Time : 11:44:55    Date : 01/04/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
* Get parameters from command line
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


Resistance R_ROOTTEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ROOTTEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT mywork()  ;
ICON "PWCTICON" ;
TITLE "Square Root" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mywork()
MyValue := 4
MyValue  = SQRT (MyValue)
MyValue = STR ( MyValue )
Win1.List1.Additem ( MyValue )
return


End Of Resistance

INIT PROCEDURE Init_ROOTTEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Square Root'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action mywork",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork - Event : INIT",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","MyValue = 4",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","MyValue = the square root of a positive number  MyValue",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","MyValue = CONVERT MyValue TO STRING",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (MyValue) to Listbox (List1) of Window (Win1)",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",28,28)
Return
*-------------------------------------------------------------------*
