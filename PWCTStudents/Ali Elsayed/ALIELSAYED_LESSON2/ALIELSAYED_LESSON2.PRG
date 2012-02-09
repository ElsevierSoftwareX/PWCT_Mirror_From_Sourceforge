*---------------------------------------------------------------------------*
* Time : 20:40:03    Date : 02/08/2012
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


Resistance R_ALIELSAYED_LESSON2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALIELSAYED_LESSON2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 251 ;
HEIGHT 275 ;
ICON "PWCTICON" ;
TITLE "Counter" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {55,74,208} 

@ 54 ,97 LABEL lbl1 ;
VALUE "0" ;
WIDTH 55 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 152 ,66 BUTTONEX btn1;
CAPTION "зо";
FONTCOLOR {0,0,0};
ON CLICK count()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc count
count := win1.lbl1.Value
count = VAL ( count )
count := count+1
count = STR ( count )
count = ALLTRIM ( count )
win1.lbl1.Value := count
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALIELSAYED_LESSON2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'зо'",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","count = win1.lbl1.Value",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","count = CONVERT count TO Numeric",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","count = count+1",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","count = CONVERT count TO STRING",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","count = All Trim count",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := count",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
