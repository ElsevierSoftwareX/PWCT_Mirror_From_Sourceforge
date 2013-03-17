*---------------------------------------------------------------------------*
* Time : 22:03:48    Date : 03/13/2013
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


Resistance R_NAHIM_1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NAHIM_1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 867 ;
HEIGHT 408 ;
ICON "PWCTICON" ;
TITLE "„–ﬂ—… «·Â« ›   " ;
MAIN ;
BACKCOLOR {64,0,64} 

@ 335 ,752 BUTTONEX btn1;
CAPTION "≈€·«ﬁ «· ÿ»Ìﬁ ";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 74 ,589 LABEL lbl1 ;
VALUE "«·≈”„  " ;
WIDTH 200 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 125 ,589 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 200 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 185 ,589 LABEL lbl3 ;
VALUE "«·Â« ›" ;
WIDTH 200 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 71 ,373 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 124 ,373 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 185 ,373 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 48 ,124 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"«·»Ì‰« :_"} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,10 BUTTONEX btn2;
CAPTION "≈÷«›… ";
ON CLICK add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure close()
win1.Release ( )
return
procedure add()
cName := win1.textName.Value
cAddress := win1.textAddress.Value
cPhone := win1.textPhone.Value
win1.list1.AddItem ( cName )
win1.list1.AddItem ( cAddress )
win1.list1.AddItem ( cPhone )
Win1.List1.Additem ( "---------------------------------- " )
Win1.List1.Additem ( cName )
Win1.List1.Additem ( cAddress )
Win1.List1.Additem ( cPhone )
return


End Of Resistance

INIT PROCEDURE Init_NAHIM_1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„–ﬂ—… «·Â« ›   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈€·«ﬁ «· ÿ»Ìﬁ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·≈”„  '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·Â« ›'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'«·»Ì‰« :_'}",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",60,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈÷«›… '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add ( Event : CLICK )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cAddress )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cPhone )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('---------------------------------- ') to Listbox (List1) of Window (Win1)",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cName) to Listbox (List1) of Window (Win1)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cAddress) to Listbox (List1) of Window (Win1)",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cPhone) to Listbox (List1) of Window (Win1)",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
Return
*-------------------------------------------------------------------*
