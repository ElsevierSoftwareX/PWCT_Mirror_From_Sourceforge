*---------------------------------------------------------------------------*
* Time : 21:21:18    Date : 10/19/2011
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
 * (Noun) *
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "counter" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 230 ,197 LABEL lbl1 ;
VALUE "0" ;
WIDTH 60 ;
HEIGHT 50 ;
AUTOSIZE ;
FONT "Matura MT Script Capitals" SIZE 24  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 156 ,121 LABEL lbl2 ;
VALUE "Count with us" ;
WIDTH 222 ;
HEIGHT 47 ;
FONT "Matura MT Script Capitals" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 307 ,157 BUTTONEX btn1;
CAPTION "Count";
FONTCOLOR {255,0,128};
ON CLICK countnum()  ;
WIDTH 119 HEIGHT 41 ;
FONT "arial" SIZE 24 ;
TOOLTIP ""
@ 7 ,35 IMAGE image1;
PICTURE "TEST.JPG";
STRETCH ;
WIDTH 372 HEIGHT 146
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc countnum
cou := win1.lbl1.Value
cou = VAL ( cou )
cou := cou+1
cou = STR ( cou )
cou = ALLTRIM ( cou )
win1.lbl1.Value := cou


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Count with us'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Count'",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action countnum()",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'TEST.JPG'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure countnum",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","cou = win1.lbl1.Value",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","cou = CONVERT cou TO Numeric",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","cou = cou+1",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","cou = CONVERT cou TO STRING",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","cou = All Trim cou",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := cou",52,52)
Return
*-------------------------------------------------------------------*
