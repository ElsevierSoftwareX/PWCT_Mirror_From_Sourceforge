*---------------------------------------------------------------------------*
* Time : 22:35:12    Date : 06/09/2012
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


Resistance R_LESSON6_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON6_18smart1() code
Public cname
Public cnumber
Public cadress
cname := ""
cnumber := ""
cadress := ""
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 735 ;
HEIGHT 426 ;
ICON "PWCTICON" ;
TITLE "«·»Ì«‰«  «·⁄«„…" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 53 ,595 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 109 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 119 ,597 LABEL lbl2 ;
VALUE "«·—ﬁ„" ;
WIDTH 108 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 177 ,596 LABEL lbl3 ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 110 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 51 ,383 TEXTBOX name;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 114 ,383 TEXTBOX number;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 172 ,383 TEXTBOX adress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 25 ,44 LISTBOX list1;
WIDTH 285 ;
HEIGHT 276 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 261 ,403 BUTTONEX btn1;
CAPTION "≈œŒ«·";
ON CLICK addata()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 262 ,517 BUTTONEX btn2;
CAPTION "≈”‰«œ ﬁÌ„";
ON CLICK addvalue()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,493 BUTTONEX btn3;
CAPTION "‰”Œ";
ON CLICK acopy()  ;
WIDTH 60 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,422 BUTTONEX btn4;
CAPTION "·’ﬁ";
ON CLICK apest()  ;
WIDTH 60 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure addata()
cname := win1.name.Value
cnumber := win1.number.Value
cadress := win1.adress.Value
win1.list1.AddItem ( cname )
win1.list1.AddItem ( cnumber )
win1.list1.AddItem ( cadress )
Win1.List1.Additem ( "test " )
Win1.List1.Additem ( cname )
Win1.List1.Additem ( cnumber )
Win1.List1.Additem ( cadress )
return
procedure addvalue()
Local cname
Local cnumber
Local cadress
cname := "nadeer"
cnumber := "05052500"
cadress := "qateef"
win1.name.Value := "„«Â—"
win1.number.Value := "052013250"
win1.adress.Value := "«·ﬁÿÌ›"
MyOut := MSGBOX(" „ ≈”‰«œ «·ﬁÌ„ ›Ì „—»⁄«  «·‰’ „‰ Œ·«· «·≈”‰«œ «·„»«‘— ","≈”‰«œ ")
win1.name.Value := cname
win1.number.Value := cnumber
win1.adress.Value := cadress
MyOut := MSGBOX(" „ ≈”‰«œ «·ﬁÌ„ ›Ì „—»⁄«  «·‰’ „‰ „ €Ì—« ","≈”‰«œ ")
return
procedure acopy()
cname := win1.name.Value
cnumber := win1.number.Value
cadress := win1.adress.Value
return
procedure apest()
win1.name.Value := cname
win1.number.Value := cnumber
win1.adress.Value := cadress
return


End Of Resistance

INIT PROCEDURE Init_LESSON6
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public cname",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Public cnumber",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Public cadress",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","cnumber = ''",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","cadress = ''",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·»Ì«‰«  «·⁄«„…'",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·—ﬁ„'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·⁄‰Ê«‰'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( name  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( number  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( adress  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈œŒ«·'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addata",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈”‰«œ ﬁÌ„'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addvalue",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '‰”Œ'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action acopy",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '·’ﬁ'",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action apest",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addata ( Event : CLICK )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.name.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","cnumber = win1.number.Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","cadress = win1.adress.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cname )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cnumber )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cadress )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('test ') to Listbox (List1) of Window (Win1)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cname) to Listbox (List1) of Window (Win1)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cnumber) to Listbox (List1) of Window (Win1)",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cadress) to Listbox (List1) of Window (Win1)",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addvalue ( Event : CLICK )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Local cname",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Local cnumber",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Local cadress",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","cname = 'nadeer'",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","cnumber = '05052500'",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","cadress = 'qateef'",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.name.Value := '„«Â—'",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.number.Value := '052013250'",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.adress.Value := '«·ﬁÿÌ›'",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ «·ﬁÌ„ ›Ì „—»⁄«  «·‰’ „‰ Œ·«· «·≈”‰«œ «·„»«‘— ' Title '≈”‰«œ ' Type: Message Box",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","win1.name.Value := cname",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.number.Value := cnumber",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.adress.Value := cadress",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ «·ﬁÌ„ ›Ì „—»⁄«  «·‰’ „‰ „ €Ì—« ' Title '≈”‰«œ ' Type: Message Box",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure acopy ( Event : CLICK )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.name.Value",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","cnumber = win1.number.Value",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","cadress = win1.adress.Value",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure apest ( Event : CLICK )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.name.Value := cname",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.number.Value := cnumber",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.adress.Value := cadress",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
Return
*-------------------------------------------------------------------*
