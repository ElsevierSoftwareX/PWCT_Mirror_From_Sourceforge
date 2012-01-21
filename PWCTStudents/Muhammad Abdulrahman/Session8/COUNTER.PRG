*---------------------------------------------------------------------------*
* Time : 21:22:38    Date : 01/21/2012
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


Resistance R_COUNTER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 331 ;
HEIGHT 388 ;
ICON "PWCTICON" ;
TITLE "Counter" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,128,128} 

@ 61 ,128 LABEL lbl1 ;
VALUE "0" ;
WIDTH 182 ;
HEIGHT 65 ;
AUTOSIZE ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {64,128,128} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 230 ,26 BUTTONEX btn1;
CAPTION "Count";
ON CLICK countnum()  ;
WIDTH 101 HEIGHT 39 ;
FONT "Arial" SIZE 20 ;
BOLD ;
TOOLTIP ""
@ 231 ,161 BUTTONEX btn2;
CAPTION "Close";
ON CLICK Myclose()  ;
WIDTH 101 HEIGHT 39 ;
FONT "arial" SIZE 20 ;
BOLD ;
TOOLTIP ""
@ 306 ,172 LABEL lbl2 ;
VALUE "Muhammad A. Rahman" ;
WIDTH 140 ;
HEIGHT 19 ;
FONT "Brush Script MT" SIZE 11  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {255,255,255}
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
Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Count'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action countnum()",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myclose()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Muhammad A. Rahman'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure countnum",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = win1.lbl1.Value",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO Numeric",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = countnum+1",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO STRING",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = All Trim countnum",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := countnum",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclose",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
Return
*-------------------------------------------------------------------*
