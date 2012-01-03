*---------------------------------------------------------------------------*
* Time : 20:24:06    Date : 12/29/2011
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


Resistance R_AUTOMATICCOUNTER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AUTOMATICCOUNTER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 362 ;
HEIGHT 338 ;
ICON "PWCTICON" ;
TITLE "Automatic Counter" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 15 ,49 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 71 ;
FONT "" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 17 ,158 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 66 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 16 ,0 LABEL lbl1 ;
VALUE "From" ;
WIDTH 49 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 20 ,125 LABEL lbl2 ;
VALUE "To" ;
WIDTH 31 ;
HEIGHT 22 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 54 ,4 LISTBOX list1;
WIDTH 344 ;
HEIGHT 198 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 260 ,3 BUTTONEX btn1;
CAPTION "Start";
ON CLICK Counter()  ;
WIDTH 346 HEIGHT 35 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 19 ,281 TEXTBOX text3;
HEIGHT 32 ;
WIDTH 65 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 17 ,232 LABEL lbl3 ;
VALUE "Step" ;
WIDTH 45 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Counter
from := win1.text1.Value
to := win1.text2.Value
step := win1.text3.Value
FOR x =from TO to STEP step
str = STR ( x )
str = ALLTRIM ( str )
win1.list1.AddItem ( str )
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_AUTOMATICCOUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Automatic Counter'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'From'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'To'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Start'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Counter",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Step'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Counter",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","from = win1.text1.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","to = win1.text2.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","step = win1.text3.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x =from To to Step step)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","str = CONVERT x TO STRING",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","str = All Trim str",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( str )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
Return
*-------------------------------------------------------------------*
