*---------------------------------------------------------------------------*
* Time : 00:19:17    Date : 11/17/2012
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


Resistance R_23_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_23_18smart1() code
MyObj = MyClass()
Output = MyObj:ShowSum(30,60)
Class MyClass
Method MyMethod
Method Message
Method MessageAndTitle
Method Sum
Method ShowSum
EndClass
Method MyMethod Class MyClass
MyOut := MSGINFO("Message from MyMethod "," ")
Return 0
Method Message(cMessage) Class MyClass
MyOut := MSGBOX(cMessage," ")
Return 0
Method MessageAndTitle(cMessage,cTitle) Class MyClass
MyOut := MSGBOX(cMessage,cTitle)
Return 0
Method Sum(nNum1,nNum2) Class MyClass
nSum = nNum1 + nNum2
Return nSum
Method ShowSum(nNum1,nNum2) Class MyClass
nSum = nNum1 + nNum2
Output = Self:MessageAndTitle(nSum,"Sum")
Output = Self:Message(nSum)
Return 0


End Of Resistance

INIT PROCEDURE Init_23
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObj of Class MyClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Output = MyObj.ShowSum(30,60)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MyClass",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Method MyMethod",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method Message",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method MessageAndTitle",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowSum",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MyMethod Class MyClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Message from MyMethod ' Title ' ' Type: Message Info",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Message(cMessage) Class MyClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cMessage Title ' ' Type: Message Box",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MessageAndTitle(cMessage,cTitle) Class MyClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cMessage Title cTitle Type: Message Box",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum(nNum1,nNum2) Class MyClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nNum1 + nNum2",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return nSum)",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowSum(nNum1,nNum2) Class MyClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nNum1 + nNum2",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Output = Self.MessageAndTitle(nSum,'Sum')",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Output = Self.Message(nSum)",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",26,26)
Return
*-------------------------------------------------------------------*
