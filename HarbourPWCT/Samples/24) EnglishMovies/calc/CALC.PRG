*---------------------------------------------------------------------------*
* Time : 04:03:33    Date : 10/22/2011
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

Resistance R_CALC_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CALC_18smart1() code
myObj = Calc()
myObj:Number1 := 5
myObj:Number2 := 7
nOut = myObj:Add()
? nOut
nOut = myObj:Min()
? nOut
nOut = myObj:Mul()
? nOut
nOut = myObj:Div()
? nOut
INKEY(3)
Class calc
Data number1 init 0
Data number2 init 0
Method Add
Method Min
Method Mul
Method Div
EndClass
Method Add Class Calc
Return (self:number1+self:number2)
Method Min Class Calc
Return self:number1-self:number2
Method Mul Class Calc
Return self:number1*self:number2
Method Div Class Calc
Return self:number1/self:number2


End Of Resistance

INIT PROCEDURE Init_CALC
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",43)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myObj of Class Calc",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myObj:Number1 = 5",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","myObj:Number2 = 7",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","nOut = myObj.Add()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (nOut) to console",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","nOut = myObj.Min()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (nOut) to console",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","nOut = myObj.Mul()",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (nOut) to console",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","nOut = myObj.Div()",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (nOut) to console",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class calc",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Data number1 Init Value 0",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Data number2 Init Value 0",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Add",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Min",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method Mul",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method Div",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Add Class Calc",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return (self:number1+self:number2))",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Min Class Calc",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:number1-self:number2)",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Mul Class Calc",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:number1*self:number2)",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Div Class Calc",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:number1/self:number2)",28,28)
Return
*-------------------------------------------------------------------*
