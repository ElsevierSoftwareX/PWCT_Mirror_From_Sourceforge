*---------------------------------------------------------------------------*
* Time : 23:58:59    Date : 10/18/2011
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
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
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
