*---------------------------------------------------------------------------*
* Time : 20:24:12    Date : 01/15/2012
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


Resistance R_APPLICATION_8_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION_8_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 577 ;
HEIGHT 392 ;
ICON "PWCTICON" ;
TITLE "Application 8" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 114 ,102 LABEL lbl1 ;
VALUE "You Number is :" ;
WIDTH 229 ;
HEIGHT 41 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 115 ,352 LABEL lbl2 ;
VALUE "0" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 268 ,114 BUTTONEX btn1;
CAPTION "Add 2";
ON CLICK add2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 268 ,-1 BUTTONEX btn2;
CAPTION "Add 1";
ON CLICK add1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 268 ,238 BUTTONEX btn3;
CAPTION "Add 5";
ON CLICK add5()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 268 ,352 BUTTONEX btn4;
CAPTION "Add 10";
ON CLICK add10()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 268 ,466 BUTTONEX btn5;
CAPTION "Reset";
ON CLICK reset()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc add1
num := win1.lbl2.Value
num = VAL ( num )
num := num+1
num = STR ( num )
num = ALLTRIM ( num )
win1.lbl2.Value := num
Return Nil
Proc add2
num := win1.lbl2.Value
num = VAL ( num )
num := num+2
num = STR ( num )
num = ALLTRIM ( num )
win1.lbl2.Value := num
Return Nil
Proc add5
num := win1.lbl2.Value
num = VAL ( num )
num := num+5
num = STR ( num )
num = ALLTRIM ( num )
win1.lbl2.Value := num
Return Nil
Proc add10
num := win1.lbl2.Value
num = VAL ( num )
num := num+10
num = STR ( num )
num = ALLTRIM ( num )
win1.lbl2.Value := num
Return Nil
Proc reset
win1.lbl2.Value := "0"
Return Nil


End Of Resistance

INIT PROCEDURE Init_APPLICATION_8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Application 8'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'You Number is :'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '0'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add 2'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add2",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Add 1'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add1",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Add 5'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add5",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Add 10'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add10",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Reset'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action reset",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add1",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl2.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","num = num+1",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := num",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add2",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl2.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","num = num+2",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := num",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add5",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl2.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","num = num+5",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := num",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add10",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl2.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","num = num+10",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := num",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure reset",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '0'",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
Return
*-------------------------------------------------------------------*
