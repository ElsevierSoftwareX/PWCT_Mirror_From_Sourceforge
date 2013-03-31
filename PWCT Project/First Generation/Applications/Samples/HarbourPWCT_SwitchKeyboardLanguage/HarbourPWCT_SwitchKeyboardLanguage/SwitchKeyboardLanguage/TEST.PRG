*---------------------------------------------------------------------------*
* Time : 11:45:10    Date : 01/04/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
DO ChangeLanguage
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 341 ;
ICON "PWCTICON" ;
TITLE "Arabic Textbox  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 96 ,130 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 159 ,130 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 220 ,130 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 41 ,74 LABEL lbl1 ;
VALUE "Automatic switch the keyboard language  " ;
WIDTH 350 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc ChangeLanguage
myout = CALLDLL32("ActivateKeyboardLayout","user32.dll",1,0)
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ChangeLanguage",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Arabic Textbox  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",29,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Automatic switch the keyboard language  '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ChangeLanguage",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'user32.dll' , Function 'ActivateKeyboardLayout' , Parameters 1,0",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
Return
*-------------------------------------------------------------------*
