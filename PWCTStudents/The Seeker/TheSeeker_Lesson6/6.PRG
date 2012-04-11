*---------------------------------------------------------------------------*
* Time : 06:08:06    Date : 03/26/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
#include "xhb.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8

	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_6_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_6_18smart1() code
? "Hellow world "
FOR x = 1 TO 10 STEP 1
? x
IF x==9
? "This is nimber 9 "
INKEY(3)
ENDIF
Next


End Of Resistance

INIT PROCEDURE Init_6
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",44)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Hellow world ') to console",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x) to console",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==9 )",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('This is nimber 9 ') to console",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",8,8)
Return
*-------------------------------------------------------------------*
