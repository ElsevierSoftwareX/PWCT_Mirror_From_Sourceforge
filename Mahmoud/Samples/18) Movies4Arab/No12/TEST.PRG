#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:39:00    Date : 01/08/2009
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
			Atom a1                            
				Shell K                             
					SubShell S                             
						Var e1 Value " This electron lives in A1:K:S "
			Atom a2                            
				Shell K                             
					SubShell S                             
						Var e1 Value " This electron lives in A2:K:S "
			Atom a3                            
				Shell K                             
					SubShell S                             
						Var e1 Value " This electron lives in A3:K:S "
			Vessel v1                            
						Atom a1                            
						Atom a2                            
						Atom a3                            
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

@ 10 ,10 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc mystart
Open Vessel v1
Goto First Atom
mymax := GET_ACTIVE_ATOMS_COUNT
FOR x = 1 TO mymax STEP 1
SELECT ACTIVE ATOM
myatom := GET_ACTIVE_ATOM_NAME
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + myatom
else
Win1.Edit1.VALUE := myatom
endif
Select Shell k
Select SubShell s
Load Active SubShell From Memory
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + e1
else
Win1.Edit1.VALUE := e1
endif
Goto Next Atom
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",66)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Open Vessel v1",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Atom",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := GET_ACTIVE_ATOMS_COUNT",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Active Atom",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","myatom := GET_ACTIVE_ATOM_NAME",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myatom) to Editbox (Edit1) of Window (Win1)",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Select Shell k",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Select SubShell s",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Load Active SubShell From Memory",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (e1) to Editbox (Edit1) of Window (Win1)",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Atom",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*
