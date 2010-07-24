*---------------------------------------------------------------------------*
* Time : 14:14:33    Date : 07/24/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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

Resistance R_CALC_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CALC_15speed1() code
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
Return
*-------------------------------------------------------------------*
