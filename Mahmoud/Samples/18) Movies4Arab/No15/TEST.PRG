#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 12:39:31    Date : 01/10/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
			MainSwitch     On
				Branch     Main                          
					Resistance Main                          
					Resistance exit                          
				Branch     sub                           
				Switch     On
					Resistance sub                           
				Branch     sub2                          
				Switch     On
					Resistance sub2                          
	VetoUnit :
End Of Server 

Resistance RPEPPI1() address Code Unit : Circuits\Main\Main\Main

Resistance RPEPPI2() address Code Unit : Circuits\Main\sub\sub

Resistance RPEPPI3() address Code Unit : Circuits\Main\Main\exit

Resistance RPEPPI4() address Code Unit : Circuits\Main\sub2\sub2


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RPEPPI1() code
SERVER FIREON


End Of Resistance

* Resistance Code Unit : Circuits\Main\sub\sub
Resistance RPEPPI2() code
? " wow !! "


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\exit
Resistance RPEPPI3() code
Quit


End Of Resistance

* Resistance Code Unit : Circuits\Main\sub2\sub2
Resistance RPEPPI4() code
Key := INKEY()
IF key = 32
Call Resistance circuits\main\main\exit
ENDIF
IF key = 13
With Circuit  main
With Branch  sub
SET SWITCH OFF
END WITH BRANCH
END WITH CIRCUIT
ENDIF


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",55)
SS_ESARES("Circuits\Main\sub\sub",62)
SS_ESARES("Circuits\Main\Main\exit",69)
SS_ESARES("Circuits\Main\sub2\sub2",76)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESAGOAL("Circuits\Main\sub\sub","sub")
SS_ESAGOAL("Circuits\Main\Main\exit","exit")
SS_ESAGOAL("Circuits\Main\sub2\sub2","sub2")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","SERVER FIREON",1,1)
SS_ESASTEP("Circuits\Main\sub\sub","s1",0,0)
SS_ESASTEP("Circuits\Main\sub\sub","Print text (' wow !! ') to console",1,1)
SS_ESASTEP("Circuits\Main\Main\exit","s1",0,0)
SS_ESASTEP("Circuits\Main\Main\exit","Exit to Windows",1,1)
SS_ESASTEP("Circuits\Main\sub2\sub2","s1",0,0)
SS_ESASTEP("Circuits\Main\sub2\sub2","Key := Get Key",1,1)
SS_ESASTEP("Circuits\Main\sub2\sub2","IF ( key = 32 )",2,2)
SS_ESASTEP("Circuits\Main\sub2\sub2","Code Block",0,0)
SS_ESASTEP("Circuits\Main\sub2\sub2","Call Resistance circuits\main\main\exit",3,3)
SS_ESASTEP("Circuits\Main\sub2\sub2","END OF IF STATEMENT",4,4)
SS_ESASTEP("Circuits\Main\sub2\sub2","IF ( key = 13 )",5,5)
SS_ESASTEP("Circuits\Main\sub2\sub2","Code Block",0,0)
SS_ESASTEP("Circuits\Main\sub2\sub2","With Circuit main",6,6)
SS_ESASTEP("Circuits\Main\sub2\sub2","Code Block",0,0)
SS_ESASTEP("Circuits\Main\sub2\sub2","With Branch sub",7,7)
SS_ESASTEP("Circuits\Main\sub2\sub2","Code Block",0,0)
SS_ESASTEP("Circuits\Main\sub2\sub2","SET SWITCH OFF",8,8)
SS_ESASTEP("Circuits\Main\sub2\sub2","End With Branch",9,9)
SS_ESASTEP("Circuits\Main\sub2\sub2","End With Circuit",10,10)
SS_ESASTEP("Circuits\Main\sub2\sub2","END OF IF STATEMENT",11,11)
Return
*-------------------------------------------------------------------*
