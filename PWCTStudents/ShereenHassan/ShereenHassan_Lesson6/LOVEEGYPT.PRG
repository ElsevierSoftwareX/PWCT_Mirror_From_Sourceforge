*---------------------------------------------------------------------------*
* Time : 21:02:30    Date : 02/28/2012
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

Resistance R_LOVEEGYPT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOVEEGYPT_18smart1() code
? "        Welcome back to PWCT  "
? "       "
FOR x = 1 TO 20 STEP 1
IF x==1
? "                *                 * "
ENDIF
IF X==2
? "             *      *          *      *    "
ENDIF
IF x==3
? "            *         *       *        *    "
ENDIF
IF x==4
? "           *            *    *          *    "
ENDIF
IF x==5
? "           *               *            *    "
ENDIF
IF x==6
? "           *                            *    "
ENDIF
IF x=7
? "           *               I            *    "
ENDIF
IF x==8
? "            *                          *    "
ENDIF
IF x==9
? "              *           Love        *    "
ENDIF
IF x==10
? "                *                    *    "
ENDIF
IF x==11
? "                  *      Egypt      *    "
ENDIF
IF x==12
? "                   *              *    "
ENDIF
IF x==13
? "                    *            *    "
ENDIF
IF x==14
? "                     *          *    "
ENDIF
IF x=15
? "                      *        *    "
ENDIF
IF x==16
? "                       *      *    "
ENDIF
IF x==17
? "                        *    *    "
ENDIF
IF x==18
? "                         *  *    "
ENDIF
IF x==19
? "                           *      Shereen Hassan"
ENDIF
? X
Next
INKEY(30)


End Of Resistance

INIT PROCEDURE Init_LOVEEGYPT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",44)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('        Welcome back to PWCT  ') to console",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('       ') to console",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 20 Step 1)",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==1 )",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                *                 * ') to console",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( X==2 )",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('             *      *          *      *    ') to console",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==3 )",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('            *         *       *        *    ') to console",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==4 )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('           *            *    *          *    ') to console",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==5 )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('           *               *            *    ') to console",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==6 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('           *                            *    ') to console",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x=7 )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('           *               I            *    ') to console",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==8 )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('            *                          *    ') to console",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==9 )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('              *           Love        *    ') to console",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==10 )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                *                    *    ') to console",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==11 )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                  *      Egypt      *    ') to console",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==12 )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                   *              *    ') to console",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==13 )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                    *            *    ') to console",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==14 )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                     *          *    ') to console",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x=15 )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                      *        *    ') to console",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==16 )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                       *      *    ') to console",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==17 )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                        *    *    ') to console",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==18 )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                         *  *    ') to console",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x==19 )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('                           *      Shereen Hassan') to console",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (X) to console",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 30 SECONDS)",63,63)
Return
*-------------------------------------------------------------------*
