*---------------------------------------------------------------------------*
* Time : 11:44:56    Date : 01/15/2013
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
myobject2 = myclass()
output = myobject:mymethod()
output = myobject:mymethod()
output = myobject2:mymethod()
output = myobject:message("the first message")
output = myobject:message("the second message")
output = myobject2:message("another message")
output = myobject2:message("the last message")
output = myobject:messagetitle("the message "," the title")
noutput = myobject:sum(2,2)
MyOut := MSGBOX(noutput," ")
Class myclass
Method mymethod
Method message
Method messagetitle
Method sum
EndClass
Method mymethod Class myclass
MyOut := MSGINFO("message from mymethod "," ")
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


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobject of Class myclass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobject2 of Class myclass",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject.mymethod()",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject.mymethod()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject2.mymethod()",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject.message('the first message')",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject.message('the second message')",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject2.message('another message')",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject2.message('the last message')",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","output = myobject.messagetitle('the message ',' the title')",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","noutput = myobject.sum(2,2)",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message noutput Title ' ' Type: Message Box",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class myclass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method mymethod",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method message",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method messagetitle",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method sum",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method mymethod Class myclass",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'message from mymethod ' Title ' ' Type: Message Info",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method message(cmessage) Class myclass",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cmessage Title ' ' Type: Message Box",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method messagetitle(cmessage,ctitle) Class myclass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cmessage Title ctitle Type: Message Box",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method sum(nnum1,nnum2) Class myclass",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","nsum = nnum1 + nnum1",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return nsum)",30,30)
Return
*-------------------------------------------------------------------*
