*---------------------------------------------------------------------------*
* Time : 23:22:19    Date : 10/18/2011
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
mynum := 100
mystr = STR ( mynum )
mystr = ALLTRIM ( mystr )
? "Number : " + mystr
mynum = VAL ( mystr )
? mynum * 5
set century on
mydate = DATE()
? "(Date) + 3 : "
?? mydate + 3
mystr = DTOC ( mydate )
? "Today : " + mystr
mytime = TIME()
? "Time : " + mytime
WAIT ""


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","mynum = 100",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = CONVERT mynum TO STRING",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = All Trim mystr",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Number : ' + mystr) to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = CONVERT mystr TO Numeric",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mynum * 5) to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","mydate = System Date of today",7,8)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('(Date) + 3 : ') to console",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text mydate + 3",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = CONVERT Date mydate TO String",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Today : ' + mystr) to console",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","mytime = System Time",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Time : ' + mytime) to console",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Wait (KEY) Message : ''",15,15)
Return
*-------------------------------------------------------------------*
