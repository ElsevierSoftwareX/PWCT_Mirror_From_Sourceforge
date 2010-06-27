*---------------------------------------------------------------------------*
* Time : 02:13:50    Date : 06/28/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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
 * (Noun) *
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


Resistance R_CHEM1ST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHEM1ST_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 646 ;
HEIGHT 496 ;
ICON "PWCTICON" ;
TITLE "ÈÑäÇãÌ ÍÓÇÈ ÇáÕíÛÉ ÇáßíãíÇÆíÉ.............ááÕÝ ÇáÇæá ÇáËÇäæí" ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "CUR/ABN.ANI" ;
BACKCOLOR {64,128,128} ;
FONT "Tahoma" SIZE 12 ;
NOTIFYICON "ico/abn.ico" ;
NOTIFYTOOLTIP "ÈÑãÌÉ Ã/ÃÈæÇáÓÚæÏ ÚÈÏÇáÑÄÝ" 

win1.Center ( )
DEFINE TAB Tab1;
AT 6 ,3;
WIDTH 629;
HEIGHT 445;
FONT "Tahoma" SIZE 9 ;
BOLD ;
FLAT ;
TOOLTIP ""
PAGE "ÇáÕíÛÉ ÇáßíãíÇÆíÉ"
@ 24 ,2 IMAGE imageabn2n;
PICTURE "mrabn/1st.jpg";
STRETCH ;
WIDTH 619 HEIGHT 413
@ 367 ,674 IMAGE imageabn1n;
PICTURE "back/abnteam.jpg";
STRETCH ;
WIDTH 6 HEIGHT 5
@ 89 ,411 LABEL lblab2n ;
VALUE "ÇßÊÈ ÑãæÒ ÇáÚäÇÕÑ" ;
WIDTH 174 ;
HEIGHT 25 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {225,225,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 351 ,106 LABEL lbla ;
VALUE "" ;
WIDTH 55 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 352 ,180 LABEL lblb ;
VALUE "" ;
WIDTH 51 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 50 ,299 LABEL lblab5n ;
VALUE "" ;
WIDTH 24 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {111,0,221}
@ 138 ,237 LABEL lblab6n ;
VALUE "" ;
WIDTH 20 ;
HEIGHT 31 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {111,0,221}
@ 39 ,99 LABEL lblab7n ;
VALUE "ÍÓÜÜÜÜÇÈ ÇáÕíÛÉ ÇáßíãíÇÆíÉ áÚäÕÑ" ;
WIDTH 338 ;
HEIGHT 41 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {111,0,221}
@ 87 ,110 TEXTBOX texta;
HEIGHT 30 ;
WIDTH 50 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,113,56} ;
INPUTMASK ""
@ 90 ,285 TEXTBOX textb;
HEIGHT 30 ;
WIDTH 50 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK ""
@ 122 ,74 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,113,56} ;
INPUTMASK "99.99999"
@ 125 ,255 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK "99.99999"
@ 159 ,74 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,113,56} ;
INPUTMASK "99.99999"
@ 160 ,255 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK "99.99999"
@ 199 ,93 BUTTONEX btn1nutron;
CAPTION " ÇÖÛØ åäÇ ãÑÊíä";
ON CLICK chem()  ;
WIDTH 280 HEIGHT 38 ;
FONT "Tahoma" SIZE 18 ;
TOOLTIP ""
@ 246 ,73 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,113,56} ;
INPUTMASK "99.99999"
@ 247 ,253 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK "99.99999"
@ 284 ,73 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,113,56} ;
INPUTMASK "99.99999"
@ 284 ,253 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK "99.99999"
@ 372 ,129 TEXTBOX text9;
HEIGHT 20 ;
WIDTH 30 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,106,53} ;
INPUTMASK ""
@ 372 ,204 TEXTBOX text10;
HEIGHT 20 ;
WIDTH 30 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK ""
@ 366 ,408 BUTTONEX btn1;
CAPTION "ÌÏíÏ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,255};
ON CLICK myclear()  ;
WIDTH 83 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "ÇÖÛØ ãÑÊíä áÍÓÇÈ ÇáÕíÛÉ ÇáßíãíÇÆíÉ"
@ 126 ,410 LABEL lblab2ne ;
VALUE "ßÊáÉ Ãæ æÒä ÇáÚäÕÑ" ;
WIDTH 174 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
@ 164 ,410 LABEL lblab3ne ;
VALUE "ÇáÚÏÏ ÇáßÊáí" ;
WIDTH 174 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 16  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
@ 249 ,410 LABEL lblab4ne ;
VALUE "ÚÏÏ ÇáãæáÇÊ" ;
WIDTH 174 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 16  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,255}
@ 286 ,410 LABEL lblab5ne ;
VALUE "äÓÈÉ ÇáãæáÇÊ" ;
WIDTH 174 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 16  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 367 ,249 LABEL lblab6ne ;
VALUE "ÇáÕíÛÉ ÇáßíãíÇÆíÉ" ;
WIDTH 148 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,0,128}
@ 366 ,498 BUTTONEX btn2;
CAPTION "ÎÑæÌ";
FONTCOLOR {128,255,255};
BACKCOLOR {255,0,128};
ON CLICK myexit()  ;
WIDTH 83 HEIGHT 35 ;
FONT "arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "ÇÖÛØ ááÎÑæÌ"
END PAGE
PAGE "ÇáÇæÒÇä ÇáÐÑíÉ"
@ 20 ,0 IMAGE imagabn3n;
PICTURE "mrabn/w.jpg";
STRETCH ;
WIDTH 619 HEIGHT 413
@ 115 ,457 TEXTBOX textw1;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "1" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
@ 166 ,457 TEXTBOX textw2;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "7" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 213 ,457 TEXTBOX textw3;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "14" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 265 ,457 TEXTBOX textw4;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "16" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 315 ,457 TEXTBOX textw5;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "23" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 115 ,310 TEXTBOX textw6;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "24" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 166 ,310 TEXTBOX textw7;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "12" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 213 ,310 TEXTBOX textw8;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "40" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 265 ,310 TEXTBOX textw9;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "32" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 315 ,310 TEXTBOX textw10;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "108" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 115 ,153 TEXTBOX textw11;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "63.5" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 166 ,153 TEXTBOX textw12;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "35.5" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 213 ,153 TEXTBOX textw13;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "207" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 265 ,153 TEXTBOX textw14;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "39" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 315 ,153 TEXTBOX textw15;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "27" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 115 ,3 TEXTBOX textw16;
HEIGHT 30 ;
WIDTH 70 ;
VALUE "56" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK ""
@ 166 ,3 TEXTBOX textw17;
HEIGHT 30 ;
WIDTH 70 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK " "
@ 213 ,3 TEXTBOX textw18;
HEIGHT 30 ;
WIDTH 70 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK " "
@ 265 ,3 TEXTBOX textw19;
HEIGHT 30 ;
WIDTH 70 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK " "
@ 315 ,3 TEXTBOX textw20;
HEIGHT 30 ;
WIDTH 70 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160} ;
INPUTMASK " "
END PAGE
PAGE "ãÚáæãÇÊ"
@ 24 ,2 IMAGE imagabn5n;
PICTURE "mrabn/about.jpg";
STRETCH ;
WIDTH 619 HEIGHT 413
END PAGE
END TAB
END WINDOW

ACTIVATE WINDOW win1

Proc chem
t1 = VAL ( win1.text1.value )
t2 = VAL ( win1.text2.value )
t3 = VAL ( win1.text3.value )
t4 = VAL ( win1.text4.value )
t5 = VAL ( win1.text5.value )
t6 = VAL ( win1.text6.value )
t7 = VAL ( win1.text7.value )
t8 = VAL ( win1.text8.value )
t9 = VAL ( win1.text9.value )
t10 = VAL ( win1.text10.value )
ta = VAL ( win1.texta.value )
tb = VAL ( win1.textb.value )
sum13 := (t1/t3)
sum13 = STR ( sum13 )
sum13 = ALLTRIM ( sum13 )
win1.text5.Value := sum13
sum24 := (t2/t4)
sum24 = STR ( sum24 )
sum24 = ALLTRIM ( sum24 )
win1.text6.Value := sum24
IF t5>t6
st7 := t5/t6
st7 = STR ( st7 )
st7 = ALLTRIM ( st7 )
win1.text7.Value := st7
win1.text9.Value := st7
win1.text8.Value := "1"
win1.text10.Value := "1"
abna := win1.texta.Value
win1.lbla.Value := abna
abnb := win1.textb.Value
win1.lblb.Value := abnb
ENDIF
IF t6>t5
st8 := t6/t5
st8 = STR ( st8 )
st8 = ALLTRIM ( st8 )
win1.text8.Value := st8
win1.text10.Value := st8
win1.text7.Value := "1"
win1.text9.Value := "1"
abna := win1.texta.Value
win1.lbla.Value := abna
abnb := win1.textb.Value
win1.lblb.Value := abnb
ENDIF
Return Nil
Proc myclear
win1.text1.Value := ""
win1.text2.Value := ""
win1.text3.Value := ""
win1.text4.Value := ""
win1.text5.Value := ""
win1.text6.Value := ""
win1.text7.Value := ""
win1.text8.Value := ""
win1.text9.Value := ""
win1.text10.Value := ""
win1.texta.Value := ""
win1.textb.Value := ""
win1.lbla.Value := ""
win1.lblb.Value := ""
Return Nil
Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_CHEM1ST
START DOUBLES
Return
*-------------------------------------------------------------------*
