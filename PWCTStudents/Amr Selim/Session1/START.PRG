*---------------------------------------------------------------------------*
* Time : 10:55:46    Date : 12/31/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
 * Get parameters from command line Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
		Main Circuit    Main                          
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 778 ;
HEIGHT 504 ;
ICON "PWCTICON" ;
TITLE "«Õ»ﬂ —»Ì „‰ ﬂ· ﬁ·»Ì" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 6 ,220 LABEL lbl1 ;
VALUE "«··Â —»Ì ·« «—Ìœ ”Ê«Â" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 357 ,689 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
BACKCOLOR {236,233,216};
ON CLICK exitt()  ;
WIDTH 53 HEIGHT 26 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 360 ,616 BUTTONEX btn2;
CAPTION "—”«·…  —ÕÌ»";
ON CLICK MSGINFO( "„—Õ»« »ﬂ„ ›Ì «·»—„Ã… »œÊ‰ ﬂÊœ" ) ;
WIDTH 68 HEIGHT 26 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 117 ,10 LISTBOX list1;
WIDTH 151 ;
HEIGHT 211 ;
ITEMS {"amrselim","pwct"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 1 ,16 BUTTONEX btn3;
CAPTION "add num";
ON CLICK addlistt()  ;
WIDTH 98 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 195 ,420 LABEL lbl2 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 99 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 158 ,422 LABEL lbl3 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 119 ,444 LABEL lbl4 ;
VALUE "«·œ—Ã…" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 227 ,440 BUTTONEX btn4;
CAPTION "«Õ”»";
ON CLICK calc()  ;
WIDTH 45 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 113 ,202 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 149 ,203 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 187 ,204 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 5 ,428 BUTTONEX btn5;
CAPTION " ﬂ»Ì— «·‰«›–…";
ON CLICK maxx()  ;
WIDTH 61 HEIGHT 21 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 28 ,428 BUTTONEX btn6;
CAPTION " ’€Ì— «·‰«›–…";
ON CLICK minn()  ;
WIDTH 61 HEIGHT 22 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 52 ,426 BUTTONEX btn7;
CAPTION "‰«›–… «Œ—Ì";
ON CLICK newwin()  ;
WIDTH 62 HEIGHT 20 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 30 ,16 BUTTONEX btn8;
CAPTION "add text";
ON CLICK addname()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 373 ,5 LABEL lbl5 ;
VALUE "⁄„—Ê ”·Ì„ WWW.AMRSELIM.NET" ;
WIDTH 200 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 272 ,434 BUTTONEX btn9;
CAPTION "«·Ã„⁄";
ON CLICK ADDD()  ;
WIDTH 60 HEIGHT 21 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 65 ,14 BUTTONEX btn10;
CAPTION "«÷«›…";
ON CLICK addlist()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 65 ,117 TEXTBOX text4;
HEIGHT 29 ;
WIDTH 61 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 270 ,378 TEXTBOX text5;
HEIGHT 21 ;
WIDTH 52 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 223 ,172 IMAGE image1;
PICTURE "371666_630744923_341391565_N.JPG";
STRETCH ;
WIDTH 152 HEIGHT 180
@ 2 ,707 LABEL lbl6 ;
VALUE "ÿÊ·" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 26 ,708 LABEL lbl7 ;
VALUE "⁄—÷" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ -2 ,585 TEXTBOX text6;
HEIGHT 23 ;
WIDTH 110 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 28 ,588 TEXTBOX text7;
HEIGHT 20 ;
WIDTH 107 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 84 ,586 TEXTBOX txt9;
HEIGHT 23 ;
WIDTH 92 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 52 ,587 TEXTBOX txt8;
HEIGHT 27 ;
WIDTH 78 ;
VALUE {236,233,216} ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 57 ,690 LABEL lbl8 ;
VALUE "·Ê‰ «·Œ·›Ì…" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 88 ,697 LABEL lbl9 ;
VALUE "«·‰’" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 120 ,609 BUTTONEX btn11;
CAPTION "€Ì—‰Ì";
BACKCOLOR {236,233,216};
ON CLICK changeme()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 415 ,539 TEXTBOX text10;
HEIGHT 27 ;
WIDTH 98 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 412 ,642 BUTTONEX btn12;
CAPTION "—”«·…  —ÕÌ» ‘Œ’Ì…";
ON CLICK hiuser()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure addlistt()
Win1.List1.Additem ( "1" )
Win1.List1.Additem ( "2" )
Win1.List1.Additem ( "3" )
return
procedure maxx()
win1.Maximize ( )
return
procedure minn()
win1.Minimize ( )
return
procedure newwin()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 379 ;
HEIGHT 195 ;
ICON "PWCTICON" ;
TITLE "‰«›–… ÃœÌœ…" ;
MODAL ;
BACKCOLOR {0,64,128} 

@ 44 ,113 LABEL lbl10 ;
VALUE "«··Â €«Ì ‰« «·—”Ê· ﬁœÊ ‰« " ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure exitt()
win1.Release ( )
win1.Release ( )
return
procedure addname()
Win1.List1.Additem ( "amr" )
Win1.List1.Additem ( "amr" )
Win1.List1.Additem ( "selim" )
return
Proc calc
txt1 = VAL ( win1.text1.value )
txt2 = VAL ( win1.text2.value )
cac := (txt1/txt2)*100
cac = STR ( cac )
cac = ALLTRIM ( cac )
win1.text3.Value := cac
Return Nil
procedure ADDD()
txt11 = VAL ( win1.text1.VALUE )
txt12 = VAL ( win1.text2.value )
asd := (txt11+txt12)
asd = STR ( asd )
asd = ALLTRIM ( asd )
win1.text5.Value := asd
return
procedure addlist()
listt := win1.text4.value
win1.list1.AddItem ( listt )
return
procedure changeme()
b1 := win1.text6.value
b2 := win1.text7.value
win1.btn11.Width := b1
win1.btn11.Height := b2
b4 := win1.txt9.value
win1.btn11.Caption := b4
b3 := win1.txt8.value
win1.btn11.BackColor := b3
return
procedure hiuser()
user1 := win1.text10.Value
IF user1==""
MyOut := MSGExclamation("—ﬂ‹‹‹“ ‘‹‹‹ÊÌ‹‹‹…","«œŒ‹· «”‹‹„‹ﬂ")
ELSE
MyOut := MSGBOX("„—Õ»« »ﬂ Ì«"+ user1," ›÷· «ŒÌ")
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«Õ»ﬂ —»Ì „‰ ﬂ· ﬁ·»Ì'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«··Â —»Ì ·« «—Ìœ ”Ê«Â'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exitt",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '—”«·…  —ÕÌ»'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action '„—Õ»« »ﬂ„ ›Ì «·»—„Ã… »œÊ‰ ﬂÊœ'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'amrselim','pwct'}",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",32,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'add num'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addlistt",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·‰”»… «·„∆ÊÌ…'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ì'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·œ—Ã…'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«Õ”»'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ' ﬂ»Ì— «·‰«›–…'",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxx",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : ' ’€Ì— «·‰«›–…'",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action minn",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : '‰«›–… «Œ—Ì'",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action newwin",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'add text'",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addname",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '⁄„—Ê ”·Ì„ WWW.AMRSELIM.NET'",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : '«·Ã„⁄'",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ADDD",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",123,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : '«÷«›…'",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addlist",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",129,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",133,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",139,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '371666_630744923_341391565_N.JPG'",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'ÿÊ·'",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",150,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '⁄—÷'",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",157,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",163,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",170,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txt9  )",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",177,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txt8  )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",183,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : '·Ê‰ «·Œ·›Ì…'",189,190)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",191,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : '«·‰’'",196,197)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",198,202)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn11 ) , Caption : '€Ì—‰Ì'",203,205)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action changeme",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",207,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",211,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn12 ) , Caption : '—”«·…  —ÕÌ» ‘Œ’Ì…'",216,217)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hiuser",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",219,221)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",222,223)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",224,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addlistt ( Event : CLICK )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('1') to Listbox (List1) of Window (Win1)",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('2') to Listbox (List1) of Window (Win1)",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3') to Listbox (List1) of Window (Win1)",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxx ( Event : CLICK )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure minn ( Event : CLICK )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize ( )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure newwin ( Event : CLICK )",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '‰«›–… ÃœÌœ…'",239,243)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",244,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : '«··Â €«Ì ‰« «·—”Ê· ﬁœÊ ‰« '",249,250)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",251,257)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",258,259)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",260,262)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exitt ( Event : CLICK )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addname ( Event : CLICK )",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('amr') to Listbox (List1) of Window (Win1)",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('amr') to Listbox (List1) of Window (Win1)",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('selim') to Listbox (List1) of Window (Win1)",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","txt1 = CONVERT win1.text1.value TO Numeric",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","txt2 = CONVERT win1.text2.value TO Numeric",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","cac = (txt1/txt2)*100",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","cac = CONVERT cac TO STRING",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","cac = All Trim cac",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cac",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ADDD ( Event : CLICK )",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","txt11 = CONVERT win1.text1.VALUE TO Numeric",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","txt12 = CONVERT win1.text2.value TO Numeric",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","asd = (txt11+txt12)",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","asd = CONVERT asd TO STRING",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","asd = All Trim asd",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5.Value := asd",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addlist ( Event : CLICK )",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","listt = win1.text4.value",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( listt )",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure changeme ( Event : CLICK )",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","b1 = win1.text6.value",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","b2 = win1.text7.value",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn11.Width := b1",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn11.Height := b2",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","b4 = win1.txt9.value",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn11.Caption := b4",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","b3 = win1.txt8.value",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn11.BackColor := b3",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hiuser ( Event : CLICK )",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","user1 = win1.text10.Value",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user1=='' )",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '—ﬂ‹‹‹“ ‘‹‹‹ÊÌ‹‹‹…' Title '«œŒ‹· «”‹‹„‹ﬂ' Type: Message Exclamation",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„—Õ»« »ﬂ Ì«'+ user1 Title ' ›÷· «ŒÌ' Type: Message Box",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",310,310)
Return
*-------------------------------------------------------------------*
