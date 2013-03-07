*---------------------------------------------------------------------------*
* Time : 10:37:48    Date : 11/02/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
#include "xhb.ch"
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
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_TEST3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST3_18smart1() code
MyObject = MyClass()
Output = MyObject:MyMethod()
Output = MyObject:MyMethod()
MyObject2 = MyClass()
Output = MyObject2:MyMethod()
Class MyClass
Method MyMethod
EndClass
Method MyMethod Class MyClass
MyOut := MSGINFO("message from MyMethod "," ")
Return 0


End Of Resistance

INIT PROCEDURE Init_TEST3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObject of Class MyClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Output = MyObject.MyMethod()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Output = MyObject.MyMethod()",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObject2 of Class MyClass",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Output = MyObject2.MyMethod()",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MyClass",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method MyMethod",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MyMethod Class MyClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'message from MyMethod ' Title ' ' Type: Message Info",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",11,11)
Return
*-------------------------------------------------------------------*
