*---------------------------------------------------------------------------*
* Time : 03:41:30    Date : 10/22/2011
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

Resistance R_CLASS1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CLASS1_18smart1() code
myObj = myClass()
out = myObj:myMethod("How are you")
Class myClass
Method myMethod
EndClass
Method myMethod(p1) Class myClass
? p1
INKEY(3)
Return 0


End Of Resistance

INIT PROCEDURE Init_CLASS1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",43)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myObj of Class myClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","out = myObj.myMethod('How are you')",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myClass",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Method myMethod",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method myMethod(p1) Class myClass",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (p1) to console",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",9,9)
Return
*-------------------------------------------------------------------*
