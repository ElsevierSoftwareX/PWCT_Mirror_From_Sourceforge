*---------------------------------------------------------------------------*
* Time : 01:17:23    Date : 01/07/2012
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


Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 613 ;
HEIGHT 391 ;
ICON "PWCTICON" ;
TITLE "Temperature" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 170 ,333 LABEL lbl1 ;
VALUE "Celsius temperature" ;
WIDTH 253 ;
HEIGHT 39 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,0,255} ;
FONTCOLOR {0,0,255}
@ 81 ,333 LABEL lbl2 ;
VALUE "Fahrenheit temperature" ;
WIDTH 258 ;
HEIGHT 39 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,160}
@ 82 ,203 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 121 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,64} 

@ 171 ,203 TEXTBOX text2;
HEIGHT 34 ;
WIDTH 121 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 

@ 228 ,203 BUTTONEX btn1;
CAPTION "Calculate the temperature in Celsius";
FONTCOLOR {0,64,0};
BACKCOLOR {128,255,0};
ON CLICK Calc()  ;
WIDTH 395 HEIGHT 48 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 3 ,87 LABEL lbl3 ;
VALUE "*(Please enter the Fahrenheit temperature)*" ;
WIDTH 414 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {128,64,0}
@ 325 ,0 LABEL lbl4 ;
VALUE "ENG.Mahmoud Fayed" ;
WIDTH 200 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,255}
@ 322 ,456 LABEL lbl5 ;
VALUE "Ahmed Warda" ;
WIDTH 134 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {128,0,0}
@ 40 ,2 IMAGE image3;
PICTURE "C:\USERS\ABO MOSAB\DESKTOP\MZL_DHOYXIAZ_320X480-75.JPG";
STRETCH ;
WIDTH 199 HEIGHT 285
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Calc
num1 = VAL ( win1.text1.value )
temp := (num1-32)*.55555
temp = STR ( temp )
win1.text2.Value := temp
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Temperature'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Celsius temperature'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Fahrenheit temperature'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate the temperature in Celsius'",39,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc()",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '*(Please enter the Fahrenheit temperature)*'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'ENG.Mahmoud Fayed'",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Ahmed Warda'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'C:\USERS\ABO MOSAB\DESKTOP\MZL_DHOYXIAZ_320X480-75.JPG'",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","temp = (num1-32)*.55555",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","temp = CONVERT temp TO STRING",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := temp",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
Return
*-------------------------------------------------------------------*
