#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 12:49:08    Date : 09/24/2008
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

Resistance RPBIFR1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RPBIFR1() code
Mystr = MEMOREAD ( "Demo.TXT" )
mymax = MLCOUNT( mystr , 254 )
mymax = STR ( mymax )
? "Lines " + mymax
? mystr
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",38)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","File 'Demo.TXT' To String Mystr",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Lines count of mystr",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Lines ' + mymax) to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to console",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",6,6)
Return
*-------------------------------------------------------------------*
