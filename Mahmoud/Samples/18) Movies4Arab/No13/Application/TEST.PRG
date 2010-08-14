#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 10:56:20    Date : 01/09/2009
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
						Var e1 Value "«ŒÌ—« Ê’· "
			Vessel v1                            
						Atom a1                            
			Reaction myreaction                    
						Vessel v1                            
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
WIDTH 401 ;
HEIGHT 263 ;
ON INIT mystart()  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 EDITBOX edit1;
WIDTH 361 ;
HEIGHT 196;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc mystart
Active Reaction myreaction
Reaction Goto First Vessel
myvessel := GET_REACTION_VESSEL_NAME
Open Vessel &myvessel
Goto First Atom
SELECT ACTIVE ATOM
Select Shell k
Select SubShell s
Load Active SubShell From Memory
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + e1
else
Win1.Edit1.VALUE := e1
endif
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",58)
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
SS_ESASTEP("Circuits\Main\Main\Main","Active Reaction myreaction",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Reaction Goto First Vessel",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","myvessel := GET_REACTION_VESSEL_NAME",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Open Vessel &myvessel",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Atom",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Select Active Atom",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Select Shell k",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Select SubShell s",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Load Active SubShell From Memory",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (e1) to Editbox (Edit1) of Window (Win1)",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
Return
*-------------------------------------------------------------------*
