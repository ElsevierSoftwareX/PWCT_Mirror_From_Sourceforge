*---------------------------------------------------------------------------*
* Time : 01:26:54    Date : 11/06/2012
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,150 ;
WIDTH 584 ;
HEIGHT 398 ;
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
WIDTH 114 HEIGHT 37 ;
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
WIDTH 114 HEIGHT 37 ;
FONT "Arial" SIZE 18 ;
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


End Of Resistance

INIT PROCEDURE Init_LIST3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Add Items To List!!!  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action 'Good Bye!!!'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·Â« › '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( addresstxt  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( nametxt  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( phonetxt  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'ˆ√÷› »Ì«‰« ﬂ'",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈÷«›… '",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addItems",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬁ«—Ì— '",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action reports",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '≈€·«ﬁ '",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeApp",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Maximize '",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxApp",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Minimize '",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action minApp",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Center '",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action centerApp",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : '≈”‰«œ «·ﬁÌ„ '",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addValues",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",121,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Add Items To List!!!  '",124,128)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",136,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeApp ( Event : CLICK )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addItems ( Event : CLICK )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.nametxt.Value",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.addresstxt.Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.phonetxt.Value",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( caddress )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cphone )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure reports ( Event : CLICK )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' ﬁ«—Ì—  '",151,155)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",156,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action showItems",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",163,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '≈€·«ﬁ '",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeChildApp",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",171,173)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",174,175)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeChildApp ( Event : CLICK )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showItems - Event : GOTFOCUS",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.nametxt.Value",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list2.AddItem ( cName )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.addresstxt.Value",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.phonetxt.Value",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list2.AddItem ( caddress )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list2.AddItem ( cphone )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxApp ( Event : CLICK )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure minApp ( Event : CLICK )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize ( )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure centerApp ( Event : CLICK )",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addValues ( Event : CLICK )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","cName = 'Elsayed Fahmy'",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = 'Mansoura'",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = '01000989053'",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","win1.nametxt.Value := '«·”Ìœ „Õ„œ ›Â„Ï'",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","win1.addresstxt.Value := '«·„‰’Ê—…'",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","win1.phonetxt.Value := '01000989053'",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ «·ﬁÌ„ »‘ﬂ· „»«‘— »‰Ã«Õ !!! ' Title ' Â«‰Ì‰« ' Type: Message Box",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","win1.nametxt.Value := cName",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.addresstxt.Value := caddress",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.phonetxt.Value := cphone",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ ≈”‰«œ «·ﬁÌ„ ⁄‰ ÿ—Ìﬁ «·„ €Ì—«  »‰Ã«Õ !!! ' Title ' Â«‰Ì‰« ' Type: Message Box",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",212,212)
Return
*-------------------------------------------------------------------*
