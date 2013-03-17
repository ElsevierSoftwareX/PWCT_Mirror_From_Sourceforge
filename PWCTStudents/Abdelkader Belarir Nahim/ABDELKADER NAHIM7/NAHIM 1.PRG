*---------------------------------------------------------------------------*
* Time : 22:08:51    Date : 03/14/2013
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
NOMAXIMIZE ;
BACKCOLOR {64,0,64} 

@ 43 ,361 FRAME Frame1;
WIDTH 453 ;
HEIGHT 211 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

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
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,10 BUTTONEX btn2;
CAPTION "≈÷«›… ";
ON CLICK add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 56 ,11 BUTTONEX btn3;
CAPTION "≈”‰«œ «·ﬁÌ„  ";
ON CLICK setwa()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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
procedure setwa()
cName := "⁄»œ «·ﬁ«œ—"
cAddress := "Algeria"
cPhone := "06855524"
win1.textName.Value := "Abdelkader"
win1.textAddress.Value := "Algeria"
win1.textPhone.Value := "065489755"
MyOut := MSGBOX(" „ ≈”‰«œ »‰Ã«Õ ","Õ”‰« ")
win1.textName.Value := cName
win1.textAddress.Value := cAddress
win1.textPhone.Value := cPhone
MyOut := MSGBOX(" „ ≈”‰«œ „‰ «·„ €Ì—«  ","Õ”‰« ")
return


End Of Resistance

INIT PROCEDURE Init_NAHIM_1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„–ﬂ—… «·Â« ›   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Frame ( Frame1 )",12,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈€·«ﬁ «· ÿ»Ìﬁ '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·≈”„  '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·Â« ›'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",62,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'«·»Ì‰« :_'}",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",69,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈÷«›… '",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '≈”‰«œ «·ﬁÌ„  '",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action setwa",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add ( Event : CLICK )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cAddress )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cPhone )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('---------------------------------- ') to Listbox (List1) of Window (Win1)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cName) to Listbox (List1) of Window (Win1)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cAddress) to Listbox (List1) of Window (Win1)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cPhone) to Listbox (List1) of Window (Win1)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure setwa ( Event : CLICK )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","cName = '⁄»œ «·ﬁ«œ—'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = 'Algeria'",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = '06855524'",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := 'Abdelkader'",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := 'Algeria'",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := '065489755'",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ »‰Ã«Õ ' Title 'Õ”‰« ' Type: Message Box",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cName",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := cAddress",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cPhone",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ „‰ «·„ €Ì—«  ' Title 'Õ”‰« ' Type: Message Box",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
Return
*-------------------------------------------------------------------*
