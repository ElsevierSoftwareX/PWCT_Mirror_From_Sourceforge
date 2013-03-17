*---------------------------------------------------------------------------*
* Time : 12:18:26    Date : 03/11/2013
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


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 582 ;
HEIGHT 285 ;
ICON "PWCTICON" ;
TITLE "≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  " ;
MAIN ;
BACKCOLOR {0,128,0} 

@ 23 ,492 LABEL lbl1 ;
VALUE "«·≈”„ " ;
WIDTH 63 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 79 ,492 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 60 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 133 ,492 LABEL lbl3 ;
VALUE "«· ·Ì›Ê‰" ;
WIDTH 61 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 177 ,255 BUTTONEX btn1;
CAPTION "≈÷«›… ";
ON CLICK Tromo()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Times New Roman" SIZE 18 ;
TOOLTIP ""
@ 29 ,255 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 80 ,255 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 132 ,255 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 27 ,39 LISTBOX list1;
WIDTH 204 ;
HEIGHT 180 ;
ITEMS {"«·»Ì‰« :-"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Tromo()
cName := win1.textName.Value
cAddress := win1.textAddress.Value
cPhone := win1.textPhone.Value
win1.list1.AddItem ( cName )
win1.list1.AddItem ( cAddress )
win1.list1.AddItem ( cPhone )
Win1.List1.Additem ( "Test " )
Win1.List1.Additem ( cName )
Win1.List1.Additem ( cAddress )
Win1.List1.Additem ( cPhone )
return


End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·≈”„ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«· ·Ì›Ê‰'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈÷«›… '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Tromo",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'«·»Ì‰« :-'}",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",60,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Tromo ( Event : CLICK )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cAddress )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cPhone )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Test ') to Listbox (List1) of Window (Win1)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cName) to Listbox (List1) of Window (Win1)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cAddress) to Listbox (List1) of Window (Win1)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cPhone) to Listbox (List1) of Window (Win1)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
Return
*-------------------------------------------------------------------*
