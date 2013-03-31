*---------------------------------------------------------------------------*
* Time : 03:23:54    Date : 10/22/2011
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

Resistance R_TESTCLASS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TESTCLASS_18smart1() code
myobj = myclass()
myoutput = myobj:mymethod()
? myoutput
myoutput := myobj:mydata
? myoutput
myobj2 = myclass2()
myobj2:mydata := "Message from the Child Class"
myoutput = myobj2:method2()
? myoutput
INKEY(3)
Class myclass
Data mydata init "Message from the parent class"
Method mymethod
EndClass
Method MyMethod Class MyClass
Return self:MyData
class myclass2 From myclass
Method method2
EndClass
Method Method2 Class MyClass2
Return self:MyData


End Of Resistance

INIT PROCEDURE Init_TESTCLASS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class myclass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = myobj.mymethod()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myoutput) to console",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = myobj.mydata",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myoutput) to console",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj2 of Class myclass2",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","myobj2.mydata = 'Message from the Child Class'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = myobj2.method2()",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myoutput) to console",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myclass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Data mydata Init Value 'Message from the parent class'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method mymethod",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MyMethod Class MyClass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:MyData)",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myclass2 From myclass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method method2",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Method2 Class MyClass2",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:MyData)",21,21)
Return
*-------------------------------------------------------------------*
