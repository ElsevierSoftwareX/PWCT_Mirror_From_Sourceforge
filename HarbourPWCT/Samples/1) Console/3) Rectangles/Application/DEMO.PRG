*---------------------------------------------------------------------------*
* Time : 18:43:44    Date : 10/18/2011
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
@ 5,5  to 10,10
Set Color To W/B,U,U,,,U,U
@ 11,11 Clear to 21,21
@ 11,11  to 21,21
@ 16 , 14 SAY  "Blue"
Set Color To W/R,U,U,,,U,U
@ 5,30 Clear to 15,70
@ 5,30  to 15,70 double
@ 10 , 47 SAY  "Red"
INKEY(3)
Set Color To U/W,U,U,,,U,U
Clear
Set Color To U/U,U,U,,,U,U
@ 6,6 Clear to 11,52
Set Color To W/B,U,U,,,U,U
@ 5,5 Clear to 10,50
@ 5,5  to 10,50
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 5 , 5 to 10 , 10",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( White , Blue ) Enhanced ( Black , Black ) Unselected ( Black , Black )",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Region from 11 , 11 to 21 , 21",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 11 , 11 to 21 , 21",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Blue' - AT ROW 16 & COLUMN 14",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( White , Red ) Enhanced ( Black , Black ) Unselected ( Black , Black )",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Region from 5 , 30 to 15 , 70",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Double Box from 5 , 30 to 15 , 70",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Red' - AT ROW 10 & COLUMN 47",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( Black , White ) Enhanced ( Black , Black ) Unselected ( Black , Black )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( Black , Black ) Enhanced ( Black , Black ) Unselected ( Black , Black )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Region from 6 , 6 to 11 , 52",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( White , Blue ) Enhanced ( Black , Black ) Unselected ( Black , Black )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Region from 5 , 5 to 10 , 50",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 5 , 5 to 10 , 50",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",18,18)
Return
*-------------------------------------------------------------------*
