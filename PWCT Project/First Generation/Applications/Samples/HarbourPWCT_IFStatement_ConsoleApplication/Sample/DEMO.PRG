*---------------------------------------------------------------------------*
* Time : 21:52:47    Date : 10/18/2011
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
FOR x = 1 TO 15 STEP 1
? x
IF x == 10
? "Message after number 10 !!!"
ENDIF
Next
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 15 Step 1)",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x) to console",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x == 10 )",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Message after number 10 !!!') to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",7,7)
Return
*-------------------------------------------------------------------*
