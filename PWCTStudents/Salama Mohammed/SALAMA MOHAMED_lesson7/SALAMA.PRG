*---------------------------------------------------------------------------*
* Time : 02:55:33    Date : 12/03/2012
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


Resistance R_SALAMA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 672 ;
HEIGHT 314 ;
ICON "PWCTICON" ;
TITLE "⁄‰«’— «· Õﬂ„  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 41 ,460 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 160 ;
HEIGHT 50 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 96 ,461 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 160 ;
HEIGHT 40 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 148 ,461 LABEL lbl3 ;
VALUE "«· ·Ì›Ê‰ " ;
WIDTH 160 ;
HEIGHT 40 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 45 ,240 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 98 ,240 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 147 ,240 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 43 ,25 LISTBOX list1;
WIDTH 179 ;
HEIGHT 135 ;
ITEMS {"«·»Ì«‰«  :-"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 186 ,239 BUTTONEX btn1;
CAPTION "«÷«›… ";
ON CLICK AddData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 185 ,340 BUTTONEX btn2;
CAPTION "«”‰«œ «·ﬁÌ„ ";
ON CLICK SetValue()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure AddData()
cName := win1.textName.Value
cAddress := win1.textAddress.Value
cPhone := win1.textphone.Value
win1.list1.AddItem ( cName )
win1.list1.AddItem ( cAddress )
win1.list1.AddItem ( cPhone )
Win1.List1.Additem ( cName )
Win1.List1.Additem ( cAddress )
Win1.List1.Additem ( cPhone )
return
procedure SetValue()
cName := "„Õ„Êœ"
cAddress := "„’—"
cPhone := "123456"
win1.textName.Value := "”·«„Â"
win1.textAddress.Value := "„’—"
win1.textPhone.Value := "123456"
MyOut := MSGBOX(" „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ Œ·«· «·«”‰«œ «·„»«‘— "," ”·«„Â")
win1.textName.Value := cName
win1.textAddress.Value := cAddress
win1.textPhone.Value := cPhone
MyOut := MSGBOX(" „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ «·„ €Ì—«  "," ”·«„Â")
return


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '⁄‰«’— «· Õﬂ„  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",11,12)
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'«·»Ì«‰«  :-'}",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷«›… '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddData",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«”‰«œ «·ﬁÌ„ '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SetValue",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddData ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textphone.Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cAddress )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cPhone )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cName) to Listbox (List1) of Window (Win1)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cAddress) to Listbox (List1) of Window (Win1)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cPhone) to Listbox (List1) of Window (Win1)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SetValue ( Event : CLICK )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","cName = '„Õ„Êœ'",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = '„’—'",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = '123456'",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := '”·«„Â'",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := '„’—'",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := '123456'",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ Œ·«· «·«”‰«œ «·„»«‘— ' Title ' ”·«„Â' Type: Message Box",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cName",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := cAddress",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cPhone",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ «·„ €Ì—«  ' Title ' ”·«„Â' Type: Message Box",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",100,100)
Return
*-------------------------------------------------------------------*
