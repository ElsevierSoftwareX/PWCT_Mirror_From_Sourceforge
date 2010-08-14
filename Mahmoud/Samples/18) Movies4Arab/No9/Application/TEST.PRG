#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:37:51    Date : 01/05/2009
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
				Shell K                             
					SubShell S                             
						Var name Value "Mahmoud"
						Var phone Value "0001010101"
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell L                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell M                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell N                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell O                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell P                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
				Shell Q                             
					SubShell S                             
					SubShell P                             
					SubShell D                             
					SubShell F                             
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RRXXHY1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RRXXHY1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 481 ;
HEIGHT 307 ;
ON INIT mystart()  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 EDITBOX edit1;
WIDTH 446 ;
HEIGHT 239;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc mystart
Select Address test:k:s
Load Active SubShell From Memory
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + name
else
Win1.Edit1.VALUE := name
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + phone
else
Win1.Edit1.VALUE := phone
endif
GOTO FIRST ELECTRON
elename := GET_ACTIVE_ELECTRON_NAME
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + elename
else
Win1.Edit1.VALUE := elename
endif
GOTO NEXT ELECTRON
elename := GET_ACTIVE_ELECTRON_NAME
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + elename
else
Win1.Edit1.VALUE := elename
endif
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",88)
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
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Address test:k:s",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Load Active SubShell From Memory",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (name) to Editbox (Edit1) of Window (Win1)",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (phone) to Editbox (Edit1) of Window (Win1)",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","GOTO FIRST ELECTRON",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","elename := GET_ACTIVE_ELECTRON_NAME",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (elename) to Editbox (Edit1) of Window (Win1)",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","GOTO NEXT ELECTRON",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","elename := GET_ACTIVE_ELECTRON_NAME",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (elename) to Editbox (Edit1) of Window (Win1)",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",48,48)
Return
*-------------------------------------------------------------------*
