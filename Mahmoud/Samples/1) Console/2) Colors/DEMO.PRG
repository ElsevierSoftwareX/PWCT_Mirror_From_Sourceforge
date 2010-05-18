#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 23:28:06    Date : 09/23/2008
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

Resistance RCVPGO1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RCVPGO1() code
Set Color To W/B,U,U,,,U,U
Clear
? "Blue"
INKEY(1)
Set Color To W/R,U,U,,,U,U
Clear
? "Red"
INKEY(3)
Set Color To W/G,U,U,,,U,U
Clear
? "Green"
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",38)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( White , Blue ) Enhanced ( Black , Black ) Unselected ( Black , Black )",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Blue') to console",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 1 SECONDS)",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( White , Red ) Enhanced ( Black , Black ) Unselected ( Black , Black )",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Red') to console",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( White , Green ) Enhanced ( Black , Black ) Unselected ( Black , Black )",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Green') to console",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",12,12)
Return
*-------------------------------------------------------------------*
