*---------------------------------------------------------------------------*
* Time : 10:19:49    Date : 03/13/2013
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
Public cName,cAddress,cPhone
cName := "fayÁal"
cAddress := ""
cPhone := ""
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 646 ;
HEIGHT 340 ;
ICON "PWCTICON" ;
TITLE "≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  " ;
MAIN ;
BACKCOLOR {0,128,0} 

@ 67 ,581 LABEL lbl1 ;
VALUE "«·≈”„ " ;
WIDTH 63 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 123 ,581 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 60 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 177 ,581 LABEL lbl3 ;
VALUE "«· ·Ì›Ê‰" ;
WIDTH 61 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 221 ,362 BUTTONEX btn1;
CAPTION "≈÷«›… ";
ON CLICK Tromo()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Times New Roman" SIZE 18 ;
TOOLTIP ""
@ 73 ,362 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 123 ,362 TEXTBOX textAddress;
HEIGHT 36 ;
WIDTH 199 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 176 ,362 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 76 ,132 LISTBOX list1;
WIDTH 218 ;
HEIGHT 175 ;
ITEMS {"«·»Ì‰« :-"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 218 ,489 BUTTONEX btn2;
CAPTION "≈”‰«œ «·ﬁÌ„ ";
ON CLICK Setvaleus()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 14 ,462 BUTTONEX btn3;
CAPTION "‰”Œ «·»Ì«‰«  ";
ON CLICK pCopy()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 14 ,347 BUTTONEX btn4;
CAPTION "·’ﬁ «·»Ì«‰«  ";
ON CLICK pPaste()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
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
procedure Setvaleus()
Local cName,cAddress,cPhone
cName := "›Ì’·"
cAddress := "«·Ã“«∆—"
cPhone := "3226645645"
win1.textName.Value := "„Õ„œ"
win1.textAddress.Value := "ﬁ”‰ÿÌ‰…"
win1.textPhone.Value := "25502636"
MyOut := MSGBOX(" „ ≈”‰«œ ﬁÌ„ ·„—⁄«  «·‰’ „‰ Œ·«· «·≈”‰«œ «·„»«‘— ","Õ”‰« ")
win1.textName.Value := cName
win1.textAddress.Value := cAddress
win1.textPhone.Value := cPhone
MyOut := MSGBOX(" „ ≈”‰«œ ﬁÌ„ ·„—⁄«  «·‰’ „‰ «· €Ì—«  ","Õ”‰« ")
return
procedure pCopy()
Public cName,cAddress,cPhone
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

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public cName,cAddress,cPhone",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","cName = 'fayÁal'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ''",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ''",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·≈”„ '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«· ·Ì›Ê‰'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈÷«›… '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Tromo",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'«·»Ì‰« :-'}",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",64,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈”‰«œ «·ﬁÌ„ '",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Setvaleus",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '‰”Œ «·»Ì«‰«  '",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCopy",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '·’ﬁ «·»Ì«‰«  '",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pPaste",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Tromo ( Event : CLICK )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cAddress )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cPhone )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Test ') to Listbox (List1) of Window (Win1)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cName) to Listbox (List1) of Window (Win1)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cAddress) to Listbox (List1) of Window (Win1)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cPhone) to Listbox (List1) of Window (Win1)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Setvaleus ( Event : CLICK )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Local cName,cAddress,cPhone",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","cName = '›Ì’·'",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = '«·Ã“«∆—'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = '3226645645'",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := '„Õ„œ'",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := 'ﬁ”‰ÿÌ‰…'",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := '25502636'",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ ﬁÌ„ ·„—⁄«  «·‰’ „‰ Œ·«· «·≈”‰«œ «·„»«‘— ' Title 'Õ”‰« ' Type: Message Box",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cName",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := cAddress",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cPhone",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ ﬁÌ„ ·„—⁄«  «·‰’ „‰ «· €Ì—«  ' Title 'Õ”‰« ' Type: Message Box",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCopy ( Event : CLICK )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Public cName,cAddress,cPhone",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pPaste ( Event : CLICK )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cName",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := cAddress",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cPhone",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
Return
*-------------------------------------------------------------------*
