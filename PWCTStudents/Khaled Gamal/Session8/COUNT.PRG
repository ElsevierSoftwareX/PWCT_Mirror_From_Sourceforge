*---------------------------------------------------------------------------*
* Time : 22:51:11    Date : 01/25/2012
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
WIDTH 452 ;
HEIGHT 317 ;
ICON "PWCTICON" ;
TITLE "Manual Counter" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

@ 52 ,129 LABEL lbl1 ;
VALUE "0" ;
WIDTH 93 ;
HEIGHT 43 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,0,255} ;
TRANSPARENT ;
FONTCOLOR {0,255,0}
@ 123 ,118 BUTTONEX btn1;
CAPTION "Count";
ON CLICK counter()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc counter
count1 := win1.lbl1.Value
count1 = VAL ( count1 )
count1 := count1+1
count1 = STR ( count1 )
count1 = ALLTRIM ( count1 )
win1.lbl1.Value := count1
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Manual Counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Count'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action counter",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure counter",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","count1 = win1.lbl1.Value",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","count1 = CONVERT count1 TO Numeric",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","count1 = count1+1",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","count1 = CONVERT count1 TO STRING",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","count1 = All Trim count1",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := count1",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*
