*---------------------------------------------------------------------------*
* Time : 21:00:54    Date : 01/05/2012
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


Resistance R_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 552 ;
HEIGHT 452 ;
ICON "PWCTICON" ;
TITLE "«Õ»ﬂ —»Ì „‰ ﬂ· ﬁ·»Ì" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 1 ,0 IMAGE image2;
PICTURE "2.jpg";
STRETCH ;
WIDTH 540 HEIGHT 407
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
@ 371 ,453 BUTTONEX btn7;
CAPTION " ⁄—Ì› »«·’Ê—… ";
ON CLICK newwin()  ;
WIDTH 75 HEIGHT 28 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 10 ,17 BUTTONEX btn10;
CAPTION "«÷«›…";
ON CLICK addlist()  ;
WIDTH 48 HEIGHT 21 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 7 ,67 TEXTBOX text4;
HEIGHT 31 ;
WIDTH 90 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 28 ,588 TEXTBOX text7;
HEIGHT 20 ;
WIDTH 107 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ -2 ,585 TEXTBOX text6;
HEIGHT 23 ;
WIDTH 110 ;
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

@ 88 ,697 LABEL lbl9 ;
VALUE "«·‰’" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 415 ,539 TEXTBOX text10;
HEIGHT 27 ;
WIDTH 98 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 86 ,13 LISTBOX list1;
WIDTH 91 ;
HEIGHT 202 ;
ITEMS {"«·„”Ãœ «·Õ—«„","«·„”Ãœ «·‰»ÊÌ"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 311 ,16 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 300;
ITEMS {"«·„”Ãœ «·Õ—«„","«·„”Ãœ «·«ﬁ’Ì"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 46 ,14 BUTTONEX btn11;
CAPTION "«÷› „”«Ãœ";
ON CLICK addname()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 370 ,348 BUTTONEX btn12;
CAPTION "‰” Êœ⁄ﬂ„ «··Â";
ON CLICK exitt()  ;
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
procedure newwin()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 389 ;
HEIGHT 235 ;
ICON "PWCTICON" ;
TITLE "‰«›–… ÃœÌœ…" ;
MODAL ;
BACKCOLOR {0,64,128} 

@ 57 ,30 LABEL lbl10 ;
VALUE "«·„”Ãœ «·Õ—«„ »„ﬂ… «·„ﬂ—„… " ;
WIDTH 294 ;
HEIGHT 46 ;
AUTOSIZE ;
FONT "Arial" SIZE 24  ;
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
Win1.List1.Additem ( "«·«“Â—" )
Win1.List1.Additem ( "«·„”Ãœ «·«„ÊÌ" )
Win1.List1.Additem ( "«·⁄“Ì“ »«··Â" )
return
Proc calc
txt1 = VAL ( win1.text1.value )
txt2 = VAL ( win1.text2.value )
cac := (txt1/txt2)*100
cac = STR ( cac )
cac = ALLTRIM ( cac )
win1.text3.Value := cac
Return Nil
procedure addlist()
listt := win1.text4.value
win1.list1.AddItem ( listt )
return
procedure hiuser()
user1 := win1.text10.Value
IF user1==""
MyOut := MSGExclamation("—ﬂ‹‹‹“ ‘‹‹‹ÊÌ‹‹‹…","«œŒ‹· «”‹‹„‹ﬂ")
ELSE
MyOut := MSGBOX("„—Õ»« »ﬂ Ì«"+ user1," ›÷· «ŒÌ")
ENDIF
return
procedure exittt()
win1.Release ( )
win1.Release ( )
return
ON CLICK exittt()  ;


End Of Resistance

INIT PROCEDURE Init_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«Õ»ﬂ —»Ì „‰ ﬂ· ﬁ·»Ì'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : '2.jpg'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exitt",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '—”«·…  —ÕÌ»'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action '„—Õ»« »ﬂ„ ›Ì «·»—„Ã… »œÊ‰ ﬂÊœ'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : ' ⁄—Ì› »«·’Ê—… '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action newwin",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : '«÷«›…'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addlist",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txt9  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txt8  )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",67,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : '«·‰’'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",81,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'«·„”Ãœ «·Õ—«„','«·„”Ãœ «·‰»ÊÌ'}",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",87,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'«·„”Ãœ «·Õ—«„','«·„”Ãœ «·«ﬁ’Ì'}",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",94,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn11 ) , Caption : '«÷› „”«Ãœ'",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addname",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn12 ) , Caption : '‰” Êœ⁄ﬂ„ «··Â'",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exitt",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addlistt ( Event : CLICK )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('1') to Listbox (List1) of Window (Win1)",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('2') to Listbox (List1) of Window (Win1)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3') to Listbox (List1) of Window (Win1)",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure newwin ( Event : CLICK )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '‰«›–… ÃœÌœ…'",124,128)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : '«·„”Ãœ «·Õ—«„ »„ﬂ… «·„ﬂ—„… '",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",136,142)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",145,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exitt ( Event : CLICK )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addname ( Event : CLICK )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('«·«“Â—') to Listbox (List1) of Window (Win1)",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('«·„”Ãœ «·«„ÊÌ') to Listbox (List1) of Window (Win1)",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('«·⁄“Ì“ »«··Â') to Listbox (List1) of Window (Win1)",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","txt1 = CONVERT win1.text1.value TO Numeric",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","txt2 = CONVERT win1.text2.value TO Numeric",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","cac = (txt1/txt2)*100",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","cac = CONVERT cac TO STRING",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","cac = All Trim cac",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cac",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addlist ( Event : CLICK )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","listt = win1.text4.value",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( listt )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hiuser ( Event : CLICK )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","user1 = win1.text10.Value",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user1=='' )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '—ﬂ‹‹‹“ ‘‹‹‹ÊÌ‹‹‹…' Title '«œŒ‹· «”‹‹„‹ﬂ' Type: Message Exclamation",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„—Õ»« »ﬂ Ì«'+ user1 Title ' ›÷· «ŒÌ' Type: Message Box",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exittt ( Event : CLICK )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exittt",182,182)
Return
*-------------------------------------------------------------------*
