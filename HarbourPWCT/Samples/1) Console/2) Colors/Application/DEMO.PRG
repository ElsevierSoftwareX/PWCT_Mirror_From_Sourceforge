*---------------------------------------------------------------------------*
* Time : 14:38:27    Date : 10/15/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
Set Color To W/B,U/U,,,U/U
Clear
? "Blue"
INKEY(1)
Set Color To W/R,U/U,,,U/U
Clear
? "Red"
INKEY(3)
Set Color To W/G,U/U,,,U/U
Clear
? "Green"
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
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
