*---------------------------------------------------------------------------*
* Time : 19:25:44    Date : 12/28/2011
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


Resistance R_CONTROLS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONTROLS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Controls" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 323 ,389 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {0,0,255};
ON CLICK Close()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 323 ,307 BUTTONEX btn2;
CAPTION "Info";
FONTCOLOR {255,0,0};
ON CLICK MSGINFO( "Mahmoud Mohamed Hassan" ) ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 70 ,5 LABEL lbl1 ;
VALUE "Tools" ;
WIDTH 63 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 30 ,9 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "PWCT" ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {255,255,255} 

@ 68 ,9 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"Mahmoud","Ahmed","Hassan"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 271 ,6 COMBOBOX combo1;
WIDTH 204 ;
ITEMS {"Mahmoud","Ahmed","Hassan"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 26 ,305 IMAGE image1;
PICTURE "smile.jpeg";
STRETCH ;
WIDTH 142 HEIGHT 114
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_CONTROLS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Controls'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Info'",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Mahmoud Mohamed Hassan'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Tools'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'Mahmoud','Ahmed','Hassan'}",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Mahmoud','Ahmed','Hassan'}",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'smile.jpeg'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
