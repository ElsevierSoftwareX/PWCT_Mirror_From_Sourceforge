*---------------------------------------------------------------------------*
* Time : 01:28:13    Date : 12/09/2012
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
Public cName,cAddress,cPhone
cName := "”·«„Â"
cAddress := "„’—"
cPhone := "„’—"
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 672 ;
HEIGHT 314 ;
ICON "PWCTICON" ;
TITLE "⁄‰«’— «· Õﬂ„  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 40 ,532 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 160 ;
HEIGHT 50 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 95 ,533 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 160 ;
HEIGHT 40 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 147 ,533 LABEL lbl3 ;
VALUE "«· ·Ì›Ê‰ " ;
WIDTH 160 ;
HEIGHT 40 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 44 ,312 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 97 ,312 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 146 ,312 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 9 ,85 LISTBOX list1;
WIDTH 193 ;
HEIGHT 208 ;
ITEMS {"«·»Ì«‰«  :-"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 185 ,311 BUTTONEX btn1;
CAPTION "«÷«›… ";
ON CLICK AddData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 184 ,412 BUTTONEX btn2;
CAPTION "«”‰«œ «·ﬁÌ„ ";
ON CLICK SetValue()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,412 BUTTONEX btn3;
CAPTION "‰”Œ «·»Ì«‰«  ";
ON CLICK pCopy()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 8 ,311 BUTTONEX btn4;
CAPTION "·’ﬁ «·»Ì«‰«  ";
ON CLICK pPaste()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
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
Win1.List1.Additem ( cName )
Win1.List1.Additem ( cAddress )
Win1.List1.Additem ( cPhone )
return
procedure SetValue()
cName := "”·«„Â"
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
procedure pCopy()
cName := win1.textName.Value
cAddress := win1.textAddress.Value
cPhone := win1.textPhone.Value
return
procedure pPaste()
win1.textName.Value := cName
win1.textAddress.Value := cAddress
win1.textPhone.Value := cPhone
return


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public cName,cAddress,cPhone",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","cName = '”·«„Â'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = '„’—'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = '„’—'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '⁄‰«’— «· Õﬂ„  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«· ·Ì›Ê‰ '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'«·»Ì«‰«  :-'}",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",58,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷«›… '",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddData",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«”‰«œ «·ﬁÌ„ '",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SetValue",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '‰”Œ «·»Ì«‰«  '",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCopy",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '·’ﬁ «·»Ì«‰«  '",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pPaste",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddData ( Event : CLICK )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cAddress )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cPhone )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cName) to Listbox (List1) of Window (Win1)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cAddress) to Listbox (List1) of Window (Win1)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cPhone) to Listbox (List1) of Window (Win1)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SetValue ( Event : CLICK )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","cName = '”·«„Â'",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = '„’—'",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = '123456'",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := '”·«„Â'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := '„’—'",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := '123456'",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ Œ·«· «·«”‰«œ «·„»«‘— ' Title ' ”·«„Â' Type: Message Box",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cName",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := cAddress",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cPhone",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ «·„ €Ì—«  ' Title ' ”·«„Â' Type: Message Box",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCopy ( Event : CLICK )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pPaste ( Event : CLICK )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cName",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := cAddress",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cPhone",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",126,126)
Return
*-------------------------------------------------------------------*
