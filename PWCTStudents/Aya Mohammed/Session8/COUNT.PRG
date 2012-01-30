*---------------------------------------------------------------------------*
* Time : 01:48:22    Date : 01/28/2012
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


Resistance R_COUNT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Count" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 69 ,207 LABEL lbl1 ;
VALUE "0" ;
WIDTH 139 ;
HEIGHT 68 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,0,128}
@ 187 ,177 BUTTONEX btn1;
CAPTION "Count";
ON CLICK CountNum()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc CountNum
Num := win1.lbl1.Value
Num = VAL ( Num )
Num := Num+1
Num = STR ( Num )
Num = ALLTRIM ( Num )
win1.lbl1.Value := Num
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Count'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Count'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CountNum",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CountNum",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Num = win1.lbl1.Value",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Num = CONVERT Num TO Numeric",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Num = Num+1",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Num = CONVERT Num TO STRING",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Num = All Trim Num",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := Num",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
Return
*-------------------------------------------------------------------*
