*---------------------------------------------------------------------------*
* Time : 00:13:13    Date : 10/19/2011
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
name := "Samir"
expr1 := "hello " + name
num1 := 12
expr2 := (5+num1) * (10+num1)
expr3 := (.T. .AND. .F. ) .OR. (.T.)
? expr1
? expr2
? expr3
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","name = 'Samir'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","expr1 = 'hello ' + name",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = 12",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","expr2 = (5+num1) * (10+num1)",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","expr3 = (.T. .AND. .F. ) .OR. (.T.)",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (expr1) to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (expr2) to console",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (expr3) to console",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",9,9)
Return
*-------------------------------------------------------------------*
