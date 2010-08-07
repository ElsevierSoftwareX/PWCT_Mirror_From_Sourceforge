#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 20:10:14    Date : 09/24/2008
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

Resistance RRXXHY1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RRXXHY1() code
TMP_M1 = 0
TMP_M2 = 0
myhandle = FOPEN( "test.txt" , TMP_M1 + TMP_M2 )
mystr := space ( 7 )
myerror = FREAD( myhandle,@mystr,7)
? mystr
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",38)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Open file 'test.txt' store handle in myhandle",1,3)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = String, length = 7",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Read From file, handle myhandle , buffer mystr bytes 7 check myerror",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",7,7)
Return
*-------------------------------------------------------------------*
