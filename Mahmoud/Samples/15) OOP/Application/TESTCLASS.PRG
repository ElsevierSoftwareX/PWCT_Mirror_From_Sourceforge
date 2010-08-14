#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 20:48:20    Date : 05/03/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.2 (Expert) [2006-2009]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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

Resistance R8555908324_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R8555908324_1() code
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
Method mymethod Class myclass
Return self:mydata
class myclass2 From myclass
Method method2
EndClass
Method method2 Class myclass2
Return self:mymethod()


End Of Resistance

INIT PROCEDURE Init_TESTCLASS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",42)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
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
SS_ESASTEP("Circuits\Main\Main\Main","Classes",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myclass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Class Data",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Data mydata Init Value 'Message from the parent class'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Class Methods",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Method mymethod",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Class Methods",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method mymethod Class myclass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:mydata)",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myclass2 From myclass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Class Data",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Class Methods",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Method method2",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Class Methods",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method method2 Class myclass2",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:mymethod())",21,21)
Return
*-------------------------------------------------------------------*
