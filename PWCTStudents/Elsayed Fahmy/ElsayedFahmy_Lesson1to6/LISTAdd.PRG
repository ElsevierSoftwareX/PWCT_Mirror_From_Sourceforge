*---------------------------------------------------------------------------*
* Time : 00:22:48    Date : 11/06/2012
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
@ 297 ,369 BUTTONEX btn3;
CAPTION "≈€·«ﬁ ";
FONTCOLOR {255,0,0};
ON CLICK closeApp()  ;
WIDTH 143 HEIGHT 41 ;
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
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",114,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Add Items To List!!!  '",117,121)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",129,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeApp ( Event : CLICK )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addItems ( Event : CLICK )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.nametxt.Value",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.addresstxt.Value",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.phonetxt.Value",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( caddress )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cphone )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure reports ( Event : CLICK )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' ﬁ«—Ì—  '",144,148)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",149,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action showItems",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",156,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '≈€·«ﬁ '",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeChildApp",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",164,166)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",167,168)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",169,171)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeChildApp ( Event : CLICK )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showItems - Event : GOTFOCUS",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.nametxt.Value",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list2.AddItem ( cName )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.addresstxt.Value",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.phonetxt.Value",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list2.AddItem ( caddress )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win2.list2.AddItem ( cphone )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxApp ( Event : CLICK )",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure minApp ( Event : CLICK )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize ( )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure centerApp ( Event : CLICK )",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
Return
*-------------------------------------------------------------------*
