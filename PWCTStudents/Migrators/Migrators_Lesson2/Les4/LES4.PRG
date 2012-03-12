*---------------------------------------------------------------------------*
* Time : 17:27:22    Date : 02/26/2012
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

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_LES4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 402 ;
HEIGHT 129 ;
ICON "PWCTICON" ;
TITLE "ÚÏÇÏ íÏæí  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 32 ,25 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 202 ;
HEIGHT 35 ;
FONT "Arial Narrow" SIZE 18  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 14 ,251 BUTTONEX btn1;
CAPTION "ÚÏ ";
ON CLICK count()  ;
WIDTH 100 HEIGHT 30 ;
FONT "" SIZE 18 ;
TOOLTIP ""
@ 49 ,251 BUTTONEX btn2;
CAPTION "ÊÕÝíÑ ";
ON CLICK def()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc count
num := win1.lbl1.Value
num = VAL ( num )
num := num+1
num = STR ( num )
num = ALLTRIM ( num )
win1.lbl1.Value := num
Return Nil
Proc def
win1.lbl1.Value := "0"
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÚÏÇÏ íÏæí  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÚÏ '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÊÕÝíÑ '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action def",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl1.Value",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","num = num+1",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := num",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure def",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := '0'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",46,46)
Return
*-------------------------------------------------------------------*
