*---------------------------------------------------------------------------*
* Time : 07:47:29    Date : 01/15/2013
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


Resistance R_SALAMA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_18smart1() code
myobject = myclass()
output = myobject:mymethod()
myobject2 = myclass()
output = myobject2:mymethod()
output = myobject:mymethod()
Class myclass
Method mymethod
EndClass
Method mymethod Class myclass
MyOut := MSGINFO("message from mymethod "," ")
Return 0


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobject of Class myclass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject.mymethod()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobject2 of Class myclass",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject2.mymethod()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject.mymethod()",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myclass",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method mymethod",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method mymethod Class myclass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'message from mymethod ' Title ' ' Type: Message Info",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",11,11)
Return
*-------------------------------------------------------------------*
