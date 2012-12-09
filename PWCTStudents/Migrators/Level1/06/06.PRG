*---------------------------------------------------------------------------*
* Time : 21:46:54    Date : 10/22/2012
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


Resistance R_06_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_06_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 723 ;
HEIGHT 336 ;
ICON "PWCTICON" ;
TITLE "»Ì«‰« " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 57 ,552 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 96 ,552 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 135 ,552 LABEL lbl3 ;
VALUE "«·Â« ›" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 57 ,338 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 98 ,338 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 139 ,338 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 206 ,391 BUTTONEX btn1;
CAPTION "≈÷«›…";
ON CLICK AddData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 LISTBOX list1;
WIDTH 270 ;
HEIGHT 276 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure AddData()
CName := win1.textName.Value
CAddress := win1.textaddress.Value
CPhone := win1.textPhone.Value
win1.list1.AddItem ( CName )
win1.list1.AddItem ( CAddress )
win1.list1.AddItem ( CPhone )
Win1.List1.Additem ( CName )
Win1.List1.Additem ( CAddress )
Win1.List1.Additem ( CPhone )
return


End Of Resistance

INIT PROCEDURE Init_06
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»Ì«‰« '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·Â« ›'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈÷«›…'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddData",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddData ( Event : CLICK )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","CName = win1.textName.Value",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","CAddress = win1.textaddress.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","CPhone = win1.textPhone.Value",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( CName )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( CAddress )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( CPhone )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (CName) to Listbox (List1) of Window (Win1)",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (CAddress) to Listbox (List1) of Window (Win1)",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (CPhone) to Listbox (List1) of Window (Win1)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
