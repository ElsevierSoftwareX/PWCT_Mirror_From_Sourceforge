*---------------------------------------------------------------------------*
* Time : 23:16:15    Date : 10/18/2011
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
Mystr = MEMOREAD ( "Demo.TXT" )
mymax = MLCOUNT( mystr , 254 )
mymax = STR ( mymax )
? "Lines " + mymax
? mystr
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","File 'Demo.TXT' To String Mystr",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Lines count of mystr",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = CONVERT mymax TO STRING",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Lines ' + mymax) to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to console",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",6,6)
Return
*-------------------------------------------------------------------*
