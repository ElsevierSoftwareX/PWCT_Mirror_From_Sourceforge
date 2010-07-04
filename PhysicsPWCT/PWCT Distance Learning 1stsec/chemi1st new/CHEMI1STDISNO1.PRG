*---------------------------------------------------------------------------*
* Time : 22:19:42    Date : 07/04/2010
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


Resistance R_CHEMI1STDISNO1_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHEMI1STDISNO1_15speed1() code
set decimals to 4
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 646 ;
HEIGHT 496 ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã Õ”«» «·’Ì€… «·ﬂÌ„Ì«∆Ì….............··’› «·«Ê· «·À«‰ÊÌ" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "CUR/ABN.ANI" ;
BACKCOLOR {64,128,128} ;
FONT "Tahoma" SIZE 12 ;
NOTIFYICON "ico/abn.ico" ;
NOTIFYTOOLTIP "»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ«·—ƒ›" 

win1.Center ( )
DEFINE TAB Tab1;
AT 6 ,3;
WIDTH 629;
HEIGHT 445;
FONT "Tahoma" SIZE 9 ;
BOLD ;
FLAT ;
TOOLTIP ""
PAGE "«·’Ì€… «·ﬂÌ„Ì«∆Ì…"
@ 24 ,2 IMAGE imageabn2n;
PICTURE "mrabn/1st.jpg";
STRETCH ;
WIDTH 621 HEIGHT 415
@ 367 ,674 IMAGE imageabn1n;
PICTURE "back/abnteam.jpg";
STRETCH ;
WIDTH 6 HEIGHT 5
@ 89 ,411 LABEL lblab2n ;
VALUE "«ﬂ » —„Ê“ «·⁄‰«’—" ;
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
@ 35 ,72 LABEL lblab7n ;
VALUE "Õ”‹‹‹‹«» «·’Ì€… «·ﬂÌ„Ì«∆Ì… ·⁄‰’—" ;
WIDTH 451 ;
HEIGHT 44 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
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
INPUTMASK ""
@ 125 ,255 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK ""
@ 159 ,74 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,113,56} ;
INPUTMASK ""
@ 160 ,255 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK ""
@ 199 ,93 BUTTONEX btn1CHEM;
CAPTION " «÷€ÿ Â‰« „— Ì‰";
ON CLICK chem()  ;
WIDTH 280 HEIGHT 38 ;
FONT "Arial" SIZE 18 ;
TOOLTIP "«÷€ÿ „— Ì‰ ·Õ”«» «·’Ì€… «·ﬂÌ„Ì«∆Ì…"
@ 246 ,73 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,113,56} ;
INPUTMASK ""
@ 247 ,253 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK ""
@ 284 ,73 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,113,56} ;
INPUTMASK ""
@ 284 ,253 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 140 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
INPUTMASK ""
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
@ 366 ,410 BUTTONEX btn1;
CAPTION "ÃœÌœ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,255};
ON CLICK myclear()  ;
WIDTH 83 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "«÷€ÿ · ›—Ì€ «·Œ«‰« "
@ 126 ,410 LABEL lblab2ne ;
VALUE "ﬂ ·… √Ê Ê“‰ «·⁄‰’—" ;
WIDTH 174 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
@ 164 ,410 LABEL lblab3ne ;
VALUE "«·⁄œœ «·ﬂ ·Ì" ;
WIDTH 174 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 16  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
@ 249 ,410 LABEL lblab4ne ;
VALUE "⁄œœ «·„Ê·« " ;
ACTION mymole()  ;
WIDTH 174 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 16  ;
BOLD ;
TOOLTIP "«÷€ÿ Â‰«"  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,255,255}
@ 286 ,410 LABEL lblab5ne ;
VALUE "‰”»… «·„Ê·« " ;
WIDTH 174 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 16  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 367 ,249 LABEL lblab6ne ;
VALUE "«·’Ì€… «·ﬂÌ„Ì«∆Ì…" ;
WIDTH 148 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,0,128}
@ 366 ,501 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {128,255,255};
BACKCOLOR {255,0,128};
ON CLICK myexit()  ;
WIDTH 83 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "«÷€ÿ ··Œ—ÊÃ"
@ 254 ,585 IMAGE image1ww;
PICTURE "mrabn/back.jpg";
STRETCH ;
WIDTH 36 HEIGHT 21
@ 408 ,3 BUTTONEX btn3;
CAPTION "«—”«· «·Õ· «·Ì „Êﬁ⁄ „œ—” ﬂ";
FONTCOLOR {255,255,0};
BACKCOLOR {0,64,64};
ON CLICK myweb()  ;
WIDTH 240 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "«÷€ÿ ··œŒÊ· «·Ì „‰ œÌ „œ—” ﬂ"
END PAGE
PAGE "«·«Ê“«‰ «·–—Ì…"
@ 23 ,0 IMAGE imagabn3n;
PICTURE "mrabn/w.jpg";
STRETCH ;
WIDTH 619 HEIGHT 413
@ 195 ,462 TEXTBOX textw1;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "1" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 246 ,462 TEXTBOX textw2;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "7" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 293 ,462 TEXTBOX textw3;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "14" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 345 ,462 TEXTBOX textw4;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "16" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 345 ,9 TEXTBOX textw5;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "23" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 195 ,309 TEXTBOX textw6;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "24" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 246 ,309 TEXTBOX textw7;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "12" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 293 ,309 TEXTBOX textw8;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "40" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 345 ,309 TEXTBOX textw9;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "32" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 293 ,9 TEXTBOX textw10;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "108" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 195 ,159 TEXTBOX textw11;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "63.5" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 246 ,159 TEXTBOX textw12;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "35.5" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 293 ,159 TEXTBOX textw13;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "207" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 345 ,159 TEXTBOX textw14;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "39" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 246 ,9 TEXTBOX textw15;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "27" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 195 ,9 TEXTBOX textw16;
HEIGHT 30 ;
WIDTH 50 ;
VALUE "56" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 195,515 HYPERLINK Hyper1wh;
ADDRESS "mrabn/w/h.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 246,515 HYPERLINK Hyperwli;
ADDRESS "mrabn/w/li.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 293,515 HYPERLINK Hyperwn;
ADDRESS "mrabn/w/n.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 345,515 HYPERLINK Hyperwo;
ADDRESS "mrabn/w/o.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 195,362 HYPERLINK Hyperwmg;
ADDRESS "mrabn/w/mg.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 246,362 HYPERLINK Hyperwc;
ADDRESS "mrabn/w/c.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 293,362 HYPERLINK Hyperwca;
ADDRESS "mrabn/w/ca.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 345,362 HYPERLINK Hyperws;
ADDRESS "mrabn/w/s.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 195,211 HYPERLINK Hyperwcu;
ADDRESS "mrabn/w/cu.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 246,211 HYPERLINK Hyperwcl;
ADDRESS "mrabn/w/cl.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 293,211 HYPERLINK Hyperwpb;
ADDRESS "mrabn/w/pb.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 345,211 HYPERLINK Hyperwk;
ADDRESS "mrabn/w/k.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 196,62 HYPERLINK Hyperwfe;
ADDRESS "mrabn/w/fe.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 247,61 HYPERLINK Hyperwal;
ADDRESS "mrabn/w/al.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 294,61 HYPERLINK Hyperwag;
ADDRESS "mrabn/w/ag.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 346,61 HYPERLINK Hyperwna;
ADDRESS "mrabn/w/na.pdf";
WIDTH 89 ;
HEIGHT 29 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 195 ,515 LABEL lbl1w ;
VALUE "ÂÌœ—ÊÃÌ‰" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {223,112,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 246 ,515 LABEL lbl2w ;
VALUE "·ÌÀÌÊ„" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {223,112,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 293 ,515 LABEL lbl3w ;
VALUE "‰Ì —ÊÃÌ‰" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {223,112,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 346 ,61 LABEL lbl4w ;
VALUE "’ÊœÌÊ„" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,64,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 247 ,61 LABEL lbl5w ;
VALUE "√·Ê„Ê‰ÌÊ„" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,64,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 345 ,515 LABEL lbl6w ;
VALUE "√ﬂ”ÃÌ‰" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {223,112,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 195 ,362 LABEL lbl7w ;
VALUE "„«€‰”ÌÊ„" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 246 ,362 LABEL lbl8w ;
VALUE "ﬂ—»Ê‰" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 293 ,362 LABEL lbl9w ;
VALUE "ﬂ«·”ÌÊ„" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 345 ,362 LABEL lbl10w ;
VALUE "ﬂ»—Ì " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 195 ,211 LABEL lbl11w ;
VALUE "‰Õ«”" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,98,49} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,255}
@ 246 ,211 LABEL lbl12w ;
VALUE "ﬂ·Ê—" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,98,49} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,255}
@ 293 ,211 LABEL lbl13w ;
VALUE "—’«’" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,98,49} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,255}
@ 345 ,211 LABEL lbl14w ;
VALUE "»Ê «”ÌÊ„" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,98,49} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,255}
@ 196 ,62 LABEL lbl15w ;
VALUE "ÕœÌœ" ;
WIDTH 89 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,64,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 294 ,61 LABEL lbl16w ;
VALUE "›÷…" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,64,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 49 ,77 LABEL lbl17w ;
VALUE "«·√Ê“«‰ «·–—Ì… ·√Â„ «·⁄‰«’—" ;
WIDTH 440 ;
HEIGHT 50 ;
FONT "Tahoma" SIZE 20  ;
BOLD ;
BACKCOLOR {0,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 122 ,362 LABEL lbl18w ;
VALUE "«·⁄‰’—" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 122 ,159 LABEL lbl19w ;
VALUE "Ê“‰Â" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 122 ,212 LABEL lbl20w ;
VALUE "«·⁄‰’—" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,98,49} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,255}
@ 122 ,10 LABEL lbl21w ;
VALUE "Ê“‰Â" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 122 ,517 LABEL lbl22w ;
VALUE "«·⁄‰’—" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {223,112,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 122 ,310 LABEL lb23w ;
VALUE "Ê“‰Â" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 122 ,63 LABEL lbl24w ;
VALUE "«·⁄‰’—" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,64,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 122 ,463 LABEL lbl25w ;
VALUE "Ê“‰Â" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 395 ,2 LABEL lbl26w ;
VALUE "«÷€ÿ ⁄·Ì «Ì ⁄‰’— ··Õ’Ê· ⁄·Ì „⁄·Ê„«  «÷«›Ì… ⁄‰Â.·« Ì‘ —ÿ «·« ’«· »«·‰ " ;
WIDTH 615 ;
HEIGHT 33 ;
FONT "Tahoma" SIZE 12  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END PAGE
PAGE "„⁄·Ê„« "
@ 27 ,-2 IMAGE imagabn5n;
PICTURE "mrabn/about.jpg";
STRETCH ;
WIDTH 622 HEIGHT 414
@ 44 ,10 LABEL lbl1about ;
VALUE "" ;
WIDTH 185 ;
HEIGHT 197 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {128,128,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 52 ,16 LABEL lbl3about ;
VALUE "" ;
WIDTH 174 ;
HEIGHT 186 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {255,255,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 55 ,19 LABEL lbl2about ;
VALUE "" ;
WIDTH 168 ;
HEIGHT 180 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 62 ,24 IMAGE image1;
PICTURE "mrabn/abn.jpg";
STRETCH ;
WIDTH 159 HEIGHT 167
@ 397 ,516 LABEL lbl4about ;
VALUE "√Œ—Ì" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {85,0,170} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 338 ,516 LABEL lbl5about ;
VALUE "„Ê»«Ì·" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {85,0,170} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 279 ,516 LABEL lbl6about ;
VALUE " ·Ì›Ê‰" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {85,0,170} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 220 ,516 LABEL lbl7about ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {85,0,170} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 161 ,516 LABEL lbl8about ;
VALUE "«·ÊŸÌ›…" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {85,0,170} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 102 ,516 LABEL lbl9about ;
VALUE "«·«”„" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {85,0,170} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 32 ,234 LABEL lbl10about ;
VALUE "„⁄·Ê„«  ⁄‰ «·„»—„Ã" ;
WIDTH 284 ;
HEIGHT 53 ;
FONT "Tahoma" SIZE 20  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 102 ,230 TEXTBOX textabout1;
HEIGHT 30 ;
WIDTH 210 ;
VALUE "√»Ê «·”⁄Êœ ⁄»œ«·—ƒ›" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128} ;
INPUTMASK ""
@ 161 ,230 TEXTBOX textabout2;
HEIGHT 30 ;
WIDTH 210 ;
VALUE "Physics Teacher" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,108,54} ;
INPUTMASK ""
@ 220 ,230 TEXTBOX textabout3;
HEIGHT 30 ;
WIDTH 210 ;
VALUE " „’—- «·‘—ﬁÌ… - «·“ﬁ«“Ìﬁ" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,64,0} ;
INPUTMASK ""
@ 279 ,230 TEXTBOX textabout4;
HEIGHT 30 ;
WIDTH 210 ;
VALUE "055/2165533" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,255} ;
INPUTMASK ""
@ 338 ,230 TEXTBOX textabout5;
HEIGHT 30 ;
WIDTH 210 ;
VALUE "0105234960" ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255} ;
INPUTMASK ""
@ 300,25 HYPERLINK Hyper1;
ADDRESS "http://doublesvsoop.sourceforge.net/forum/";
WIDTH 114 ;
HEIGHT 108 ;
FONT "Arial" ;
SIZE 9 ;
TOOLTIP "«÷€ÿ ··œŒÊ· «·Ì „Êﬁ⁄ «·»—„Ã… »œÊ‰ ﬂÊœ" ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 397 ,230 TEXTBOX textabout6;
HEIGHT 30 ;
WIDTH 211 ;
VALUE "PWCT  ⁄÷Ê ›—Ìﬁ  ﬁ‰Ì… " ;
READONLY ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,255} ;
INPUTMASK ""
@ 298 ,24 LABEL lbl11about ;
VALUE "PWCT" ;
WIDTH 116 ;
HEIGHT 58 ;
FONT "Tahoma" SIZE 26  ;
BOLD ;
BACKCOLOR {85,0,170} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 351 ,24 LABEL lbl12about ;
VALUE "TEAM" ;
WIDTH 116 ;
HEIGHT 58 ;
FONT "Tahoma" SIZE 26  ;
BOLD ;
BACKCOLOR {255,0,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {128,255,0}
@ 257 ,36 LABEL lbl13about ;
VALUE "WebSite" ;
WIDTH 89 ;
HEIGHT 24 ;
FONT "Tahoma" SIZE 12  ;
BOLD ;
BACKCOLOR {0,255,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
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
IF t5=t6
win1.text7.Value := "1"
win1.text8.Value := "1"
win1.text9.Value := "1"
win1.text10.Value := "1"
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
Proc mymole
if !iswindowdefined( winmole )
DEFINE WINDOW winmole ;
AT 10 ,10 ;
WIDTH 637 ;
HEIGHT 353 ;
ICON "PWCTICON" ;
TITLE "Õ”«» ⁄œœ «·„Ê·« " ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {0,102,51} 

winmole.Center ( )
@ 139 ,381 LABEL lbl1mole ;
VALUE "⁄œœ «·„Ê·«  " ;
WIDTH 180 ;
HEIGHT 50 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {164,72,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 146 ,327 LABEL lbl2mole ;
VALUE "=" ;
WIDTH 30 ;
HEIGHT 31 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {164,72,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 150 ,34 LABEL lbl3mole ;
VALUE "-------------------------------------------------------------------------------" ;
WIDTH 285 ;
HEIGHT 21 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {164,72,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 110 ,178 LABEL lbl4mole ;
VALUE "ﬂ ·… «·⁄‰’—" ;
WIDTH 119 ;
HEIGHT 37 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {164,72,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 180 ,176 LABEL lbl5mole ;
VALUE "«·⁄œœ «·ﬂ ·Ì" ;
WIDTH 123 ;
HEIGHT 37 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {164,72,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 179 ,49 LABEL lbl6mole ;
VALUE "(«·Ê“‰ «·–—Ì)" ;
WIDTH 123 ;
HEIGHT 37 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {164,72,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 263 ,23 BUTTONEX btn1mole;
CAPTION "⁄Êœ…";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,255};
ON CLICK mymolex()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 19 ,99 LABEL lbl8mole ;
VALUE "ﬁ«‰Ê‰ Õ”«» ⁄œœ «·„Ê·«  " ;
WIDTH 343 ;
HEIGHT 38 ;
FONT "Tahoma" SIZE 16  ;
BOLD ;
BACKCOLOR {255,255,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 109 ,51 LABEL lbl9mole ;
VALUE "(Ê“‰ «·⁄‰’—)" ;
WIDTH 123 ;
HEIGHT 37 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {164,72,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW winmole
EndIF

Return Nil
Proc mymolex
winmole.Release ( )
Return Nil
Proc myon
Return Nil
Proc myweb
win1.Minimize ( )
if !iswindowdefined( web )
DEFINE WINDOW web ;
AT 10 ,10 ;
WIDTH 848 ;
HEIGHT 573 ;
ON SIZE myonweb()  ;
ON MAXIMIZE myonweb()  ;
ICON "PWCTICON" ;
TITLE "«· ›«⁄· „⁄ „⁄·„ﬂ ⁄»— «·«‰ —‰    ..........”·”·… «· ⁄·„ ⁄‰ »⁄œ" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216} 

Public oActiveX
oActiveX := TActiveX():New( "web", "Shell.Explorer.2" , 84 , 4 , 831 , 478)
oActiveX:Load()
@ 98 ,937 TEXTBOX text4web;
HEIGHT 4 ;
WIDTH 5 ;
VALUE "http://taalmnashet.ahlamontada.net/forum.htm" ;
BOLD ;
TOOLTIP "«œŒ· —«»ÿ „œ—” ﬂ Â‰«" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,206} ;
INPUTMASK ""
@ 40 ,108 TEXTBOX text1web;
HEIGHT 33 ;
WIDTH 428 ;
FONT "Tahoma" SIZE 12 ;
BOLD ;
TOOLTIP "«œŒ· —«»ÿ „œ—” ﬂ Â‰«" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,206} ;
INPUTMASK ""
@ 40 ,5 BUTTONEX btn1web;
CAPTION "Go";
FONTCOLOR {128,0,255};
BACKCOLOR {236,233,216};
PICTURE "mrabn/web.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK mygo()  ;
WIDTH 100 HEIGHT 35 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP "«÷€ÿ Â‰«"
@ 38 ,699 BUTTONEX btn2web;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,255,128};
BACKCOLOR {255,0,128};
PICTURE "mrabn/x.BMP";
ON CLICK webexit()  ;
WIDTH 100 HEIGHT 35 ;
FONT "Arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "«÷€ÿ Â‰« ·«€·«ﬁ Â–Â «·‰«›–…"
DEFINE TOOLBAR Toolbar1;
BUTTONSIZE 85 , 15 ;
FONT "Times New Roman" ;
SIZE 10 ;
BOLD ;
BORDER 

BUTTON toolbarbtn4;
CAPTION "Save As" ;
ON CLICK mysave()  ;
TOOLTIP "" ;
SEPARATOR 

BUTTON toolbarbtn1;
CAPTION "Go" ;
ON CLICK mygo()  ;
TOOLTIP "" ;
SEPARATOR 

BUTTON toolbarbtn7;
CAPTION "PWCT Forum" ;
ON CLICK myforum()  ;
TOOLTIP "" ;
SEPARATOR 

BUTTON toolbarbtn8;
CAPTION "TaalmNashet" ;
ON CLICK mynashet()  ;
TOOLTIP "" ;
SEPARATOR 

BUTTON toolbarbtn6;
CAPTION "Google" ;
ON CLICK mygoogle()  ;
TOOLTIP "" ;
SEPARATOR 

BUTTON toolbarbtn5;
CAPTION "Minimize" ;
ON CLICK webmin()  ;
TOOLTIP "" ;
SEPARATOR 

BUTTON toolbarbtn2;
CAPTION "Refresh" ;
ON CLICK myonwebref()  ;
TOOLTIP "" ;
SEPARATOR 

BUTTON toolbarbtn3;
CAPTION "Exit" ;
ON CLICK webexit()  ;
TOOLTIP "" ;
SEPARATOR 

END TOOLBAR

@ 98 ,937 TEXTBOX text2web;
HEIGHT 4 ;
WIDTH 5 ;
VALUE "http://www.google.com.eg/" ;
BOLD ;
TOOLTIP "«œŒ· —«»ÿ „œ—” ﬂ Â‰«" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,206} ;
INPUTMASK ""
@ 38 ,542 BUTTONEX btn3web;
CAPTION "Google »ÕÀ ›Ì";
FONTCOLOR {0,255,0};
BACKCOLOR {0,128,64};
PICTURE "mrabn/x.BMP";
ON CLICK mygoogle()  ;
WIDTH 150 HEIGHT 35 ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "«÷€ÿ Â‰« ··»ÕÀ"
@ 98 ,937 TEXTBOX text3web;
HEIGHT 4 ;
WIDTH 5 ;
VALUE "http://doublesvsoop.sourceforge.net/forum/" ;
BOLD ;
TOOLTIP "«œŒ· —«»ÿ „œ—” ﬂ Â‰«" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,206} ;
INPUTMASK ""
@ 43 ,141 LABEL lbl1web ;
VALUE "÷⁄ —«»ÿ „œ—” ﬂ .....(ﬂ«„·«).....Â‰«" ;
WIDTH 364 ;
HEIGHT 31 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
END WINDOW

web.Center ( )
web.Maximize ( )
ACTIVATE WINDOW web
EndIF

Return Nil
Proc mygo
abn := web.text1web.Value
abn := oactivex:OOLE:navigate ( abn )
Return Nil
Proc mysave
mystr := oactivex:oOle
PutFile := PutFile ( {{"Html","*.htm"}} , ;
" Save Your Web Page   ...(By Mr AbOeLsOuD) " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Do You Want To Overwrite This WebPage","PWCT Team Information")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc mygoogle
abng := web.text2web.Value
abng := oactivex:OOLE:navigate ( abng )
Return Nil
Proc myforum
abnf := web.text3web.Value
abnf := oactivex:OOLE:navigate ( abnf )
Return Nil
Proc mynashet
abnn := web.text4web.Value
abnn := oactivex:OOLE:navigate ( abnn )
Return Nil
Proc myonweb
oactivex:nWidth := web.width - 30
oactivex:nHeight := web.height - 50
oactivex:Refresh ( )
Return Nil
Proc webexit
web.Release ( )
win1.Restore ( )
Return Nil
Proc myonwebref
oactivex:Refresh ( )
Return Nil
Proc webmin
web.Minimize ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_CHEMI1STDISNO1
START DOUBLES
Return
*-------------------------------------------------------------------*
