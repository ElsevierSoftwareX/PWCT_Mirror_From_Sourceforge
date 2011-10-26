*---------------------------------------------------------------------------*
* Time : 16:25:24    Date : 10/22/2011
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
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8

	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_ARRAYTEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ARRAYTEST_18smart1() code
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
SS_ESARES("Circuits\Main\Main\Main",43)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aArray",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'one' To Array aArray",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'two' To Array aArray",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'three' To Array aArray",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray[x]) to console",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","aArray2 = {{1,2,3},{4,5,6},{7,8,9}}",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray2",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","nMax2 = Get Length of String/Variable/Array aArray2[x]",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x2 = 1 To nMax2 Step 1)",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray2[x][x2]) to console",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('********************** ') to console",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",19,19)
Return
*-------------------------------------------------------------------*
