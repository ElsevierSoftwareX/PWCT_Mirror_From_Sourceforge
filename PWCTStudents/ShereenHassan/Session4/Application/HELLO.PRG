*---------------------------------------------------------------------------*
* Time : 13:09:10    Date : 08/07/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8

	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_HELLO_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLO_15speed1() code
? "Hello  World "
FOR x = 1 TO 10 STEP 1
? x
IF x==1
?? "            *            "
ENDIF
IF x==2
?? "           ***            "
ENDIF
IF x==3
?? "          *****          "
ENDIF
IF x==4
?? "         *******             "
ENDIF
IF x==5
?? "        *********           "
ENDIF
IF x=6
?? "         *******          "
ENDIF
IF x==7
?? "          *****          "
ENDIF
IF x==8
?? "           ***            "
ENDIF
IF x==9
?? "          *****             "
ENDIF
IF x==10
?? " Kol 3am wantom be5eeer         Shereen Hassan"
ENDIF
Next
INKEY(15)


End Of Resistance

INIT PROCEDURE Init_HELLO
START DOUBLES
Return
*-------------------------------------------------------------------*
