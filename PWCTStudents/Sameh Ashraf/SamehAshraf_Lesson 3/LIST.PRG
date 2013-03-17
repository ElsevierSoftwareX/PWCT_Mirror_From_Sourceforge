*---------------------------------------------------------------------------*
* Time : 06:18:54    Date : 03/17/2013
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


Resistance R_LIST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LIST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 751 ;
HEIGHT 601 ;
ICON "PWCTICON" ;
TITLE "⁄‰«’— «· Õﬂ„  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 178 ,593 LABEL lbl1 ;
VALUE "«·≈”„ " ;
WIDTH 71 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 224 ,590 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 74 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 263 ,590 LABEL lbl3 ;
VALUE "«· ·Ì›Ê‰ " ;
WIDTH 74 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 175 ,339 TEXTBOX textName;
HEIGHT 31 ;
WIDTH 235 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 218 ,338 TEXTBOX textAddress;
HEIGHT 32 ;
WIDTH 236 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 262 ,336 TEXTBOX textPhone;
HEIGHT 31 ;
WIDTH 238 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 170 ,87 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 356 ,352 BUTTONEX btn1;
CAPTION "≈÷«›… ";
ON CLICK AddData()  ;
WIDTH 105 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure AddData()
cName := win1.textName.Value
cAddress := win1.textAddress.Value
cPhone := win1.textPhone.Value
win1.list1.AddItem ( cName )
win1.list1.AddItem ( cAddress )
win1.list1.AddItem ( cPhone )
return


End Of Resistance

INIT PROCEDURE Init_LIST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '⁄‰«’— «· Õﬂ„  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·≈”„ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«· ·Ì›Ê‰ '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈÷«›… '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddData",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddData ( Event : CLICK )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cAddress )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cPhone )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
