#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 20:15:55    Date : 09/24/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance ROJWQI1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance ROJWQI1() code
DO myproc
myout = myfunc ( 3 )
? myout
INKEY(3)
Proc myproc
? "Hello From Procedure"
Return Nil
Function  myfunc ( x )
? "hello from function"
Return x*x


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",38)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure myproc",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call Function myfunc ( 3 )",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myout) to console",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Modules",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myproc",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Hello From Procedure') to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function myfunc ( x )",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('hello from function') to console",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return x*x)",10,10)
Return
*-------------------------------------------------------------------*
