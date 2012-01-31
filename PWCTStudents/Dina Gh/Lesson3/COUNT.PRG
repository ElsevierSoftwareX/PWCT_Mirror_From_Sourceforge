*---------------------------------------------------------------------------*
* Time : 04:34:16    Date : 01/30/2012
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
WIDTH 346 ;
HEIGHT 339 ;
ICON "PWCTICON" ;
TITLE "ÇáÚÏÇÏ ÇáíÏæí" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,0} 

@ 99 ,154 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 89 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "" SIZE 18  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,64,128}
@ 172 ,108 BUTTONEX btn1;
CAPTION " ÚÏ";
ON CLICK countnum()  ;
WIDTH 98 HEIGHT 40 ;
FONT "" SIZE 18 ;
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

INIT PROCEDURE Init_COUNT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÚÏÇÏ ÇáíÏæí'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' ÚÏ'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action countnum()",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure countnum",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = win1.lbl1.Value",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO Numeric",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = countnum+1",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO STRING",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = All Trim countnum",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := countnum",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*
