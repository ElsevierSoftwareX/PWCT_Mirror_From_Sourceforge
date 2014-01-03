*---------------------------------------------------------------------------*
* Time : 02:03:04    Date : 01/04/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.01.01
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 498 ;
HEIGHT 406 ;
ICON "PWCTICON" ;
TITLE "Multiple Inheritance  " ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 10 ,10 EDITBOX edit1;
WIDTH 353 ;
HEIGHT 348;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,376 BUTTONEX btn1;
CAPTION "Test ";
ON CLICK pTask()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
Class Base1
Data nNumber1 init 0
Data nNumber2 init 0
EndClass
Class Base2
Data nSum init 0
Method Sum
EndClass
Method Sum(n1,n2) Class Base2
self:nSum := n1+n2
Return 0
class Calc From Base1,Base2
Method Sum
EndClass
Method Sum Class Calc
self:nSum := self:nNumber1 + self:nNumber2
Return 0
procedure pTask()
oCalc = Calc()
oCalc:nNumber1 := 5
oCalc:nNumber2 := 10
out = oCalc:Sum()
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Number 1 : "+ alltrim(str(oCalc:nNumber1))
else
Win1.Edit1.VALUE := "Number 1 : "+ alltrim(str(oCalc:nNumber1))
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Number 2 : "+ alltrim(str(oCalc:nNumber2))
else
Win1.Edit1.VALUE := "Number 2 : "+ alltrim(str(oCalc:nNumber2))
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Sum :"+ alltrim(str(oCalc:nSum))
else
Win1.Edit1.VALUE := "Sum :"+ alltrim(str(oCalc:nSum))
endif
return

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Multiple Inheritance  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Test '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pTask",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Base1",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber1 Init Value 0",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber2 Init Value 0",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Base2",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Data nSum Init Value 0",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum(n1,n2) Class Base2",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","self:nSum = n1+n2",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Calc From Base1,Base2",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum Class Calc",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","self:nSum = self:nNumber1 + self:nNumber2",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pTask ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oCalc of Class Calc",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","oCalc.nNumber1 = 5",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","oCalc.nNumber2 = 10",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","out = oCalc.Sum()",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Number 1 : '+ alltrim(str(oCalc:nNumber1))) to Editbox (Edit1) of Window (Win1)",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Number 2 : '+ alltrim(str(oCalc:nNumber2))) to Editbox (Edit1) of Window (Win1)",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Sum :'+ alltrim(str(oCalc:nSum))) to Editbox (Edit1) of Window (Win1)",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
