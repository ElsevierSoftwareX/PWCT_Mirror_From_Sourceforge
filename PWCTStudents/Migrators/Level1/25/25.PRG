*---------------------------------------------------------------------------*
* Time : 01:00:20    Date : 11/17/2012
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


Resistance R_25_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_25_18smart1() code
MyObj = MyClass()
oSum = Sum()
oSum2 = Sum()
oSum:nNum1 := 40
oSum:nNum2 := 45
oSum2:nNum1 := 49
oSum2:nNum2 := 47
output = oSum:Sum()
MySum = oSum:GetnSum()
MyOut := MSGBOX(MySum," ")
output = oSum2:Sum()
MyOut := MSGBOX(oSum:nNum1,"Number (1) ")
MyOut := MSGBOX(oSum:nNum2,"Number (2) ")
MyOut := MSGBOX(oSum:nSum,"Sum ")
MyOut := MSGBOX(oSum2:nSum,"Sum (oSum2)")
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
Class Sum
Data nNum1 init 0
Data nNum2 init 0
Data nSum init 0
Method Sum
Method Show
Method GetnNum1
Method GetnNum2
Method GetnSum
EndClass
Method Sum Class Sum
self:nSum = self:nNum1 + self:nNum2
Return 0
Method Show Class Sum
MyOut := MSGBOX(self:nSum," ")
Return 0
Method GetnNum1 Class Sum
Return self:nNum1
Method GetnNum2 Class Sum
Return self:nNum2
Method GetnSum Class Sum
Return self:nSum


End Of Resistance

INIT PROCEDURE Init_25
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObj of Class MyClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oSum of Class Sum",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oSum2 of Class Sum",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","oSum.nNum1 = 40",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","oSum.nNum2 = 45",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","oSum2.nNum1 = 49",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","oSum2.nNum2 = 47",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","output = oSum.Sum()",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","MySum = oSum.GetnSum()",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message MySum Title ' ' Type: Message Box",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","output = oSum2.Sum()",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message oSum:nNum1 Title 'Number (1) ' Type: Message Box",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message oSum:nNum2 Title 'Number (2) ' Type: Message Box",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message oSum:nSum Title 'Sum ' Type: Message Box",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message oSum2:nSum Title 'Sum (oSum2)' Type: Message Box",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MyClass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method MyMethod",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method Message",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method MessageAndTitle",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowSum",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MyMethod Class MyClass",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Message from MyMethod ' Title ' ' Type: Message Info",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Message(cMessage) Class MyClass",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cMessage Title ' ' Type: Message Box",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MessageAndTitle(cMessage,cTitle) Class MyClass",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cMessage Title cTitle Type: Message Box",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum(nNum1,nNum2) Class MyClass",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nNum1 + nNum2",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return nSum)",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowSum(nNum1,nNum2) Class MyClass",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nNum1 + nNum2",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Output = Self.MessageAndTitle(nSum,'Sum')",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Output = Self.Message(nSum)",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Sum",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNum1 Init Value 0",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNum2 Init Value 0",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Data nSum Init Value 0",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Method Show",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Method GetnNum1",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Method GetnNum2",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Method GetnSum",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum Class Sum",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","self:nSum = self:nNum1 + self:nNum2",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Show Class Sum",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message self:nSum Title ' ' Type: Message Box",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GetnNum1 Class Sum",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:nNum1)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GetnNum2 Class Sum",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:nNum2)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GetnSum Class Sum",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:nSum)",61,61)
Return
*-------------------------------------------------------------------*
