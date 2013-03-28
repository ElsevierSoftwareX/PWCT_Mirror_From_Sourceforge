*---------------------------------------------------------------------------*
* Time : 03:55:19    Date : 09/07/2011
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
			Atom Test                          
				Shell K                             
					SubShell S                             
						Reference EAR Value "Circuits\C1\B1\R1"
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
			Circuit        C1                            
				Branch     B1                            
					Resistance R1                            
	VetoUnit :
End Of Server 

Resistance R_EAR_18smart1() address Code Unit : Circuits\Main\Main\Main

Resistance R_EAR_18smart2() address Code Unit : Circuits\C1\B1\R1


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EAR_18smart1() code
Select Address test:k:s
Load Active SubShell From Memory
GOTO FIRST ELECTRON
INVOKE REFERENCE
INKEY(3)
Proc hello
? "hello  "
Return Nil


End Of Resistance

* Resistance Code Unit : Circuits\C1\B1\R1
Resistance R_EAR_18smart2() code
? " Hello From R1 "


End Of Resistance

INIT PROCEDURE Init_EAR
START DOUBLES
Return
*-------------------------------------------------------------------*
