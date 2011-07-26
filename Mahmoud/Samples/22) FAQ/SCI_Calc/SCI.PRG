*---------------------------------------------------------------------------*
* Time : 02:44:36    Date : 07/27/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
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


Resistance R_SCI_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SCI_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 150 ,360 ;
WIDTH 629 ;
HEIGHT 568 ;
ICON "SMILE.ico" ;
TITLE "‘—ﬂ… ﬁ‰«… «·”ÊÌ” ·· √„Ì‰ - By Borham" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} ;
NOTIFYICON "SMILE.ico" 

@ 29 ,-2 IMAGE sci2;
PICTURE "SCI2.jpg";
WHITEBACKGROUND ;
WIDTH 215 HEIGHT 459
DEFINE TAB systems;
AT 19 ,215;
WIDTH 406;
HEIGHT 492;
FONT "MS Sans Serif" SIZE 9 ;
TOOLTIP ""
PAGE "«· ‹‹‹√„Ì‹‹‹‰ «·„Œ‹‹ ·ÿ"
@ 23 ,81 LABEL p1l1 ;
VALUE "«· ‹‹‹‹‹‹√„Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‰ «·„Œ ‹‹‹‹‹‹‹‹‹‹‹‹·‹‹ÿ" ;
WIDTH 250 ;
HEIGHT 21 ;
FONT "Microsoft Sans Serif" SIZE 11  ;
BACKCOLOR {248,247,199} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,128,0}
@ 87 ,210 COMBOBOX p1periodlst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"    ¯10 ”‰Ê« ","    ¯15 ”‰‹‹‹‹…","    ¯20 ”‰‹‹‹‹…","    ¯25 ”‰‹‹‹‹…"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,301 LABEL p1pertxt ;
VALUE "„œ… «· √„Ì‹‹‹‰" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 87 ,30 COMBOBOX p1agelst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,121 LABEL p1agetxt ;
VALUE "”‹‹‹‹‰ «·⁄„‹‹Ì·" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 157 ,120 COMBOBOX p1paylst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"     ”‹‹‹‹‹‹‹‰‹‹ÊÌ","     ‰’› ”‰‹ÊÌ","     —»‹‹⁄ ”‰‹ÊÌ"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 161 ,211 LABEL p1paytxt ;
VALUE "ÿ—Ì‹ﬁ… «·œ›‹⁄" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 252 ,275 LABEL p1insuretxt ;
VALUE "„»‹‹‹·€ «· ‹‹‹√„Ì‹‰" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 245 ,80 TEXTBOX p1insurebox;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 292 ,275 LABEL p1installtxt ;
VALUE "ﬁÌ„‹‹‹‹… «·ﬁ”‹‹‹‹‹ÿ" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 285 ,80 TEXTBOX p1installbox;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 332 ,275 LABEL p1Profitstxt ;
VALUE "„ Ê”‹‹‹ÿ «·«—»‹«Õ" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 325 ,80 TEXTBOX p1profitsbox;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
STRIKEOUT ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
NOTABSTOP ;
FONTCOLOR {68,167,172} 

@ 372 ,275 LABEL p1totaltxt ;
VALUE "«·«—»‹‹«Õ + «·„»·€" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 365 ,80 TEXTBOX p1totalbox;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
STRIKEOUT ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
NOTABSTOP ;
FONTCOLOR {255,0,0} 

@ 452 ,7 BUTTONEX p1calcbtn;
CAPTION "«Õ”‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹»";
WIDTH 370 HEIGHT 30 ;
FONT "MS Sans Serif" SIZE 9 ;
TOOLTIP ""
END PAGE
PAGE "«·ÊÀ‹Ì‹ﬁ‹‹… «·—»‹‹«⁄Ì‹‹…"
@ 23 ,81 LABEL p2l1 ;
VALUE "«·ÊÀÌ‹ﬁ‹‹‹‹‹‹‹‹… «·—»‹‹«⁄Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹Â" ;
WIDTH 250 ;
HEIGHT 21 ;
FONT "Microsoft Sans Serif" SIZE 11  ;
BACKCOLOR {248,247,199} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,128,0}
@ 87 ,210 COMBOBOX p2periodlst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"    ¯20 ”‰‹‹‹‹…"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,301 LABEL p2pertxt ;
VALUE "„œ… «· √„Ì‹‹‹‰" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 87 ,30 COMBOBOX p2agelst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,121 LABEL p2agetxt ;
VALUE "”‹‹‹‹‰ «·⁄„‹‹Ì·" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 157 ,120 COMBOBOX p2paylst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"     ”‹‹‹‹‹‹‹‰‹‹ÊÌ","     ‰’› ”‰‹ÊÌ","     —»‹‹⁄ ”‰‹ÊÌ"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 161 ,211 LABEL p2paytxt ;
VALUE "ÿ—Ì‹ﬁ… «·œ›‹⁄" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 252 ,275 LABEL p2insuretxt ;
VALUE "„»‹‹‹·€ «· ‹‹‹√„Ì‹‰" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 245 ,180 TEXTBOX p2insurebox;
HEIGHT 30 ;
WIDTH 100 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 252 ,109 LABEL p2x05txt ;
VALUE "ﬂ‹· 5 ”‰Ê« " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 245 ,40 TEXTBOX p2x05box;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 292 ,275 LABEL p2installtxt ;
VALUE "ﬁÌ„‹‹‹‹… «·ﬁ”‹‹‹‹‹ÿ" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 285 ,40 TEXTBOX p2installbox;
HEIGHT 30 ;
WIDTH 240 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 332 ,275 LABEL p2Profitstxt ;
VALUE "„ Ê”‹‹‹ÿ «·«—»‹«Õ" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 325 ,40 TEXTBOX p2profitsbox;
HEIGHT 30 ;
WIDTH 240 ;
READONLY ;
STRIKEOUT ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
NOTABSTOP ;
FONTCOLOR {68,167,172} 

@ 372 ,275 LABEL p2totaltxt ;
VALUE "«·«—»‹‹«Õ + «·„»·€" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 365 ,40 TEXTBOX p2totalbox;
HEIGHT 30 ;
WIDTH 240 ;
READONLY ;
STRIKEOUT ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
NOTABSTOP ;
FONTCOLOR {255,0,0} 

@ 452 ,7 BUTTONEX p2calcbtn;
CAPTION "«Õ”‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹»";
ON CLICK p2calc()  ;
WIDTH 370 HEIGHT 30 ;
FONT "MS Sans serif" SIZE 9 ;
TOOLTIP ""
END PAGE
PAGE "«·ÊÀ‹Ì‹ﬁ‹‹… «·À‰‹«∆‹Ì‹‹‹…"
@ 23 ,81 LABEL p3l1 ;
VALUE "«·ÊÀÌ‹ﬁ‹‹‹‹‹‹‹‹… «·À‰‹‹‹‹‹«∆Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹Â" ;
WIDTH 250 ;
HEIGHT 21 ;
FONT "Microsoft Sans Serif" SIZE 11  ;
BACKCOLOR {248,247,199} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,128,0}
@ 87 ,210 COMBOBOX p3periodlst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"    ¯20 ”‰‹‹‹‹…"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,301 LABEL p3pertxt ;
VALUE "„œ… «· √„Ì‹‹‹‰" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 87 ,30 COMBOBOX p3agelst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,121 LABEL p3agetxt ;
VALUE "”‹‹‹‹‰ «·⁄„‹‹Ì·" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 157 ,120 COMBOBOX p3paylst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"     ”‹‹‹‹‹‹‹‰‹‹ÊÌ","     ‰’› ”‰‹ÊÌ","     —»‹‹⁄ ”‰‹ÊÌ"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 161 ,211 LABEL p3paytxt ;
VALUE "ÿ—Ì‹ﬁ… «·œ›‹⁄" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 252 ,275 LABEL p3insuretxt ;
VALUE "„»‹‹‹·€ «· ‹‹‹√„Ì‹‰" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 245 ,180 TEXTBOX p3insurebox;
HEIGHT 30 ;
WIDTH 100 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 252 ,109 LABEL p3x10txt ;
VALUE "ﬂ‹· 10 ”‰Ê« " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 245 ,40 TEXTBOX p3x10box;
HEIGHT 30 ;
WIDTH 70 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 292 ,275 LABEL p3installtxt ;
VALUE "ﬁÌ„‹‹‹‹… «·ﬁ”‹‹‹‹‹ÿ" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 285 ,40 TEXTBOX p3installbox;
HEIGHT 30 ;
WIDTH 240 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 332 ,275 LABEL p3Profitstxt ;
VALUE "„ Ê”‹‹‹ÿ «·«—»‹«Õ" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 325 ,40 TEXTBOX p3profitsbox;
HEIGHT 30 ;
WIDTH 240 ;
READONLY ;
STRIKEOUT ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
NOTABSTOP ;
FONTCOLOR {68,167,172} 

@ 372 ,275 LABEL p3totaltxt ;
VALUE "«·«—»‹‹«Õ + «·„»·€" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 365 ,40 TEXTBOX p3totalbox;
HEIGHT 30 ;
WIDTH 240 ;
READONLY ;
STRIKEOUT ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
NOTABSTOP ;
FONTCOLOR {255,0,0} 

@ 452 ,7 BUTTONEX p3calcbtn;
CAPTION "«Õ”‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹»";
WIDTH 370 HEIGHT 30 ;
FONT "MS Sans Serif" SIZE 9 ;
TOOLTIP ""
END PAGE
PAGE "ÊÀÌ‹‹‹ﬁ‹‹… «·„⁄‹‹‹«‘"
@ 23 ,81 LABEL p4l1 ;
VALUE "ÊÀÌ‹‹‹‹‹‹‹‹‹‹‹ﬁ‹‹‹… «·„‹‹‹‹‹‹‹‹‹‹‹⁄‹‹‹‹‹‹‹‹‹«‘" ;
WIDTH 250 ;
HEIGHT 21 ;
FONT "Microsoft Sans Serif" SIZE 11  ;
BACKCOLOR {248,247,199} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,128,0}
@ 87 ,210 COMBOBOX p4periodlst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"    ¯10 ”‰Ê« ","    ¯15 ”‰‹‹‹‹…","    ¯20 ”‰‹‹‹‹…","    ¯25 ”‰‹‹‹‹…"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,301 LABEL p4pertxt ;
VALUE "„œ… «· √„Ì‹‹‹‰" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 87 ,30 COMBOBOX p4agelst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,121 LABEL p4agetxt ;
VALUE "”‹‹‹‹‰ «·⁄„‹‹Ì·" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 157 ,120 COMBOBOX p4paylst;
WIDTH 100 ;
HEIGHT 150;
ITEMS {"     ”‹‹‹‹‹‹‹‰‹‹ÊÌ","     ‰’› ”‰‹ÊÌ","     —»‹‹⁄ ”‰‹ÊÌ"} ;
FONT "MS Sans Serif" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 161 ,211 LABEL p4paytxt ;
VALUE "ÿ—Ì‹ﬁ… «·œ›‹⁄" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 252 ,275 LABEL p4insuretxt ;
VALUE "„»‹‹‹·€ «· ‹‹‹√„Ì‹‰" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 245 ,80 TEXTBOX p4insurebox;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 292 ,275 LABEL p4installtxt ;
VALUE "ﬁÌ„‹‹‹‹… «·ﬁ”‹‹‹‹‹ÿ" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 285 ,80 TEXTBOX p4installbox;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {68,167,172} 

@ 332 ,275 LABEL p4Profitstxt ;
VALUE "„ Ê”‹‹‹ÿ «·«—»‹«Õ" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 325 ,80 TEXTBOX p4profitsbox;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
STRIKEOUT ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
NOTABSTOP ;
FONTCOLOR {68,167,172} 

@ 372 ,275 LABEL p4totaltxt ;
VALUE "«·«—»‹‹«Õ + «·„»·€" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "MS Sans Serif" SIZE 9  ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 365 ,80 TEXTBOX p4totalbox;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
STRIKEOUT ;
BACKCOLOR {192,192,192} ;
RIGHTALIGN ;
NOTABSTOP ;
FONTCOLOR {255,0,0} 

@ 452 ,7 BUTTONEX p4calcbtn;
CAPTION "«Õ”‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹»";
WIDTH 370 HEIGHT 30 ;
FONT "MS Sans serif" SIZE 9 ;
TOOLTIP ""
END PAGE
END TAB
@ 0 ,-4 LABEL bnr ;
VALUE "‘‹‹‹‹—ﬂ… ﬁ‰‹‹‹«… «·”ÊÌ‹‹‹” ·· √„Ì‹‹‰ Ê«·«” À„‹‹‹«—" ;
WIDTH 630 ;
HEIGHT 18 ;
FONT "MS Sans Serif" SIZE 10  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
Public offers
offers := TActiveX():New( "Win1", "anime.swf" , 308 , 5 , 200 , 177)
offers:Load()
DEFINE STATUSBAR 

DATE

CLOCK

END STATUSBAR

@ 495 ,-2 LABEL designby ;
VALUE " Copyrights (C) Borham B. El-Makkawi" ;
WIDTH 213 ;
HEIGHT 15 ;
FONT "Comic Sans MS" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,64}
@ 517 ,378 PROGRESSBAR Progress1;
RANGE 0 , 100 ;
WIDTH 109 ;
HEIGHT 15 ;
SMOOTH ;
BACKCOLOR {255,255,255} ;
FORECOLOR {0,0,0} ;
TOOLTIP ""
END WINDOW

win1.p1totalbox.Enabled := .f.
win1.p1profitsbox.Enabled := .f.
win1.p2totalbox.Enabled := .f.
win1.p3totalbox.Enabled := .f.
win1.p4totalbox.Enabled := .f.
win1.p2profitsbox.Enabled := .f.
win1.p3profitsbox.Enabled := .f.
win1.p4profitsbox.Enabled := .f.
win1.p2agelst.Value := 1
win1.p1agelst.Value := 1
win1.p3agelst.Value := 1
win1.p4agelst.Value := 1
win1.p1periodlst.Value := 1
win1.p2periodlst.Value := 1
win1.p3periodlst.Value := 1
win1.p4periodlst.Value := 1
win1.p1paylst.Value := 1
win1.p2paylst.Value := 1
win1.p3paylst.Value := 1
win1.p4paylst.Value := 1
win1.p2x05box.Enabled := .f.
win1.p3x10box.Enabled := .f.
ACTIVATE WINDOW win1
EndIF

Proc p2calc
IF win1.p2agelst.value = 1 .or. win1.p2agelst.value = 2
p2rate := 54
ENDIF
IF win1.p2agelst.value = 3 .or. win1.p2agelst.value = 4
p2rate := 55
ENDIF
p2install := win1.p2installbox.Value
p2install = VAL ( p2install )
result := (p2install*12/p2rate)*1000
result = STR ( result )
result = ALLTRIM ( result )
win1.p2insurebox.Value := result
Return Nil


End Of Resistance

INIT PROCEDURE Init_SCI
START DOUBLES
Return
*-------------------------------------------------------------------*
