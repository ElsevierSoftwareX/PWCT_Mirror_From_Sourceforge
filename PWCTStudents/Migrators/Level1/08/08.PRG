*---------------------------------------------------------------------------*
* Time : 13:13:28    Date : 10/23/2012
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


Resistance R_08_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_08_18smart1() code
Public CName,CAddress,CPhone
CName := "·« ÊÃœ ﬁÌ„… ›Ì «·–«ﬂ—…"
CAddress := "·« ÊÃœ ﬁÌ„… ›Ì «·–«ﬂ—…"
CPhone := "·« ÊÃœ ﬁÌ„… ›Ì «·–«ﬂ—…"
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 723 ;
HEIGHT 336 ;
ICON "PWCTICON" ;
TITLE "»Ì«‰« " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 77 ,552 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 116 ,552 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 155 ,552 LABEL lbl3 ;
VALUE "«·Â« ›" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 77 ,338 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 118 ,338 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 159 ,338 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 225 ,391 BUTTONEX btn1;
CAPTION "≈÷«›…";
ON CLICK AddData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 LISTBOX list1;
WIDTH 270 ;
HEIGHT 276 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 225 ,522 BUTTONEX btn2;
CAPTION "≈”‰«œ «·ﬁÌ„";
ON CLICK SetVal()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 22 ,517 BUTTONEX btn3;
CAPTION "‰”Œ «·ﬁÌ„ ";
ON CLICK PCopy()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 23 ,397 BUTTONEX btn4;
CAPTION "·’ﬁ «·ﬁÌ„ ";
ON CLICK PPast()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure AddData()
Local CName,CAddress,CPhone
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
procedure SetVal()
Local CName,CAddress,CPhone
CName := "Ahmad"
CAddress := "KSA"
CPhone := "369852"
win1.textName.Value := "√Õ„œ"
win1.textaddress.Value := "«·—Ì«÷"
win1.textPhone.Value := "123456"
MyOut := MSGBOX("  „ ≈”‰«œ «·ﬁÌ„ »‘ﬂ· „»«‘— "," Õ”‰« ")
win1.textName.Value := CName
win1.textaddress.Value := CAddress
win1.textPhone.Value := CPhone
MyOut := MSGBOX("  „ ≈”‰«œ «·ﬁÌ„ „‰ „ €Ì—«  "," Õ”‰« ")
return
procedure PCopy()
CName := win1.textName.Value
CAddress := win1.textaddress.Value
CPhone := win1.textPhone.Value
return
procedure PPast()
win1.textName.Value := CName
win1.textaddress.Value := CAddress
win1.textPhone.Value := CPhone
return


End Of Resistance

INIT PROCEDURE Init_08
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public CName,CAddress,CPhone",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","CName = '·« ÊÃœ ﬁÌ„… ›Ì «·–«ﬂ—…'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","CAddress = '·« ÊÃœ ﬁÌ„… ›Ì «·–«ﬂ—…'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","CPhone = '·« ÊÃœ ﬁÌ„… ›Ì «·–«ﬂ—…'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»Ì«‰« '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·Â« ›'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈÷«›…'",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddData",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈”‰«œ «·ﬁÌ„'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SetVal",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '‰”Œ «·ﬁÌ„ '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PCopy",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '·’ﬁ «·ﬁÌ„ '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PPast",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddData ( Event : CLICK )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Local CName,CAddress,CPhone",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","CName = win1.textName.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","CAddress = win1.textaddress.Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","CPhone = win1.textPhone.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( CName )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( CAddress )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( CPhone )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (CName) to Listbox (List1) of Window (Win1)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (CAddress) to Listbox (List1) of Window (Win1)",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (CPhone) to Listbox (List1) of Window (Win1)",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SetVal ( Event : CLICK )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Local CName,CAddress,CPhone",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","CName = 'Ahmad'",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","CAddress = 'KSA'",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","CPhone = '369852'",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := '√Õ„œ'",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := '«·—Ì«÷'",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := '123456'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '  „ ≈”‰«œ «·ﬁÌ„ »‘ﬂ· „»«‘— ' Title ' Õ”‰« ' Type: Message Box",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := CName",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := CAddress",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := CPhone",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '  „ ≈”‰«œ «·ﬁÌ„ „‰ „ €Ì—«  ' Title ' Õ”‰« ' Type: Message Box",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PCopy ( Event : CLICK )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","CName = win1.textName.Value",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","CAddress = win1.textaddress.Value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","CPhone = win1.textPhone.Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PPast ( Event : CLICK )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := CName",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := CAddress",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := CPhone",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",124,124)
Return
*-------------------------------------------------------------------*
