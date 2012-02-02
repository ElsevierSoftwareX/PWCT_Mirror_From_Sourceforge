*---------------------------------------------------------------------------*
* Time : 00:11:29    Date : 02/03/2012
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

Resistance R_COUNTER_APP_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_APP_18smart1() code
? "Welcome To Counter Application "
? "Count numbers from 0 to 10 "
INKEY(1)
FOR x = 0 TO 10 STEP 1
? x
INKEY(1)
IF x==10
INKEY(1)
? "Count again"
INKEY(1)
FOR x = 0 TO 10 STEP 1
? x
INKEY(1)
Next
? "End count "
ENDIF
Next
INKEY(20)


End Of Resistance

INIT PROCEDURE Init_COUNTER_APP
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",44)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Welcome To Counter Application ') to console",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Count numbers from 0 to 10 ') to console",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 1 SECONDS)",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 0 To 10 Step 1)",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x) to console",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 1 SECONDS)",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==10 )",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 1 SECONDS)",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Count again') to console",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 1 SECONDS)",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 0 To 10 Step 1)",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x) to console",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 1 SECONDS)",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('End count ') to console",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 20 SECONDS)",18,18)
Return
*-------------------------------------------------------------------*
