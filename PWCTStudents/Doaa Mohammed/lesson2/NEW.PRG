*---------------------------------------------------------------------------*
* Time : 04:10:56    Date : 02/29/2012
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


Resistance R_NEW_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 378 ;
HEIGHT 284 ;
ICON "PWCTICON" ;
TITLE "зого МоФЛ  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {0,255,255} 

@ 55 ,141 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 88 ;
HEIGHT 58 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}
@ 136 ,73 BUTTONEX btn1;
CAPTION "зо ";
ON CLICK countnum()  ;
WIDTH 240 HEIGHT 53 ;
FONT "Arial" SIZE 36 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc countnum
countnum := win1.lbl1.Value
countnum = VAL ( countnum )
countnum := countnum+1
countnum = STR ( countnum )
countnum = ALLTRIM ( countnum )
win1.lbl1.Value := countnum
Return Nil


End Of Resistance

INIT PROCEDURE Init_NEW
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'зого МоФЛ  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'зо '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action countnum()",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure countnum",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = win1.lbl1.Value",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO Numeric",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = countnum+1",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO STRING",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = All Trim countnum",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := countnum",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
Return
*-------------------------------------------------------------------*
