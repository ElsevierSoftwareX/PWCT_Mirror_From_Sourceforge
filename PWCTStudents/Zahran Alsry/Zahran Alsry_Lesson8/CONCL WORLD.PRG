*---------------------------------------------------------------------------*
* Time : 04:06:01    Date : 05/28/2012
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

Resistance R_CONCL_WORLD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONCL_WORLD_18smart1() code
? "Hello world"
FOR x = 1 TO 50 STEP 1
? x
IF x == 40
? "This number forty"
ENDIF
IF x == 10
? "This number ten"
ENDIF
IF x == 20
? "This number twentieth"
ENDIF
IF x == 30
? "This number thirtieth"
ENDIF
IF x == 50
? "This number fiftieth"
ENDIF
Next
INKEY(15)


End Of Resistance

INIT PROCEDURE Init_CONCL_WORLD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",44)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Print Text (NEW LINE) 'Hello world'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 50 Step 1)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x) to console",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x == 40 )",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('This number forty') to console",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x == 10 )",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('This number ten') to console",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x == 20 )",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('This number twentieth') to console",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x == 30 )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('This number thirtieth') to console",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x == 50 )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('This number fiftieth') to console",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 15 SECONDS)",20,20)
Return
*-------------------------------------------------------------------*
