*---------------------------------------------------------------------------*
* Time : 04:59:03    Date : 06/30/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.05.28
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
Public aArray
aArray := {}
FOR x = 1 TO 10 STEP 1
cX = STR ( x )
AADD( aArray , cX)
Next
oTest = cTest()
out = oTest:mTest()
Class cTest
Method mTest
EndClass
Method mTest Class cTest
Local x,nMax
nMax  = LEN(aArray)
FOR x = 1 TO nMax STEP 1
MyOut := MSGBOX(aArray[x],"Test ")
Next
Return 0


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public aArray",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","aArray = {}",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","cX = CONVERT x TO STRING",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cX To Array aArray",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oTest of Class cTest",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","out = oTest.mTest()",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class cTest",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method mTest",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method mTest Class cTest",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message aArray[x] Title 'Test ' Type: Message Box",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",18,18)
Return
*-------------------------------------------------------------------*
