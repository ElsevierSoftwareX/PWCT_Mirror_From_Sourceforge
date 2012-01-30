*---------------------------------------------------------------------------*
* Time : 21:49:05    Date : 01/27/2012
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

Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
@ 3 , 3 SAY  "Thanks ENG.Mahmoud "
INKEY(1)
FOR x = 1 TO 10 STEP 1
? x
IF x==9
? "this is number nine "
ENDIF
INKEY(2)
Next


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",44)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Thanks ENG.Mahmoud ' - AT ROW 3 & COLUMN 3",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 1 SECONDS)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x) to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==9 )",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('this is number nine ') to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 2 SECONDS)",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",9,9)
Return
*-------------------------------------------------------------------*
