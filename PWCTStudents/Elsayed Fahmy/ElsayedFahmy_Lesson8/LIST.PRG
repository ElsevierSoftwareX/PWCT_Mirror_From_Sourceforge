*---------------------------------------------------------------------------*
* Time : 01:55:23    Date : 11/06/2012
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


Resistance R_LIST3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LIST3_18smart1() code
Public cName,caddress,cphone
cName := ""
caddress := ""
cphone := ""
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,150 ;
WIDTH 584 ;
HEIGHT 447 ;
ON RELEASE MSGINFO( "Good Bye!!!" ) ;
ICON "PWCTICON" ;
TITLE "Add Items To List!!!  " ;
MAIN ;
BACKCOLOR {47,121,166} 

@ 76 ,489 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 68 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {47,121,166} ;
FONTCOLOR {255,255,255}
@ 119 ,489 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 66 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {47,121,166} ;
FONTCOLOR {255,255,255}
@ 162 ,489 LABEL lbl3 ;
VALUE "«·Â« › " ;
WIDTH 64 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {47,121,166} ;
FONTCOLOR {255,255,255}
@ 126 ,282 TEXTBOX addresstxt;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 15 ;
BACKCOLOR {224,224,224} ;
FONTCOLOR {0,0,0} 

@ 82 ,282 TEXTBOX nametxt;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 15 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} 

@ 165 ,282 TEXTBOX phonetxt;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 15 ;
BACKCOLOR {240,240,240} ;
FONTCOLOR {0,0,0} 

@ 8 ,290 LABEL lbl4 ;
VALUE "ˆ√÷› »Ì«‰« ﬂ" ;
WIDTH 240 ;
HEIGHT 60 ;
FONT "Arial" SIZE 28  ;
BOLD ;
BACKCOLOR {47,121,166} ;
FONTCOLOR {255,255,255}
@ 81 ,21 LISTBOX list1;
WIDTH 250 ;
HEIGHT 253 ;
FONT "Arial" SIZE 17 ;
BACKCOLOR {252,250,237} ;
FONTCOLOR {0,0,0}
@ 233 ,439 BUTTONEX btn1;
CAPTION "≈÷«›… ";
FONTCOLOR {87,21,23};
ON CLICK addItems()  ;
WIDTH 125 HEIGHT 48 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 233 ,311 BUTTONEX btn2;
CAPTION " ﬁ«—Ì— ";
FONTCOLOR {18,50,82};
ON CLICK reports()  ;
WIDTH 125 HEIGHT 48 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 306 ,311 BUTTONEX btn3;
CAPTION "≈€·«ﬁ ";
FONTCOLOR {255,0,0};
ON CLICK closeApp()  ;
WIDTH 115 HEIGHT 37 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 14 ,7 BUTTONEX btn5;
CAPTION "Maximize ";
FONTCOLOR {128,0,0};
ON CLICK maxApp()  ;
WIDTH 81 HEIGHT 27 ;
FONT "Arial" SIZE 10 ;
TOOLTIP ""
@ 14 ,90 BUTTONEX btn6;
CAPTION "Minimize ";
FONTCOLOR {0,0,255};
ON CLICK minApp()  ;
WIDTH 81 HEIGHT 27 ;
FONT "Arial" SIZE 10 ;
TOOLTIP ""
@ 14 ,172 BUTTONEX btn7;
CAPTION "Center ";
FONTCOLOR {0,128,0};
ON CLICK centerApp()  ;
WIDTH 81 HEIGHT 27 ;
FONT "Arial" SIZE 10 ;
TOOLTIP ""
@ 306 ,433 BUTTONEX btn8;
CAPTION "≈”‰«œ «·ﬁÌ„ ";
FONTCOLOR {128,128,0};
ON CLICK addValues()  ;
WIDTH 115 HEIGHT 37 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 352 ,435 BUTTONEX btn9;
CAPTION "‰”Œ «·»Ì«‰«  ";
FONTCOLOR {128,128,192};
ON CLICK pCopy()  ;
WIDTH 115 HEIGHT 37 ;
FONT "Arial" SIZE 15 ;
TOOLTIP ""
@ 352 ,310 BUTTONEX btn10;
CAPTION "·’ﬁ «·»Ì«‰«  ";
FONTCOLOR {0,128,128};
ON CLICK pPaste()  ;
WIDTH 115 HEIGHT 37 ;
FONT "Arial" SIZE 15 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,150 ;
WIDTH 584 ;
HEIGHT 437 ;
ICON "PWCTICON" ;
TITLE "Add Items To List!!!  " ;
MAIN ;
BACKCOLOR {47,121,166} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeApp()
win1.Release ( )
return
procedure addItems()
cName := win1.nametxt.Value
caddress := win1.addresstxt.Value
cphone := win1.phonetxt.Value
win1.list1.AddItem ( cName )
win1.list1.AddItem ( caddress )
win1.list1.AddItem ( cphone )
return
procedure reports()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 150 ,120 ;
WIDTH 367 ;
HEIGHT 384 ;
ICON "PWCTICON" ;
TITLE " ﬁ«—Ì—  " ;
CHILD ;
BACKCOLOR {0,128,192} 

@ 14 ,24 LISTBOX list2;
ON GOTFOCUS showItems()  ;
WIDTH 308 ;
HEIGHT 283 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {249,249,236} ;
FONTCOLOR {0,0,0}
@ 307 ,128 BUTTONEX btn4;
CAPTION "≈€·«ﬁ ";
ON CLICK closeChildApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 15 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure closeChildApp()
win2.Release ( )
return
procedure showItems()
cName := win1.nametxt.Value
win2.list2.AddItem ( cName )
caddress := win1.addresstxt.Value
cphone := win1.phonetxt.Value
win2.list2.AddItem ( caddress )
win2.list2.AddItem ( cphone )
return
procedure maxApp()
win1.Maximize ( )
return
procedure minApp()
win1.Minimize ( )
return
procedure centerApp()
win1.Center ( )
return
procedure addValues()
Local cName,caddress,cphone
cName := "Elsayed Fahmy"
caddress := "Mansoura"
cphone := "01000989053"
win1.nametxt.Value := "«·”Ìœ „Õ„œ ›Â„Ï"
win1.addresstxt.Value := "«·„‰’Ê—…"
win1.phonetxt.Value := "01000989053"
MyOut := MSGBOX(" „ ≈”‰«œ «·ﬁÌ„ »‘ﬂ· „»«‘— »‰Ã«Õ !!! "," Â«‰Ì‰« ")
win1.nametxt.Value := cName
win1.addresstxt.Value := caddress
win1.phonetxt.Value := cphone
MyOut := MSGBOX(" „ ≈”‰«œ «·ﬁÌ„ ⁄‰ ÿ—Ìﬁ «·„ €Ì—«  »‰Ã«Õ !!! "," Â«‰Ì‰« ")
return
procedure pCopy()
cName := win1.nametxt.Value
caddress := win1.addresstxt.Value
cphone := win1.phonetxt.Value
return
procedure pPaste()
win1.nametxt.Value := cName
win1.addresstxt.Value := caddress
win1.phonetxt.Value := cphone
return


End Of Resistance

INIT PROCEDURE Init_LIST3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public cName,caddress,cphone",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ''",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Add Items To List!!!  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action 'Good Bye!!!'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·Â« › '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( addresstxt  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( nametxt  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( phonetxt  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'ˆ√÷› »Ì«‰« ﬂ'",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈÷«›… '",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addItems",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬁ«—Ì— '",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action reports",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '≈€·«ﬁ '",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeApp",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Maximize '",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxApp",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Minimize '",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action minApp",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Center '",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action centerApp",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",113,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : '≈”‰«œ «·ﬁÌ„ '",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addValues",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : '‰”Œ «·»Ì«‰«  '",123,125)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCopy",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",127,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : '·’ﬁ «·»Ì«‰«  '",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pPaste",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",134,136)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Add Items To List!!!  '",142,146)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",147,151)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeApp ( Event : CLICK )",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addItems ( Event : CLICK )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.nametxt.Value",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.addresstxt.Value",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.phonetxt.Value",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( caddress )",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cphone )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure reports ( Event : CLICK )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' ﬁ«—Ì—  '",169,173)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",174,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action showItems",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",181,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '≈€·«ﬁ '",186,187)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeChildApp",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",189,191)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",192,193)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",194,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeChildApp ( Event : CLICK )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showItems - Event : GOTFOCUS",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.nametxt.Value",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list2.AddItem ( cName )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.addresstxt.Value",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.phonetxt.Value",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list2.AddItem ( caddress )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list2.AddItem ( cphone )",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxApp ( Event : CLICK )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure minApp ( Event : CLICK )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize ( )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure centerApp ( Event : CLICK )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addValues ( Event : CLICK )",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Local cName,caddress,cphone",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","cName = 'Elsayed Fahmy'",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = 'Mansoura'",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = '01000989053'",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","win1.nametxt.Value := '«·”Ìœ „Õ„œ ›Â„Ï'",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","win1.addresstxt.Value := '«·„‰’Ê—…'",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","win1.phonetxt.Value := '01000989053'",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ «·ﬁÌ„ »‘ﬂ· „»«‘— »‰Ã«Õ !!! ' Title ' Â«‰Ì‰« ' Type: Message Box",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.nametxt.Value := cName",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.addresstxt.Value := caddress",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","win1.phonetxt.Value := cphone",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ «·ﬁÌ„ ⁄‰ ÿ—Ìﬁ «·„ €Ì—«  »‰Ã«Õ !!! ' Title ' Â«‰Ì‰« ' Type: Message Box",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCopy ( Event : CLICK )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.nametxt.Value",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.addresstxt.Value",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.phonetxt.Value",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pPaste ( Event : CLICK )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","win1.nametxt.Value := cName",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.addresstxt.Value := caddress",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.phonetxt.Value := cphone",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",241,241)
Return
*-------------------------------------------------------------------*
