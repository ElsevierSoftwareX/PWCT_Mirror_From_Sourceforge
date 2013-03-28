*---------------------------------------------------------------------------*
* Time : 00:50:12    Date : 10/19/2011
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
? "Create Table "
? "File : Tel.DBF "
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "name",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "address",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "phone",;
Field_type WITH "c",;
Field_len WITH 20,;
Field_dec WITH 0
CLOSE
CREATE Tel FROM TempStru
? "Operation done. "
INKEY(3)


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Create Table ') to console",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('File : Tel.DBF ') to console",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table Tel",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'name'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'address'",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'phone'",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Operation done. ') to console",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",22,22)
Return
*-------------------------------------------------------------------*
