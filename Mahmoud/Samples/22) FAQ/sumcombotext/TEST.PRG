*---------------------------------------------------------------------------*
* Time : 04:46:19    Date : 10/26/2011
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Sum combobox value + textbox value" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 97 ,128 COMBOBOX combo1;
WIDTH 200 ;
HEIGHT 300;
ITEMS {"1","2","3"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 139 ,128 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 189 ,128 BUTTONEX btn1;
CAPTION "Sum";
ON CLICK mywork()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 242 ,177 LABEL lblSum ;
VALUE "" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mywork
nValue := win1.combo1.Value
nvalue := win1.combo1.item(nvalue)
nValue = VAL ( nValue )
nValue2 := win1.text1.Value
nValue2 = VAL ( nValue2 )
cSum := nValue + nValue2
cSum = STR ( cSum )
win1.lblSum.Value := cSum
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Sum combobox value + textbox value'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'1','2','3'}",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",12,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Sum'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblSum ) , Caption : ''",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = win1.combo1.Value",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = win1.combo1.item(nvalue)",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = CONVERT nValue TO Numeric",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","nValue2 = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","nValue2 = CONVERT nValue2 TO Numeric",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = nValue + nValue2",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT cSum TO STRING",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblSum.Value := cSum",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
Return
*-------------------------------------------------------------------*
