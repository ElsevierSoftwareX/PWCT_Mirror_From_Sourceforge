*---------------------------------------------------------------------------*
* Time : 17:14:26    Date : 07/23/2010
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
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8

	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_ATTRIBUTES_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ATTRIBUTES_15speed1() code
myObj = myClass()
myObj:cMessage := "Hello"
out = myObj:ShowMessage()
myObj:cMessage := "How are you ?"
out = myObj:ShowMessage()
myObj2 = myClass()
myObj2:cMessage := "Are you fine ?"
out = myObj2:ShowMessage()
INKEY(3)
Class myClass
Data cMessage init 0
Method ShowMessage
EndClass
Method ShowMessage Class myClass
? Self:cMessage
Return 0


End Of Resistance

INIT PROCEDURE Init_ATTRIBUTES
START DOUBLES
Return
*-------------------------------------------------------------------*
