*---------------------------------------------------------------------------*
* Time : 20:21:13    Date : 02/25/2012
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
WIDTH 192 ;
HEIGHT 172 ;
ICON "PWCTICON" ;
TITLE "ÇáÚÏÇÏ ÇáíÏæí  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 23 ,77 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 73 ,45 BUTTONEX btn1;
CAPTION "ÚÏ ";
BACKCOLOR {112,112,112};
ON CLICK countnum()  ;
WIDTH 82 HEIGHT 36 ;
FONT "Arial" SIZE 20 ;
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

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÚÏÇÏ ÇáíÏæí  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÚÏ '",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action countnum()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure countnum",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = win1.lbl1.Value",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO Numeric",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = countnum+1",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO STRING",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = All Trim countnum",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := countnum",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
