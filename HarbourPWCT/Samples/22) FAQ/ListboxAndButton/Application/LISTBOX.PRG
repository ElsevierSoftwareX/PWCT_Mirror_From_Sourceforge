*---------------------------------------------------------------------------*
* Time : 05:33:12    Date : 10/23/2011
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


Resistance R_LISTBOX_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LISTBOX_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 450 ;
HEIGHT 270 ;
ICON "PWCTICON" ;
TITLE "Listbox Items" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"1","2","3"} ;
VALUE 1 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 92 ,276 BUTTONEX btn1;
CAPTION "Selected Item ?";
ON CLICK showtext()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc showtext
number := win1.list1.Value
IF number = 1
MyOut := MSGBOX("One","Item")
ELSE
IF number = 2
MyOut := MSGBOX("Two","Item")
ELSE
IF number = 3
MyOut := MSGBOX("Three","Item")
ENDIF
ENDIF
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LISTBOX
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Listbox Items'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'1','2','3'}",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Selected Item ?'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showtext",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showtext",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","number = win1.list1.Value",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( number = 1 )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'One' Title 'Item' Type: Message Box",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( number = 2 )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Two' Title 'Item' Type: Message Box",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( number = 3 )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Three' Title 'Item' Type: Message Box",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*
