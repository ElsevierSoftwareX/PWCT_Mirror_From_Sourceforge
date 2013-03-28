*---------------------------------------------------------------------------*
* Time : 07:28:11    Date : 10/22/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_SAMEH_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAMEH_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 354 ;
HEIGHT 345 ;
ICON "PWCTICON" ;
TITLE "Insurance sample by Sameh Kamel " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 18 ,58 LABEL lbl1 ;
VALUE "Balance" ;
WIDTH 93 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 89 ,59 LABEL lbl2 ;
VALUE "Years" ;
WIDTH 63 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 116 ,239 LABEL lbl3 ;
VALUE "=" ;
WIDTH 47 ;
HEIGHT 54 ;
FONT "Arial" SIZE 48  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {128,0,0}
@ 50 ,59 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 227 ;
BOLD ;
BACKCOLOR {255,253,213} ;
FONTCOLOR {128,0,128} 

@ 171 ,59 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 227 ;
BOLD ;
BACKCOLOR {255,253,213} ;
FONTCOLOR {255,0,0} 

@ 228 ,59 BUTTONEX btn1;
CAPTION "Calculate Insurance";
ON CLICK Compute()  ;
WIDTH 227 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 272 ,186 BUTTONEX btn2;
CAPTION "About";
ON CLICK MSGINFO( "Developed by Sameh Kamel using PWCT" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 272 ,59 BUTTONEX btn3;
CAPTION "Exit";
ON CLICK MyClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 86 ,124 COMBOBOX combo1;
WIDTH 77 ;
ITEMS {"1","2","3","4","5"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,253,213} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Compute
Mon = VAL ( win1.text1.value )
Y := win1.combo1.Value
Total := ((Mon*.01)*Y)+(21)
Total = STR ( Total )
Total = ALLTRIM ( Total )
win1.text2.Value := Total
Return Nil
Proc MyClose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAMEH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Insurance sample by Sameh Kamel '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Balance'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Years'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '='",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculate Insurance'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'About'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Developed by Sameh Kamel using PWCT'",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Exit'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'1','2','3','4','5'}",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Compute",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Mon = CONVERT win1.text1.value TO Numeric",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Y = win1.combo1.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Total = ((Mon*.01)*Y)+(21)",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Total = CONVERT Total TO STRING",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Total = All Trim Total",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := Total",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyClose",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
Return
*-------------------------------------------------------------------*
