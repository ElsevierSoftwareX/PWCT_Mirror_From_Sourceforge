*---------------------------------------------------------------------------*
* Time : 11:20:02    Date : 07/14/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8

	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_ARRAYTEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ARRAYTEST_15speed1() code
aArray := {}
AADD( aArray , "one")
AADD( aArray , "two")
AADD( aArray , "three")
nMax  = LEN(aArray)
FOR x = 1 TO nMax STEP 1
? aArray[x]
Next
INKEY(3)
aArray2 := {{1,2,3},{4,5,6},{7,8,9}}
nMax  = LEN(aArray2)
FOR x = 1 TO nMax STEP 1
nMax2  = LEN(aArray2[x])
FOR x2 = 1 TO nMax2 STEP 1
? aArray2[x][x2]
Next
? "********************** "
Next
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_ARRAYTEST
START DOUBLES
Return
*-------------------------------------------------------------------*
