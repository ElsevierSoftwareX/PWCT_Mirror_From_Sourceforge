#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 23:46:14    Date : 09/23/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance RPVYXD1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RPVYXD1() code
name := space ( 30 )
age := VAL ( SPACE ( 2 ) )
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
SS_ESARES("Circuits\Main\Main\Main",38)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","name = String, length = 30",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","age = Numeric, length = 2",2,2)
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
