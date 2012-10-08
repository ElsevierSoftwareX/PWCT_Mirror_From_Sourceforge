*---------------------------------------------------------------------------*
* Time : 15:15:22    Date : 10/02/2012
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


Resistance R_CLASS1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CLASS1_18smart1() code
MyObj = Myclass()
Myobj2 = Myclass()
oSum = Sum()
oSum:nNum1 := 40
oSum:nNum2 := 60
Outp = MyObj:ShowSum(10,10)
Outp = oSum:Sum()
Outp = oSum:Show()
Outp = oSum:multiply()
Outp = oSum:rShow()
Class Myclass
Method Mymethod
Method message
Method Title
Method Sum
Method ShowSum
EndClass
Method Mymethod Class Myclass
MyOut := MSGINFO("Message from Mymethod "," ")
Return 0
Method message(cmessage) Class Myclass
MyOut := MSGINFO(cmessage," ")
Return 0
Method Title(cmessage,ctitle) Class Myclass
MyOut := MSGINFO(cmessage,ctitle)
Return 0
Method Sum(num1,num2) Class Myclass
total = num1 + num2
MyOut := MSGBOX(total,"")
Return total
Method ShowSum(num1,num2) Class Myclass
nSum = num1 + num2
Outp = Self:Title(nSum,"sum")
Outp = Self:message(nSum)
Return 0
Class Sum
Data nNum1 init 0
Data nNum2 init 0
Data nSum init 0
Data nMultiply init 0
Method Sum
Method Show
Method multiply
Method rShow
EndClass
Method Sum Class Sum
Self:nSum = Self:nNum1 + Self:nNum2
Return 0
Method Show Class Sum
MyOut := MSGBOX(Self:nSum," ")
Return 0
Method multiply Class Sum
Self:nMultiply := Self:nNum1*Self:nNum2
Return 0
Method rShow Class Sum
MyOut := MSGBOX(Self:nMultiply," ")
Return 0


End Of Resistance

INIT PROCEDURE Init_CLASS1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObj of Class Myclass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Myobj2 of Class Myclass",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oSum of Class Sum",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","oSum.nNum1 = 40",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","oSum.nNum2 = 60",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = MyObj.ShowSum(10,10)",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = oSum.Sum()",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = oSum.Show()",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = oSum.multiply()",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = oSum.rShow()",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Myclass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method Mymethod",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method message",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method Title",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowSum",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Mymethod Class Myclass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Message from Mymethod ' Title ' ' Type: Message Info",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method message(cmessage) Class Myclass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cmessage Title ' ' Type: Message Info",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Title(cmessage,ctitle) Class Myclass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cmessage Title ctitle Type: Message Info",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum(num1,num2) Class Myclass",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","total = num1 + num2",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message total Title '' Type: Message Box",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return total)",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowSum(num1,num2) Class Myclass",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = num1 + num2",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = Self.Title(nSum,'sum')",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = Self.message(nSum)",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Sum",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNum1 Init Value 0",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNum2 Init Value 0",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Data nSum Init Value 0",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Data nMultiply Init Value 0",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Method Show",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Method multiply",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Method rShow",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum Class Sum",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nSum = Self:nNum1 + Self:nNum2",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Show Class Sum",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Self:nSum Title ' ' Type: Message Box",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method multiply Class Sum",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nMultiply = Self:nNum1*Self:nNum2",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method rShow Class Sum",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Self:nMultiply Title ' ' Type: Message Box",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",57,57)
Return
*-------------------------------------------------------------------*
