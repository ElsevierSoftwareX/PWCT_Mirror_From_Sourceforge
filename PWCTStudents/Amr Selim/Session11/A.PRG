*---------------------------------------------------------------------------*
* Time : 21:21:15    Date : 01/13/2012
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

Resistance R_A_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_A_18smart1() code
INKEY(3)
? "PWCT "
WAIT "ELSLAM ALIKM"
? "PWCT IS VERY GOOD "
FOR x = 1 TO 10 STEP 1
? X
IF X==9
? "THIS IS NUMPER NINE "
ENDIF
Next
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_A
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",44)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text (NEW LINE) 'PWCT '",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Wait (KEY) Message : 'ELSLAM ALIKM'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('PWCT IS VERY GOOD ') to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (X) to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( X==9 )",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('THIS IS NUMPER NINE ') to console",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",11,11)
Return
*-------------------------------------------------------------------*
