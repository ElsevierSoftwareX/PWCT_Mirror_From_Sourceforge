*---------------------------------------------------------------------------*
* Time : 00:43:42    Date : 10/19/2011
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
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Open file 'test.txt' store handle in myhandle",1,3)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = String, length = 7",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Read From file, handle myhandle , buffer mystr bytes 7 check myerror",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",7,7)
Return
*-------------------------------------------------------------------*
