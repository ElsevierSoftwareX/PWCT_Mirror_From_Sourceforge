*---------------------------------------------------------------------------*
* Time : 15:59:33    Date : 12/28/2011
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


Resistance R_8_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_8_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 326 ;
HEIGHT 278 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·À«„‰" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 10 ,104 LABEL lbl1 ;
VALUE "0" ;
WIDTH 103 ;
HEIGHT 88 ;
AUTOSIZE ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 159 ,208 BUTTONEX btn1;
CAPTION "count";
FONTCOLOR {255,0,0};
ON CLICK counter()  ;
WIDTH 95 HEIGHT 48 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 162 ,26 BUTTONEX btn2;
CAPTION "Exit";
FONTCOLOR {128,0,64};
ON CLICK myclose()  ;
WIDTH 103 HEIGHT 45 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc counter
counter := win1.lbl1.Value
counter = VAL ( counter )
counter := counter+1
counter = STR ( counter )
counter = ALLTRIM ( counter )
win1.lbl1.Value := counter
Return Nil


End Of Resistance

INIT PROCEDURE Init_8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·À«„‰'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'count'",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action counter()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure counter",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","counter = win1.lbl1.Value",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","counter = CONVERT counter TO Numeric",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","counter = counter+1",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","counter = CONVERT counter TO STRING",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","counter = All Trim counter",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := counter",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
Return
*-------------------------------------------------------------------*
