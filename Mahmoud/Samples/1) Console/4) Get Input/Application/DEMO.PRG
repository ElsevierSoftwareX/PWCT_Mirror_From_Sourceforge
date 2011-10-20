*---------------------------------------------------------------------------*
* Time : 18:18:31    Date : 10/18/2011
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

Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
name := space ( 30 )
age := VAL ( SPACE ( 3 ) )
@ 3 , 3 SAY  "Name"
@ 3 , 10 GET  name
@ 5 , 3 SAY  "Age"
@ 5 , 10 GET  Age
READ
? "Your Name is " + name
age = STR ( age )
? "Your Age is " + Age
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","name = String, length = 30",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","age = Numeric, length = 3",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Name' - AT ROW 3 & COLUMN 3",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Get Input name - AT ROW 3 & COLUMN 10",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Age' - AT ROW 5 & COLUMN 3",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Get Input Age - AT ROW 5 & COLUMN 10",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","READ INPUT",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Your Name is ' + name) to console",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","age = CONVERT age TO STRING",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Your Age is ' + Age) to console",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",11,11)
Return
*-------------------------------------------------------------------*
