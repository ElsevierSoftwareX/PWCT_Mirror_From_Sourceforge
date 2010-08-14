#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:33:18    Date : 09/26/2008
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
AT 0 ,0 ;
WIDTH 500 ;
HEIGHT 400 ;
TITLE "Ole Test" ;
MAIN 

@ 10 ,10 BUTTON btn1;
CAPTION "Test";
ON CLICK testole()  ;
WIDTH 100 HEIGHT 30 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1

Proc testole
oWord := TOLEAUTO():NEW( "Word.Application" )
myout := oword:documents:add (  )
oWord:visible := .t.
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button btn1",8,9)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure testole",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oWord of Type 'Word.Application'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oword.documents:add (  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","oWord.visible := .t.",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",21,21)
Return
*-------------------------------------------------------------------*
