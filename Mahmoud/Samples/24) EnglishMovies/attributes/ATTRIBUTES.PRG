*---------------------------------------------------------------------------*
* Time : 03:53:12    Date : 10/22/2011
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

Resistance R_ATTRIBUTES_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ATTRIBUTES_18smart1() code
myObj = myClass()
myObj:cMessage := "Hello"
out = myObj:ShowMessage()
myObj:cMessage := "How are you ?"
out = myObj:ShowMessage()
myObj2 = myClass()
myObj2:cMessage := "Are you fine ?"
out = myObj2:ShowMessage()
INKEY(3)
Class myClass
Data cMessage init 0
Method ShowMessage
EndClass
Method ShowMessage Class myClass
? Self:cMessage


End Of Resistance

INIT PROCEDURE Init_ATTRIBUTES
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",43)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myObj of Class myClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myObj:cMessage = 'Hello'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","out = myObj.ShowMessage()",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","myObj:cMessage = 'How are you ?'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","out = myObj.ShowMessage()",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myObj2 of Class myClass",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","myObj2:cMessage = 'Are you fine ?'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","out = myObj2.ShowMessage()",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Data cMessage Init Value 0",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowMessage",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowMessage Class myClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Self:cMessage) to console",15,15)
Return
*-------------------------------------------------------------------*
