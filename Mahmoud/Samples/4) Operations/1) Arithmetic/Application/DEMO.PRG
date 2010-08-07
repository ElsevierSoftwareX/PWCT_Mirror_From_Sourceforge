*---------------------------------------------------------------------------*
* Time : 10:48:01    Date : 08/06/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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

Resistance R_DEMO_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_15speed1() code
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
Return
*-------------------------------------------------------------------*
