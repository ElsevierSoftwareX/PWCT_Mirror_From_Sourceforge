*---------------------------------------------------------------------------*
* Time : 14:31:11    Date : 10/01/2012
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


Resistance R_CLASS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CLASS_18smart1() code
MyObj = Myclass()
MyObj1 = Myclass()
Outp = MyObj:Mymethod()
Outp = MyObj1:Mymethod()
Class Myclass
Method Mymethod
EndClass
Method Mymethod Class Myclass
MyOut := MSGINFO("Message from Mymethod "," ")
Return 0


End Of Resistance

INIT PROCEDURE Init_CLASS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObj of Class Myclass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObj1 of Class Myclass",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = MyObj.Mymethod()",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = MyObj1.Mymethod()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Myclass",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method Mymethod",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Mymethod Class Myclass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Message from Mymethod ' Title ' ' Type: Message Info",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",10,10)
Return
*-------------------------------------------------------------------*
