*---------------------------------------------------------------------------*
* Time : 19:12:08    Date : 03/20/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 230 ;
HEIGHT 329 ;
ICON "PWCTICON" ;
TITLE "ÇáÚÏÇÏ ÇáíÏæì  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,255} 

@ 48 ,38 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 90 ;
HEIGHT 69 ;
AUTOSIZE ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {0,128,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 202 ,40 BUTTONEX btn1;
CAPTION "ÇÈÏÇ ÇáÚÏ ";
ON CLICK count()  ;
WIDTH 131 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Count
Count := win1.lbl1.Value
Count = VAL ( Count )
Count := Count+1
Count = STR ( Count )
Count = ALLTRIM ( Count )
win1.lbl1.Value := Count
Return Nil
procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÚÏÇÏ ÇáíÏæì  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÇÈÏÇ ÇáÚÏ '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Count",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Count = win1.lbl1.Value",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Count = CONVERT Count TO Numeric",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Count = Count+1",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Count = CONVERT Count TO STRING",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Count = All Trim Count",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := Count",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*
