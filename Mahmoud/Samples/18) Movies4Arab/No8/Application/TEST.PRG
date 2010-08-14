#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:51:23    Date : 01/04/2009
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
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
					Resistance sub                           
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RRXXHY1() address Code Unit : Circuits\Main\Main\Main

Resistance RRXXHY2() address Code Unit : Circuits\Main\Main\sub


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
WIDTH 254 ;
HEIGHT 96 ;
ICON "PWCTICON" ;
TITLE "«” Œœ«„ «ﬂÀ— „‰ Âœ›" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "«” œ⁄«¡ «Ã—«¡ ›Ï Âœ› «Œ—";
ON CLICK myproc()  ;
WIDTH 210 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1



End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\sub
Resistance RRXXHY2() code
Proc myproc
MyOut := MSGBOX("—”«·… „‰ «Ã—«¡ ›Ï Âœ› «Œ—","„—Õ»«")
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",53)
SS_ESARES("Circuits\Main\Main\sub",81)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESAGOAL("Circuits\Main\Main\sub","sub")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",10,11)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",13,15)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",21,22)
SS_ESASTEP("Circuits\Main\Main\sub","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\sub","Define Procedure myproc",1,1)
SS_ESASTEP("Circuits\Main\Main\sub","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\sub","Show Message '—”«·… „‰ «Ã—«¡ ›Ï Âœ› «Œ—' Title '„—Õ»«' Type: Message Box",2,2)
SS_ESASTEP("Circuits\Main\Main\sub","End of Procedure",3,3)
Return
*-------------------------------------------------------------------*
