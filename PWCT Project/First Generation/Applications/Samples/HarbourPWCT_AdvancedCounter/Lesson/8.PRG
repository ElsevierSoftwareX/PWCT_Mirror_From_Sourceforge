*---------------------------------------------------------------------------*
* Time : 21:27:09    Date : 10/19/2011
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
WIDTH 706 ;
HEIGHT 489 ;
ICON "PWCTICON" ;
TITLE "app8 - Mohammed Fathy" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ -16 ,-344 IMAGE cir;
PICTURE "CIR.JPG";
STRETCH ;
WIDTH 657 HEIGHT 288
@ 69 ,50 LABEL lbl1 ;
VALUE "0" ;
WIDTH 182 ;
HEIGHT 206 ;
AUTOSIZE ;
FONT "Arial" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 290 ,8 BUTTONEX asc;
CAPTION "Count Ascending";
ON CLICK count1()  ;
WIDTH 170 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 290 ,203 BUTTONEX des;
CAPTION "Count Descending";
ON CLICK count2()  ;
WIDTH 180 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 14 ,403 IMAGE updown;
PICTURE "UPDOWN.JPG";
STRETCH ;
WIDTH 279 HEIGHT 396
@ 345 ,203 BUTTONEX close;
CAPTION "Close";
ON CLICK exit()  ;
WIDTH 180 HEIGHT 41 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 345 ,8 BUTTONEX reset;
CAPTION "Reset";
ON CLICK res()  ;
WIDTH 170 HEIGHT 41 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc count1
num1 := win1.lbl1.Value
num1 = VAL ( num1 )
num1 := num1 + 1
num1 = STR ( num1 )
num1 = ALLTRIM ( num1 )
win1.lbl1.Value := num1
Return Nil
Proc count2
num2 := win1.lbl1.Value
num2 = VAL ( num2 )
num2 := num2 - 1
num2 = STR ( num2 )
num2 = ALLTRIM ( num2 )
win1.lbl1.Value := num2
Return Nil
Proc exit
win1.Release ( )
Return Nil
Proc res
num3 := 0
num3 = STR ( num3 )
num3 = ALLTRIM ( num3 )
win1.lbl1.Value := num3


End Of Resistance

INIT PROCEDURE Init_8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'app8 - Mohammed Fathy'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( cir ) , Image : 'CIR.JPG'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( asc ) , Caption : 'Count Ascending'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count1()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( des ) , Caption : 'Count Descending'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count2()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( updown ) , Image : 'UPDOWN.JPG'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( close ) , Caption : 'Close'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( reset ) , Caption : 'Reset'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action res()",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count1",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.lbl1.Value",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO Numeric",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = num1 + 1",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO STRING",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = All Trim num1",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := num1",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count2",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.lbl1.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT num2 TO Numeric",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = num2 - 1",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT num2 TO STRING",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = All Trim num2",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := num2",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure res",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = 0",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT num3 TO STRING",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = All Trim num3",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := num3",80,80)
Return
*-------------------------------------------------------------------*
