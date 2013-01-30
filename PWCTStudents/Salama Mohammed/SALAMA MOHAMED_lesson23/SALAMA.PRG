*---------------------------------------------------------------------------*
* Time : 12:11:31    Date : 01/15/2013
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
output = myobject:showsum(30,20)
Class myclass
Method mymethod
Method message
Method messagetitle
Method sum
Method showsum
EndClass
Method mymethod Class myclass
MyOut := MSGINFO("message from mymethod"," ")
Return 0
Method message(cmessage) Class myclass
MyOut := MSGBOX(cmessage," ")
Return 0
Method messagetitle(cmessage,ctitle) Class myclass
MyOut := MSGBOX(cmessage,ctitle)
Return 0
Method sum(nnum1,nnum2) Class myclass
nsum = nnum1 + nnum1
Return nsum
Method showsum(nnum1,nnum2) Class myclass
nsum = nnum1 + nnum1
output = self:messagetitle(nsum,"sum")
output = self:message(nsum)
Return 0


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobject of Class myclass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject.showsum(30,20)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myclass",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Method mymethod",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method message",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method messagetitle",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method sum",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method showsum",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method mymethod Class myclass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'message from mymethod' Title ' ' Type: Message Info",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method message(cmessage) Class myclass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cmessage Title ' ' Type: Message Box",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method messagetitle(cmessage,ctitle) Class myclass",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cmessage Title ctitle Type: Message Box",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method sum(nnum1,nnum2) Class myclass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","nsum = nnum1 + nnum1",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return nsum)",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showsum(nnum1,nnum2) Class myclass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","nsum = nnum1 + nnum1",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","output = self.messagetitle(nsum,'sum')",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","output = self.message(nsum)",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",26,26)
Return
*-------------------------------------------------------------------*
