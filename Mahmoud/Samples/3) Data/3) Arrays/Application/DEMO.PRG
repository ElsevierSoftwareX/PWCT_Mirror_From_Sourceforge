#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 12:40:24    Date : 09/24/2008
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

Resistance RPEPPI1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RPEPPI1() code
myarray := {}
AADD( myarray , "Ahmed")
AADD( myarray , "Ali")
AADD( myarray , "Mahmoud")
AADD( myarray , "Fady")
AADD( myarray , "Shady")
AADD( myarray , "Maher")
FOR x = 1 TO 6 STEP 1
? myarray[x]
Next
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",38)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array myarray",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Ahmed' To Array myarray",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Ali' To Array myarray",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Mahmoud' To Array myarray",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Fady' To Array myarray",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Shady' To Array myarray",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Maher' To Array myarray",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 6 Step 1)",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myarray[x]) to console",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",11,11)
Return
*-------------------------------------------------------------------*
