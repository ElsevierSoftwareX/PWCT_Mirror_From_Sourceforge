#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 17:32:19    Date : 01/09/2009
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
			MainSwitch     On
				Branch     Main                          
					Resistance Main                          
				Branch     sub                           
				Switch     On
					Resistance sub                           
	VetoUnit :
End Of Server 

Resistance RABUBV1() address Code Unit : Circuits\Main\Main\Main

Resistance RABUBV2() address Code Unit : Circuits\Main\sub\sub


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RABUBV1() code
? "hello "
INKEY(1)
SERVER FIREON


End Of Resistance

* Resistance Code Unit : Circuits\Main\sub\sub
Resistance RABUBV2() code
? "message from sub "
INKEY(1)


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESARES("Circuits\Main\sub\sub",56)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESAGOAL("Circuits\Main\sub\sub","sub")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('hello ') to console",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 1 SECONDS)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","SERVER FIREON",3,3)
SS_ESASTEP("Circuits\Main\sub\sub","s1",0,0)
SS_ESASTEP("Circuits\Main\sub\sub","Print text ('message from sub ') to console",1,1)
SS_ESASTEP("Circuits\Main\sub\sub","WAIT ( 1 SECONDS)",2,2)
Return
*-------------------------------------------------------------------*
