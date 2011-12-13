*---------------------------------------------------------------------------*
* Time : 03:31:18    Date : 12/13/2011
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


Resistance R_PWCT_TEST8_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PWCT_TEST8_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 464 ;
HEIGHT 353 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,192} 

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
@ 79 ,221 LABEL lbl1 ;
VALUE "0" ;
WIDTH 134 ;
HEIGHT 102 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {0,128,192} ;
FONTCOLOR {255,255,255}
@ 188 ,178 BUTTONEX btn1;
CAPTION "≈»œ√";
FONTCOLOR {0,0,255};
ON CLICK con1()  ;
WIDTH 108 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 254 ,13 BUTTONEX btn2;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,0};
ON CLICK myclos()  ;
WIDTH 113 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure myclos()
win1.Release ( )
return
Proc Con1
num1 := win1.lbl1.Value
num1 = VAL ( num1 )
num1 := num1+1
num1 = STR ( num1 )
num1 = ALLTRIM ( num1 )
win1.lbl1.Value := num1
Return Nil


End Of Resistance

INIT PROCEDURE Init_PWCT_TEST8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈»œ√'",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action con1",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈€·«ﬁ'",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclos",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclos ( Event : CLICK )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Con1",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.lbl1.Value",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO Numeric",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = num1+1",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO STRING",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = All Trim num1",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := num1",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
Return
*-------------------------------------------------------------------*
