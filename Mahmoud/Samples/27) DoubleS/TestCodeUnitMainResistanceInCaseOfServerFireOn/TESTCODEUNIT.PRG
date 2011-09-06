*---------------------------------------------------------------------------*
* Time : 02:39:08    Date : 09/07/2011
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
 * Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8

	DataUnit :
	CodeUnit :
		Main Circuit    C1                            
		Main resistance Circuits\c1\B1\R1                                                                                   
			Circuit        Main                          
			MainSwitch     On
				Branch     Main                          
				Switch     On
					Resistance Main                          
			Circuit        C1                            
			MainSwitch     On
				Branch     B1                            
				Switch     On
					Resistance R1                            
	VetoUnit :
End Of Server 

Resistance R_TESTCODEUNIT_18smart1() address Code Unit : Circuits\Main\Main\Main

Resistance R_TESTCODEUNIT_18smart2() address Code Unit : Circuits\C1\B1\R1


STARTSERVER()
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TESTCODEUNIT_18smart1() code
? "hello FROM MAIN\MAIN\MAIN"
WAIT


End Of Resistance

* Resistance Code Unit : Circuits\C1\B1\R1
Resistance R_TESTCODEUNIT_18smart2() code
? " HELLO FROM R1"
WAIT

End Of Resistance

INIT PROCEDURE Init_TESTCODEUNIT
START DOUBLES
Return
*-------------------------------------------------------------------*
