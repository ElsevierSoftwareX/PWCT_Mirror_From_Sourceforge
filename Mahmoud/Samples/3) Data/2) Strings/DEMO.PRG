#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 00:11:28    Date : 09/24/2008
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

Resistance RHIPDJ1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RHIPDJ1() code
mystr := "This is a String"
? mystr
mystr2 = UPPER ( mystr )
? "Upper : " + mystr2
mystr2 = LOWER ( mystr )
? "Lower : " + mystr2
mylen  = LEN(mystr)
mylen = STR ( mylen )
? "Length:" + mylen
MyOut = Left(mystr,4)
? "4 character from left : " + myout
MyOut = Right(mystr,4)
? "4 character from right : " + myout
myout = SUBSTR(mystr,6,2)
? "Sub String : " + myout
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",38)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = 'This is a String'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to console",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","mystr2 = CONVERT String mystr To UPPER CASE",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Upper : ' + mystr2) to console",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","mystr2 = CONVERT String mystr To LOWER CASE",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Lower : ' + mystr2) to console",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","mylen = Get Length of String/Variable/Array mystr",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","mylen = CONVERT mylen TO STRING",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Length:' + mylen) to console",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut =  Get SubString from left, String: mystr Count: 4",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('4 character from left : ' + myout) to console",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut =  Get SubString from right, String: mystr Count: 4",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('4 character from right : ' + myout) to console",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Sub String of mystr From 6 Count 2",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Sub String : ' + myout) to console",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",16,16)
Return
*-------------------------------------------------------------------*
