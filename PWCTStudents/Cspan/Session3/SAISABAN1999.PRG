*---------------------------------------------------------------------------*
* Time : 14:14:02    Date : 01/29/2012
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


Resistance R_SAISABAN1999_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAISABAN1999_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 495 ;
HEIGHT 284 ;
ICON "PWCTICON" ;
TITLE "saisaban  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

@ 43 ,14 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {116,5,190} ;
FONTCOLOR {0,255,0} 

@ 83 ,14 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {116,5,190} ;
FONTCOLOR {0,255,0} 

@ 133 ,14 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {116,5,190} ;
FONTCOLOR {0,255,0} 

@ 4 ,226 IMAGE image1;
PICTURE "sa.jpg";
STRETCH ;
WIDTH 251 HEIGHT 193
@ 171 ,14 BUTTONEX btn1;
CAPTION "Calculate ";
ON CLICK saisaban()  ;
WIDTH 199 HEIGHT 26 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 5 ,13 LABEL lbl1 ;
VALUE "Num1 + Num2 = Num3 " ;
WIDTH 197 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 208 ,10 BUTTONEX btn2;
CAPTION "close ";
ON CLICK saisaban2()  ;
WIDTH 470 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc saisaban
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num3 = VAL ( win1.text3.value )
endnum := num1+num2
endnum = STR ( endnum )
win1.text3.Value := endnum
Return Nil
Proc saisaban2
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAISABAN1999
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'saisaban  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'sa.jpg'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saisaban()",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Num1 + Num2 = Num3 '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saisaban2()",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saisaban",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT win1.text3.value TO Numeric",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","endnum = num1+num2",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","endnum = CONVERT endnum TO STRING",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := endnum",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saisaban2",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
Return
*-------------------------------------------------------------------*
