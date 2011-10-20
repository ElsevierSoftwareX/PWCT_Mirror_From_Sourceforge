*---------------------------------------------------------------------------*
* Time : 22:35:55    Date : 10/18/2011
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
v1 := 5
v2 := 0
BEGIN SEQUENCE WITH { |e| break(e) }
? v1 / v2
RECOVER
? "Oh no, it's error !!!"
END SEQUENCE
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","v1 = 5",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = 0",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Error Handling, Try",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (v1 / v2) to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Catch",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Oh no, it's error !!!') to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","End Try",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",8,8)
Return
*-------------------------------------------------------------------*
