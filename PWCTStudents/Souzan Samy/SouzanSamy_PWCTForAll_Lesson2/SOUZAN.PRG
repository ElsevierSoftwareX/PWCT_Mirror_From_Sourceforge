*---------------------------------------------------------------------------*
* Time : 18:29:48    Date : 03/01/2012
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


Resistance R_SOUZAN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SOUZAN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 740 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "souzan  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 50 ,507 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 126 ;
HEIGHT 43 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 120 ,507 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 126 ;
HEIGHT 43 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 190 ,507 LABEL lbl3 ;
VALUE "«· ·Ì›Ê‰ " ;
WIDTH 126 ;
HEIGHT 43 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 52 ,296 TEXTBOX name;
HEIGHT 30 ;
WIDTH 180 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 124 ,296 TEXTBOX address;
HEIGHT 30 ;
WIDTH 180 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 196 ,296 TEXTBOX phone;
HEIGHT 30 ;
WIDTH 180 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 260 ,507 BUTTONEX btn1;
CAPTION "«÷«›… ";
ON CLICK adddata()  ;
WIDTH 126 HEIGHT 43 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 50 ,29 LISTBOX list1;
WIDTH 206 ;
HEIGHT 183 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure adddata()
name := win1.name.Value
address := win1.address.Value
phone := win1.phone.Value
win1.list1.AddItem ( name )
win1.list1.AddItem ( address )
win1.list1.AddItem ( phone )
return


End Of Resistance

INIT PROCEDURE Init_SOUZAN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'souzan  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«· ·Ì›Ê‰ '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( name  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( address  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( phone  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷«›… '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action adddata",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure adddata ( Event : CLICK )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.name.Value",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","address = win1.address.Value",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win1.phone.Value",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( name )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( address )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( phone )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
