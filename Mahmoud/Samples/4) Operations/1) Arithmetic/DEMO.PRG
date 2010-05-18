#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 19:35:57    Date : 09/24/2008
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

Resistance RNRNBX1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RNRNBX1() code
num1 := 40
num2 := 10
myout = num1 + num2
? myout
myout = num1 - num2
? myout
myout = num1 * num2
? myout
myout = num1 / num2
? myout
myout  = INT (myout)
? myout
myout  = SQRT (9)
? myout
myout = ROUND (1.6 , 0)
? myout
myout = MOD( 10 , 3 )
? myout
myx := RANDOM( 100 )
? myx
myout := MIN(7,4)
? myout
myout := MAX(12,27)
? myout
INKEY(10)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",38)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = 40",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = 10",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","myout = num1 + num2",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","myout = num1 - num2",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","myout = num1 * num2",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","myout = num1 / num2",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Convert numeric value myout to an integer",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","myout = the square root of a positive number  9",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Round 1.6 decimals 0",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","myout = 10 % 3",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","myx = Random number, limit 100",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myx) to console",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","myout = The Smaller (MIN) of 7 , 4",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","myout = The Larger (MAX) of 12 , 27",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 10 SECONDS)",25,25)
Return
*-------------------------------------------------------------------*
