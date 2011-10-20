*---------------------------------------------------------------------------*
* Time : 15:28:09    Date : 10/19/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
OPEN CONNECTION MyCon SERVER 'doublesvsoop.sourceforge.net' PORT 80 HTTP
GET URL "/" TO Response CONNECTION MyCon
CLOSE CONNECTION MyCon
? response
INKEY(100)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Open Connection (MyCon) Server ('doublesvsoop.sourceforge.net') Port (80)",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Get URL ('/') Connection (MyCon) Variable-Response (Response)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Close Connection (MyCon)",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (response) to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 100 SECONDS)",5,5)
Return
*-------------------------------------------------------------------*
