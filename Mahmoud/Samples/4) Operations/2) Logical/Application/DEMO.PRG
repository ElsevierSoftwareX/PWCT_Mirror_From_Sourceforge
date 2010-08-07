#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 19:40:27    Date : 09/24/2008
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

Resistance RDBMVR1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RDBMVR1() code
num1 := 3
num2 := 5
myout = NUMAND (num1 , num2)
? myout
myout = NUMOR (num1 , num2)
? myout
myout  := NUMNOT (num1)
? myout
myout = NUMXOR (num1 , num2)
? myout
myout = SETBIT (num1 , 1)
? myout
myout = CLEARBIT (num1 , 2)
? myout
myout = NUMROL (num1 , 1)
? myout
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",38)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = 3",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = 5",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","myout = num1 AND num2",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","myout = num1 OR num2",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","myout = NOT num1",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","myout = num1 XOR num2",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Number num1 Set bits 1",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Number num1 Clear bits 2",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","myout = num1 Rotation left  1",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",17,17)
Return
*-------------------------------------------------------------------*
