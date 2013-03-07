*---------------------------------------------------------------------------*
* Time : 11:49:45    Date : 11/02/2012
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
MyObject2 = MyClass()
Output = MyObject:MyMethod()
Output = MyObject:MyMethod()
Output = MyObject2:MyMethod()
output = MyObject:Message("the first message")
output = MyObject:Message("the second message")
output = MyObject2:Message("another message")
output = MyObject2:Message("the last message")
output = MyObject:MessageAndTitle("the message","the title")
nOutbut = MyObject:Sum(12,8)
MyOut := MSGBOX(nOutbut," ")
Class MyClass
Method MyMethod
Method Message
Method MessageAndTitle
Method Sum
EndClass
Method MyMethod Class MyClass
MyOut := MSGINFO("message from MyMethod "," ")
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


End Of Resistance

INIT PROCEDURE Init_TEST3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObject of Class MyClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObject2 of Class MyClass",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Output = MyObject.MyMethod()",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Output = MyObject.MyMethod()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Output = MyObject2.MyMethod()",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","output = MyObject.Message('the first message')",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","output = MyObject.Message('the second message')",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","output = MyObject2.Message('another message')",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","output = MyObject2.Message('the last message')",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","output = MyObject.MessageAndTitle('the message','the title')",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","nOutbut = MyObject.Sum(12,8)",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nOutbut Title ' ' Type: Message Box",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MyClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method MyMethod",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Message",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method MessageAndTitle",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MyMethod Class MyClass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'message from MyMethod ' Title ' ' Type: Message Info",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Message(cMessage) Class MyClass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cMessage Title ' ' Type: Message Box",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MessageAndTitle(cMessage,cTitle) Class MyClass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cMessage Title cTitle Type: Message Box",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum(nNum1,nNum2) Class MyClass",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nNum1 + nNum2",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return nSum)",30,30)
Return
*-------------------------------------------------------------------*
