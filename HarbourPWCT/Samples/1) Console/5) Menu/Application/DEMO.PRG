*---------------------------------------------------------------------------*
* Time : 19:04:38    Date : 10/18/2011
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
Set Color To W/B,B/W,,,U/U
Clear
@ 3 , 3 PROMPT  "Option [1]"
@ 5 , 3 PROMPT  "Option [2]"
@ 7 , 3 PROMPT  "Option [3]"
@ 9 , 3 PROMPT  "Option [4]"
@ 11 , 3 PROMPT  "Option [5]"
Menu To mymenu
mymenu = STR ( mymenu )
? "your option is " + mymenu
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( White , Blue ) Enhanced ( Blue , White ) Unselected ( Black , Black )",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Option [1]' - AT ROW 3 & COLUMN 3",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Option [2]' - AT ROW 5 & COLUMN 3",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Option [3]' - AT ROW 7 & COLUMN 3",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Option [4]' - AT ROW 9 & COLUMN 3",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Option [5]' - AT ROW 11 & COLUMN 3",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Menu mymenu",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","mymenu = CONVERT mymenu TO STRING",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('your option is ' + mymenu) to console",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",11,11)
Return
*-------------------------------------------------------------------*
