*---------------------------------------------------------------------------*
* Time : 03:37:47    Date : 06/01/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.5 (Speed) [2006-2010]  
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


Resistance R_MR_ABOELSOUD_3SEC_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MR_ABOELSOUD_3SEC_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 646 ;
HEIGHT 496 ;
ON INIT myinit()  ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã «·›’· «·√Ê· ﬂÂ—»Ì… ...... ··’› «·À«·À «·À«‰ÊÌ" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "CUR/ABN.ANI" ;
BACKCOLOR {236,233,216} ;
FONT "Tahoma" SIZE 12 ;
NOTIFYICON "ico/abn.ico" ;
NOTIFYTOOLTIP "»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ«·—ƒ›" 

win1.Center ( )
DEFINE TAB Tab1;
AT 13 ,7;
WIDTH 620;
HEIGHT 321;
FONT "Tahoma" SIZE 9 ;
BOLD ;
FLAT ;
TOOLTIP ""
PAGE "ﬁÊ«‰Ì‹‹‰"
@ 27 ,2 IMAGE imageeqb;
PICTURE "back/eq2/eqb.jpg";
STRETCH ;
WIDTH 613 HEIGHT 285
@ 81 ,52 FRAME Frameeq1;
WIDTH 410 ;
HEIGHT 205 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 188 ,63 IMAGE image1;
PICTURE "back/bbut.jpg";
STRETCH ;
WIDTH 161 HEIGHT 87
@ 186 ,275 IMAGE image4;
PICTURE "back/bbut.jpg";
STRETCH ;
WIDTH 162 HEIGHT 86
@ 95 ,276 IMAGE image2;
PICTURE "back/bbut.jpg";
STRETCH ;
WIDTH 162 HEIGHT 86
@ 95 ,63 IMAGE image3;
PICTURE "back/bbut.jpg";
STRETCH ;
WIDTH 162 HEIGHT 86
@ 124 ,303 BUTTONEX btneq1;
CAPTION "ﬁÊ«‰Ì‰ «·„ﬁ«Ê„« ";
FONTCOLOR {206,0,103};
PICTURE "back/eq1.BMP";
ON CLICK eq1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 124 ,92 BUTTONEX btneq2;
CAPTION " Ì‹‹‹«— «·›—⁄";
PICTURE "back/eq1.BMP";
ON CLICK eq2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 216 ,303 BUTTONEX btneq4;
CAPTION "«·ÃÂœ Ê«·ﬁœ—…";
FONTCOLOR {0,0,221};
PICTURE "back/eq1.BMP";
ON CLICK eq4()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 216 ,92 BUTTONEX btneq3;
CAPTION " Ê’Ì· «·»ÿ«—Ì…";
FONTCOLOR {185,92,0};
PICTURE "back/eq1.BMP";
ON CLICK eq3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 33 ,46 LABEL lbleq1 ;
VALUE "√Â„ ﬁÊ«‰Ì‰ «·›’· «·√Ê· ﬂÂ—»Ì‹‹‹‹‹‹‹‹…" ;
WIDTH 497 ;
HEIGHT 33 ;
FONT "Courier New" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,255,128}
@ 82 ,488 IMAGE imagebt1;
PICTURE "back/bt.jpg";
STRETCH ;
WIDTH 61 HEIGHT 206
END PAGE
PAGE "⁄‰ «·„»—„Ã"
@ 27 ,2 IMAGE imageabn2;
PICTURE "HELP/HELPB.jpg";
STRETCH ;
WIDTH 613 HEIGHT 285
@ 45 ,45 IMAGE imageabn1;
PICTURE "back/abn.jpg";
STRETCH ;
WIDTH 90 HEIGHT 98
@ 267 ,55 BUTTONEX btnABN1;
CAPTION "‘—Õ «·»—‰«„Ã";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK explane()  ;
WIDTH 100 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 267 ,257 BUTTONEX btnABN2;
CAPTION "«Âœ«¡";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK dedecate()  ;
WIDTH 100 HEIGHT 31 ;
FONT "arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 267 ,358 BUTTONEX btnABN3;
CAPTION "ﬂ·„… ‘ﬂ—";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK merci()  ;
WIDTH 98 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 224 ,263 BUTTONEX btnABN4;
CAPTION "«·« ’«· » √/«»Ê«·”⁄Êœ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK contactabn()  ;
WIDTH 193 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 224 ,55 BUTTONEX btnABN5;
CAPTION "(PWCT) «·« ’«· »›—Ìﬁ  ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK teamcontact()  ;
WIDTH 193 HEIGHT 36 ;
FONT "arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 195 ,41 LABEL lblab8 ;
VALUE "Egypt - Sharqia - Zagazig" ;
WIDTH 223 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {198,99,0}
@ 172 ,138 LABEL lblab7 ;
VALUE "„”∆Ê· «· ⁄·„ «·‰‘ÿ »«œ«—… ‘—ﬁ «·“ﬁ«“Ìﬁ" ;
WIDTH 251 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {111,0,221}
@ 144 ,68 LABEL lblab6 ;
VALUE "PWCT" ;
WIDTH 69 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,0}
@ 92 ,209 LABEL lblab5 ;
VALUE "√/√»Ê«·”⁄Êœ ⁄»œ«·—ƒ›" ;
WIDTH 143 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {196,0,196}
@ 146 ,153 LABEL lblab4 ;
VALUE "⁄÷Ê ›—Ìﬁ  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ " ;
WIDTH 218 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {111,0,221}
@ 45 ,156 LABEL lblab3 ;
VALUE "»—„Ã… Ê ‰›Ì–" ;
WIDTH 252 ;
HEIGHT 40 ;
FONT "Courier New" SIZE 28  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {89,0,179}
@ 114 ,232 LABEL lblab2 ;
VALUE "„œ—” ›Ì“Ì«¡" ;
WIDTH 89 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {111,0,221}
@ 198 ,265 LABEL lblab1 ;
VALUE "Mobile : 0105234960" ;
WIDTH 193 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,128,255}
@ 267 ,156 BUTTONEX btnABN1books;
CAPTION "ﬂ » ﬁÌ„…";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK phpwctbooks()  ;
WIDTH 100 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP "ﬂ » Êœ—Ê” ﬁÌ„… Ãœ« "
END PAGE
PAGE "¬·… Õ«”»…"
@ 25 ,2 IMAGE imagecalcback1;
PICTURE "calc/calcb.jpg";
STRETCH ;
WIDTH 613 HEIGHT 285
@ 118 ,472 FRAME Framecalc1;
WIDTH 121 ;
HEIGHT 186 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {128,0,255} 

@ 244 ,20 FRAME Framecalc2;
WIDTH 444 ;
HEIGHT 62 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {128,0,255} 

@ 266 ,484 BUTTONEX btncalc1;
CAPTION "¬·… Õ«”»… 3";
FONTCOLOR {128,0,128};
PICTURE "back/calc1.BMP";
ON CLICK tc1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 213 ,484 BUTTONEX btncalc2;
CAPTION "¬·… Õ«”»… 2";
FONTCOLOR {128,0,255};
PICTURE "back/calc2.BMP";
ON CLICK tc5()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 160 ,484 BUTTONEX btncalc3;
CAPTION "¬·… Õ«”»… ﬂ«”ÌÊ";
FONTCOLOR {0,0,255};
PICTURE "back/calc3.BMP";
ON CLICK tc6()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 25 ,176 LABEL lblcalc4 ;
VALUE "¬·… Õ«”‹»… —Ê⁄…" ;
WIDTH 221 ;
HEIGHT 44 ;
FONT "Arial" SIZE 28  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,128,64}
@ 127 ,504 LABEL lblcalc3 ;
VALUE "¬·«  Õ«”»…" ;
WIDTH 78 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {98,0,196}
@ 242 ,321 LABEL lblcalc2 ;
VALUE "√œÊ«  ﬁÌ«” «·“„‰" ;
WIDTH 122 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
@ 266 ,39 BUTTONEX btncalc4;
CAPTION "Stop Watch";
FONTCOLOR {128,0,128};
PICTURE "back/calc1.BMP";
ON CLICK tc2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP "Free Gift To You From Mr AbOeLsOuD"
@ 266 ,144 BUTTONEX btncalc5;
CAPTION "”«⁄… —Ê⁄…";
FONTCOLOR {128,0,128};
PICTURE "back/calc1.BMP";
ON CLICK tc7()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 18 ;
BOLD ;
TOOLTIP "Free Gift To You From Mr AbOeLsOuD"
@ 266 ,249 BUTTONEX btncalc6;
CAPTION "”«⁄… —ﬁ„Ì…";
FONTCOLOR {128,0,128};
PICTURE "back/calc1.BMP";
ON CLICK winclock()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 18 ;
BOLD ;
TOOLTIP "Free Gift To You From Mr AbOeLsOuD"
@ 266 ,354 BUTTONEX btncalc7;
CAPTION "”«⁄… ⁄ﬁ—»";
FONTCOLOR {128,0,128};
PICTURE "back/calc1.BMP";
ON CLICK tc3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 18 ;
BOLD ;
TOOLTIP "Free Gift To You From Mr AbOeLsOuD"
END PAGE
PAGE "»—«„Ã Â«„…"
@ 27 ,2 IMAGE imageprog2;
PICTURE "prog/prog.jpg";
STRETCH ;
WIDTH 613 HEIGHT 285
@ 232 ,62 FRAME Frameprog5;
WIDTH 150 ;
HEIGHT 70 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {255,0,128} ;
FONTCOLOR {0,0,0} 

@ 95 ,222 FRAME Frameprog2;
WIDTH 149 ;
HEIGHT 207 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {255,0,128} ;
FONTCOLOR {0,0,0} 

@ 95 ,62 FRAME Frameprog3;
WIDTH 150 ;
HEIGHT 131 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {255,0,128} ;
FONTCOLOR {0,0,0} 

@ 95 ,377 FRAME Frameprog4;
WIDTH 159 ;
HEIGHT 207 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {255,0,128} ;
FONTCOLOR {0,0,0} 

@ 263 ,401 BUTTONEX btnprog1;
CAPTION "Real 11";
FONTCOLOR {255,128,0};
PICTURE "back/prog.BMP";
ON CLICK real()  ;
WIDTH 99 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 109 ,401 BUTTONEX btnprog12;
CAPTION "Jet Audio";
FONTCOLOR {255,128,0};
PICTURE "back/prog.BMP";
ON CLICK jet()  ;
WIDTH 99 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ · ‘€Ì· «·»—‰«„Ã"
@ 186 ,401 BUTTONEX btnprog3;
CAPTION "Winamp";
FONTCOLOR {255,128,0};
PICTURE "back/prog.BMP";
ON CLICK winamp()  ;
WIDTH 99 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ · ‘€Ì· «·»—‰«„Ã"
@ 109 ,75 BUTTONEX btnprog4;
CAPTION "Nero 8 ";
FONTCOLOR {0,98,0};
PICTURE "back/prog.BMP";
ON CLICK Nero()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ · ‘€Ì· «·»—‰«„Ã"
@ 264 ,235 BUTTONEX btnprog5;
CAPTION "TrueTransparency";
FONTCOLOR {105,0,210};
PICTURE "back/prog.BMP";
ON CLICK Truet()  ;
WIDTH 124 HEIGHT 31 ;
FONT "Arial" SIZE 11 ;
TOOLTIP "«÷€ÿ · ‘€Ì· «·»—‰«„Ã"
@ 186 ,75 BUTTONEX btnprog6;
CAPTION "Ultra Iso";
FONTCOLOR {0,98,0};
ON CLICK uiso()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ · ‘€Ì· «·»—‰«„Ã"
@ 263 ,75 BUTTONEX btnprog8;
CAPTION "PDF Reader";
FONTCOLOR {128,0,64};
PICTURE "back/prog.BMP";
ON CLICK foxit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP "«÷€ÿ · ‘€Ì· «·»—‰«„Ã"
@ 73 ,227 LABEL lblprog2 ;
VALUE "System" ;
WIDTH 73 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 110 ,235 BUTTONEX btnprog9;
CAPTION "Winrar";
FONTCOLOR {105,0,210};
PICTURE "back/prog.BMP";
ON CLICK Winrar()  ;
WIDTH 124 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ · ‘€Ì· «·»—‰«„Ã"
@ 187 ,235 BUTTONEX btnprog7;
CAPTION "C cleaner";
FONTCOLOR {105,0,210};
PICTURE "back/prog.BMP";
ON CLICK ccleaner()  ;
WIDTH 124 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ · ‘€Ì· «·»—‰«„Ã"
@ 73 ,62 LABEL lblprog1 ;
VALUE "CD/DVD" ;
WIDTH 81 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 72 ,379 LABEL lblprog3 ;
VALUE "Media" ;
WIDTH 55 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 26 ,139 LABEL lblprog4 ;
VALUE "√Â„ «·»—«„Ã «· Ì ÌÕ «ÃÂ« ÃÂ«“ﬂ" ;
WIDTH 309 ;
HEIGHT 35 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,255,0}
@ 229 ,60 LABEL lblprog5 ;
VALUE "Library" ;
WIDTH 67 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {49,98,98}
END PAGE
PAGE " ÕÊÌ·« "
@ 27 ,2 IMAGE imageconvertorb;
PICTURE "prog/conv/conv.jpg";
STRETCH ;
WIDTH 613 HEIGHT 285
@ 43 ,56 IMAGE imageconvback1;
PICTURE "back/cback.jpg";
STRETCH ;
WIDTH 1 HEIGHT 7
@ 77 ,71 IMAGE imageconv1;
PICTURE "back/c.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 77 ,316 IMAGE imageconv2;
PICTURE "back/c.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 196 ,195 IMAGE imageconv3;
PICTURE "back/c.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 220 ,223 BUTTONEX btnconv1;
CAPTION "Convertor 3";
FONTCOLOR {255,128,0};
PICTURE "back/conv.BMP";
ON CLICK conv1()  ;
WIDTH 120 HEIGHT 40 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 100 ,98 BUTTONEX btnconv2;
CAPTION "Convertor 2";
FONTCOLOR {255,0,255};
PICTURE "back/conv.BMP";
ON CLICK conv2()  ;
WIDTH 120 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 100 ,345 BUTTONEX btncon3;
CAPTION "Convertor 1";
PICTURE "back/conv.BMP";
ON CLICK conv3()  ;
WIDTH 120 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 32 ,56 LABEL lblconv1 ;
VALUE "√Â‹‹‹‹„ „Õ‹‹‹‹Ê·«  «·ﬁÌ‹‹‹‹‹‹«”" ;
WIDTH 472 ;
HEIGHT 37 ;
FONT "Courier New" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
END PAGE
PAGE "⁄·«ﬁ«  »Ì«‰Ì…"
@ 27 ,2 IMAGE imageexdrb;
PICTURE "exgdr/exdrb.jpg";
STRETCH ;
WIDTH 613 HEIGHT 285
@ 187 ,209 IMAGE imageG1;
PICTURE "back/G.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 77 ,22 IMAGE imageG2;
PICTURE "back/G.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 187 ,20 IMAGE imageg3;
PICTURE "back/g.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 77 ,209 IMAGE imageg4;
PICTURE "back/g.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 187 ,397 IMAGE imageg5;
PICTURE "back/g.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 77 ,397 IMAGE imageg6;
PICTURE "back/g.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 217 ,48 BUTTONEX btnexg1;
CAPTION "A & R ⁄·«ﬁ… »Ì‰";
FONTCOLOR {0,0,255};
ON CLICK pic1()  ;
WIDTH 116 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 217 ,236 BUTTONEX btnexg2;
CAPTION "r2 & R ⁄·«ﬁ… »Ì‰";
FONTCOLOR {0,0,255};
ON CLICK pic2()  ;
WIDTH 120 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 217 ,423 BUTTONEX btnexg3;
CAPTION "I & V ⁄·«ﬁ… »Ì‰";
FONTCOLOR {0,0,255};
ON CLICK pic3()  ;
WIDTH 120 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 107 ,236 BUTTONEX btnexg4;
CAPTION "L & R ⁄·«ﬁ… »Ì‰";
FONTCOLOR {0,0,255};
ON CLICK pic4()  ;
WIDTH 120 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 106 ,423 BUTTONEX btnexg5;
CAPTION "t & Q⁄·«ﬁ… »Ì‰";
FONTCOLOR {0,0,255};
ON CLICK pic5()  ;
WIDTH 120 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 107 ,48 BUTTONEX btnexg6;
CAPTION "Q & W ⁄·«ﬁ… »Ì‰";
FONTCOLOR {0,0,255};
ON CLICK pic6()  ;
WIDTH 120 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 42 ,40 LABEL lblgg1 ;
VALUE "√Â„ «·⁄·«ﬁ‹‹‹‹‹‹«  «·»Ì‹‹‹«‰Ì…" ;
WIDTH 475 ;
HEIGHT 30 ;
FONT "Courier New" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,128}
END PAGE
PAGE "„”«∆· »Ì«‰Ì…"
@ 27 ,2 IMAGE imageexdb;
PICTURE "ex/exd.jpg";
STRETCH ;
WIDTH 613 HEIGHT 285
@ 94 ,82 IMAGE imageexd1;
PICTURE "back/exd.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 199 ,173 IMAGE imageexd2;
PICTURE "back/exd.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 94 ,277 IMAGE imageexd3;
PICTURE "back/exd.jpg";
STRETCH ;
WIDTH 180 HEIGHT 87
@ 117 ,110 BUTTONEX btnex1g;
CAPTION "„À«· »Ì«‰Ì2";
FONTCOLOR {0,120,240};
ON CLICK exg1()  ;
WIDTH 120 HEIGHT 40 ;
FONT "arial" SIZE 20 ;
TOOLTIP ""
@ 222 ,202 BUTTONEX btnex2g;
CAPTION "„À«· »Ì«‰Ì3";
FONTCOLOR {0,120,240};
ON CLICK exg2()  ;
WIDTH 120 HEIGHT 40 ;
FONT "arial" SIZE 20 ;
TOOLTIP ""
@ 117 ,307 BUTTONEX btnex3g;
CAPTION "„À«· »Ì«‰Ì1";
FONTCOLOR {0,120,240};
ON CLICK exg3()  ;
WIDTH 120 HEIGHT 40 ;
FONT "arial" SIZE 20 ;
TOOLTIP ""
@ 39 ,61 LABEL lblexbd ;
VALUE "√„À·… »Ì«‰Ì…€Ì— „Õ·Ê·… ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 455 ;
HEIGHT 36 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,0,0}
END PAGE
PAGE "„”«∆·"
@ 27 ,2 IMAGE imageex;
PICTURE "ex/ex.jpg";
STRETCH ;
WIDTH 613 HEIGHT 285
@ 38 ,103 LABEL lblexb ;
VALUE "√„À·… €Ì— „Õ·Ê·… ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 409 ;
HEIGHT 39 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {128,255,255}
@ 83 ,94 FRAME Frameexb;
WIDTH 424 ;
HEIGHT 209 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 

@ 233 ,103 BUTTONEX btnex1;
CAPTION "„À«·9";
FONTCOLOR {128,0,64};
PICTURE "FileName.BMP";
ON CLICK Ex1()  ;
WIDTH 107 HEIGHT 39 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
@ 159 ,103 BUTTONEX btnex2;
CAPTION "„À«·8";
FONTCOLOR {128,0,64};
PICTURE "FileName.BMP";
ON CLICK ex2()  ;
WIDTH 110 HEIGHT 40 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
@ 94 ,103 BUTTONEX btnex3;
CAPTION "„À«·7";
FONTCOLOR {128,0,64};
PICTURE "FileName.BMP";
ON CLICK ex3()  ;
WIDTH 110 HEIGHT 41 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
@ 233 ,253 BUTTONEX btnex4;
CAPTION "„À«·6";
FONTCOLOR {128,0,64};
PICTURE "FileName.BMP";
ON CLICK ex4()  ;
WIDTH 110 HEIGHT 40 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
@ 159 ,253 BUTTONEX btnex5;
CAPTION "„À«·5";
FONTCOLOR {128,0,64};
PICTURE "FileName.BMP";
ON CLICK ex5()  ;
WIDTH 110 HEIGHT 40 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
@ 94 ,253 BUTTONEX btnex6;
CAPTION "„À«·4";
FONTCOLOR {128,0,64};
PICTURE "FileName.BMP";
ON CLICK ex6()  ;
WIDTH 110 HEIGHT 40 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
@ 233 ,395 BUTTONEX btnex7;
CAPTION "„À«·3";
FONTCOLOR {128,0,64};
PICTURE "FileName.BMP";
ON CLICK ex7()  ;
WIDTH 110 HEIGHT 40 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
@ 159 ,396 BUTTONEX btnex8;
CAPTION "„À«· 2";
FONTCOLOR {128,0,64};
PICTURE "FileName.BMP";
ON CLICK ex8()  ;
WIDTH 110 HEIGHT 40 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
@ 94 ,396 BUTTONEX btnex9;
CAPTION "„À«·1";
FONTCOLOR {128,0,64};
PICTURE "FileName.BMP";
ON CLICK ex9()  ;
WIDTH 110 HEIGHT 40 ;
FONT "arial" SIZE 22 ;
TOOLTIP ""
END PAGE
PAGE "›ÌœÌ‹‹‹‹‹‹Ê"
@ 27 ,2 IMAGE imagevidb;
PICTURE "vid/vid.jpg";
STRETCH ;
WIDTH 613 HEIGHT 285
@ 83 ,83 FRAME Framevid1;
WIDTH 297 ;
HEIGHT 191 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 83 ,387 FRAME Framevid2;
WIDTH 126 ;
HEIGHT 191 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 113 ,246 BUTTONEX btnvid1;
CAPTION "›·«‘ 1";
FONTCOLOR {255,0,128};
PICTURE "back/vid.BMP";
ON CLICK vid1()  ;
WIDTH 110 HEIGHT 40 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 168 ,246 BUTTONEX btnvid2;
CAPTION "›·«‘ 2";
FONTCOLOR {255,0,128};
PICTURE "back/vid.BMP";
ON CLICK vid2()  ;
WIDTH 110 HEIGHT 40 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 224 ,246 BUTTONEX btnvid3;
CAPTION "›·«‘ 3";
FONTCOLOR {255,0,128};
PICTURE "back/vid.BMP";
ON CLICK vid3()  ;
WIDTH 110 HEIGHT 40 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 113 ,94 BUTTONEX btnvid4;
CAPTION "›·«‘ 4";
FONTCOLOR {255,0,128};
PICTURE "back/vid.BMP";
ON CLICK vid4()  ;
WIDTH 110 HEIGHT 40 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 168 ,94 BUTTONEX btnvid5;
CAPTION "›·«‘ 5";
FONTCOLOR {255,0,128};
PICTURE "back/vid.BMP";
ON CLICK vid5()  ;
WIDTH 110 HEIGHT 40 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 224 ,94 BUTTONEX btnvid6;
CAPTION "›·«‘ 6";
FONTCOLOR {255,0,128};
PICTURE "back/vid.BMP";
ON CLICK vid6()  ;
WIDTH 110 HEIGHT 40 ;
FONT "arial" SIZE 20 ;
TOOLTIP ""
@ 168 ,397 BUTTONEX btnvid7;
CAPTION "›ÌœÌ‹Ê 2";
FONTCOLOR {34,169,27};
PICTURE "back/vid.BMP";
ON CLICK vid7()  ;
WIDTH 110 HEIGHT 40 ;
FONT "Arial" SIZE 20 ;
BOLD ;
TOOLTIP ""
@ 113 ,397 BUTTONEX btnvid8;
CAPTION "›ÌœÌ‹Ê 1";
FONTCOLOR {34,169,27};
PICTURE "back/vid.BMP";
ON CLICK vid8()  ;
WIDTH 110 HEIGHT 40 ;
FONT "Arial" SIZE 20 ;
BOLD ;
TOOLTIP ""
@ 224 ,397 BUTTONEX btnvid9;
CAPTION "›ÌœÌ‹Ê 3";
FONTCOLOR {34,169,27};
PICTURE "back/vid.BMP";
ON CLICK vid9()  ;
WIDTH 110 HEIGHT 40 ;
FONT "Arial" SIZE 20 ;
BOLD ;
TOOLTIP ""
@ 85 ,317 LABEL lblvid1 ;
VALUE "›·«‘" ;
WIDTH 54 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 80 ,462 LABEL lblvid2 ;
VALUE "›ÌœÌÊ" ;
WIDTH 53 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 28 ,102 LABEL lblvidb ;
VALUE "›ÌœÌ‹‹‹Ê  Ê›‹‹·«‘  Ê ÷Ì‹‹ÕÌ" ;
WIDTH 278 ;
HEIGHT 42 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {102,0,204}
END PAGE
END TAB
DEFINE NOTIFY MENU OF win1
Set MenuStyle EXTENDED
MENUITEM "Show Window" Action show()
SEPARATOR
MENUITEM "Hide Window" Action hide()
SEPARATOR
MENUITEM "Designer" Action MSGINFO( "Designed By ..(Mr AbOeLsOuD)" )  IMAGE "BACK/ABN.BMP"
SEPARATOR
MENUITEM "PWCT Team" Action teamcontact()  IMAGE "mainmenu/m.bmp"
SEPARATOR
MENUITEM "Close Window" Action close()  IMAGE "mainmenu/x.bmp"
END MENU
DEFINE Context MENU OF win1
Set MenuStyle EXTENDED
MENUITEM "Hide Window" Action hide()
SEPARATOR
POPUP "Programms"
POPUP "Media"
MENUITEM "Jet Audio" Action jet()  IMAGE "mainmenu/j.bmp"
SEPARATOR
MENUITEM "Winamp 5.56" Action winamp()  IMAGE "mainmenu/winamp.bmp"
SEPARATOR
MENUITEM "Real 11" Action real()  IMAGE "mainmenu/real.bmp"
END POPUP
POPUP "System"
MENUITEM "Winrar 3.8" Action winrar()  IMAGE "mainmenu/winrar.bmp"
SEPARATOR
MENUITEM "Ccleaner" Action ccleaner()  IMAGE "mainmenu/cc.bmp"
SEPARATOR
MENUITEM "True Transparency" Action truet()  IMAGE "mainmenu/tt.bmp"
END POPUP
POPUP "CD/DVD"
MENUITEM "Nero 8" Action nero()  IMAGE "mainmenu/nero.bmp"
SEPARATOR
MENUITEM "Ultra Iso 9.2" Action uiso()  IMAGE "mainmenu/uiso.bmp"
END POPUP
POPUP "Library"
MENUITEM "PDF Reader" Action foxit()  IMAGE "MAINMENU/FOXIT.BMP"
SEPARATOR
MENUITEM "ﬂ » ﬁÌ„…" Action phpwctbooks()  IMAGE "MAINMENU/book.BMP"
END POPUP
END POPUP
POPUP "„”«∆·"
MENUITEM "„À«· 1" Action ex1()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 2" Action ex2()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 3" Action ex3()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 4" Action ex4()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 5" Action ex5()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 6" Action ex6()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 7" Action ex7()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 8" Action ex8()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 9" Action ex9()  IMAGE "mainmenu/ex.bmp"
END POPUP
POPUP "„”«∆· »Ì«‰Ì…"
MENUITEM "„À«· 1" Action exg1()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 2" Action exg2()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 3" Action exg3()  IMAGE "mainmenu/ex.bmp"
END POPUP
POPUP "⁄·«ﬁ«  »Ì«‰Ì…"
MENUITEM "Q - t" Action pic5()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "R - L" Action pic4()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "W - Q" Action pic6()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "V - I" Action pic3()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "R - r2" Action pic2()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "R - A" Action pic1()  IMAGE "MAINMENU/EX.BMP"
END POPUP
POPUP "Soft Music"
MENUITEM "1" Action myplay1()  IMAGE "MAINMENU/music.BMP"
SEPARATOR
MENUITEM "2" Action myplay2()  IMAGE "MAINMENU/music.BMP"
SEPARATOR
MENUITEM "3" Action myplay3()  IMAGE "MAINMENU/music.BMP"
SEPARATOR
MENUITEM "4" Action myplay4()  IMAGE "MAINMENU/music.BMP"
END POPUP
POPUP "PWCT Team"
MENUITEM "Eng/Mahmoud" Action contactmsf()  IMAGE "mainmenu/m.bmp"
SEPARATOR
MENUITEM "Mr/Sameh" Action contactsk()  IMAGE "mainmenu/m.bmp"
SEPARATOR
MENUITEM "Mr/Amine" Action contactam()  IMAGE "mainmenu/m.bmp"
SEPARATOR
MENUITEM "Mr/AbOeLsOuD" Action contactabn()  IMAGE "mainmenu/m.bmp"
END POPUP
MENUITEM "Close Window" Action close()  IMAGE "mainmenu/x.bmp"
END MENU
DEFINE MAIN MENU
Set MenuStyle EXTENDED
POPUP "„·›"
MENUITEM "Exit" Action close()  IMAGE "mainmenu/x.bmp"
END POPUP
POPUP "›—Ìﬁ «·⁄„·"
MENUITEM "PWCT Team" Action teamcontact()  IMAGE "mainmenu/m.bmp"
END POPUP
POPUP "„”«⁄œ…"
MENUITEM "„”«⁄œ…" Action contactabn()  IMAGE "back/abn.bmp"
END POPUP
POPUP "„Ê«ﬁ⁄  Â„ﬂ"
MENUITEM "„Ê«ﬁ⁄  Â„ﬂ" Action favweb()  IMAGE "back/e.bmp"
END POPUP
END MENU
@ 338 ,-3 FRAME Frame1;
WIDTH 652 ;
HEIGHT 3 ;
FONT "Arial" ;
SIZE 9 ;
BOLD ;
BACKCOLOR {128,0,255} ;
FONTCOLOR {255,0,128} 

Public oActiveX
oActiveX := TActiveX():New( "Win1", "GIF89.Gif89.1" , 382 , 2 , 624 , 53)
oActiveX:Load()
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action timer()
@ 345 ,510 LABEL timer ;
VALUE "" ;
WIDTH 99 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 342 ,14 FRAME FrameSOUND1;
WIDTH 395 ;
HEIGHT 37 ;
FONT "Arial" ;
SIZE 9 ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 340 ,8 LABEL lblsound1 ;
VALUE "  Music" ;
WIDTH 78 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {97,0,193}
@ 351 ,93 BUTTONEX btnPlay;
CAPTION "Play";
FONTCOLOR {0,0,255};
ON CLICK myplay1()  ;
WIDTH 60 HEIGHT 17 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 351 ,243 BUTTONEX btnPause;
CAPTION "Pause";
FONTCOLOR {255,0,128};
ON CLICK mypause()  ;
WIDTH 59 HEIGHT 17 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 351 ,364 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {255,0,128};
ON CLICK myclose()  ;
WIDTH 38 HEIGHT 17 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 351 ,303 BUTTONEX btnResume;
CAPTION "Resume";
FONTCOLOR {255,128,64};
ON CLICK myresume()  ;
WIDTH 61 HEIGHT 17 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 351 ,154 BUTTONEX btnOpen2;
CAPTION "2";
FONTCOLOR {128,128,0};
ON CLICK myplay2()  ;
WIDTH 26 HEIGHT 17 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 351 ,182 BUTTONEX btnOpen3;
CAPTION "3";
FONTCOLOR {128,128,0};
ON CLICK myplay3()  ;
WIDTH 26 HEIGHT 17 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 351 ,210 BUTTONEX btnOpen4;
CAPTION "4";
FONTCOLOR {128,128,0};
ON CLICK myplay4()  ;
WIDTH 30 HEIGHT 17 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
oactivex:OOLE:glass := .t.
oactivex:OOLE:autosize := .f.
oactivex:OOLE:FileName := "back/mraboelsoud.gif"
ACTIVATE WINDOW win1

Proc eq1
DEFINE WINDOW eq1 ;
AT 10 ,10 ;
WIDTH 519 ;
HEIGHT 528 ;
ICON "abni.ico" ;
TITLE "Mr AbOeLsOuD  --------  Ohm s Law ______ (ﬁ«‰Ê‰ √Ê„)" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

eq1.Center ( )
@ 449 ,224 BUTTONEX btn1eq1;
CAPTION "Thanks Mr Aboelsoud";
FONTCOLOR {255,0,128};
BACKCOLOR {187,255,221};
ON CLICK exiteq1()  ;
WIDTH 198 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 275 ,234 FRAME Frame1eq1;
WIDTH 249 ;
HEIGHT 161 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 58 ,233 FRAME Frame2eq1;
WIDTH 252 ;
HEIGHT 198 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128} ;
OPAQUE ;
TRANSPARENT 

@ 54 ,11 FRAME Frame5eq1;
WIDTH 206 ;
HEIGHT 380 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,255,128} ;
OPAQUE ;
TRANSPARENT 

@ 249 ,32 LABEL lbl1eq1 ;
VALUE "R1" ;
WIDTH 27 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
@ 182 ,299 LABEL lbl2eq1 ;
VALUE "1" ;
WIDTH 16 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 225 ,28 LABEL lbl3eq1 ;
VALUE "⁄‰œ  €ÌÌ— «·ÿÊ· Ê«·„”«Õ…" ;
WIDTH 180 ;
HEIGHT 25 ;
FONT "Tahoma" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 118 ,323 LABEL lbl4eq1 ;
VALUE "A" ;
WIDTH 17 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 194 ,180 LABEL lbl5eq1 ;
VALUE "---3" ;
WIDTH 36 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,210,210}
@ 200 ,291 LABEL lbl6eq1 ;
VALUE "-------" ;
WIDTH 34 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 196 ,257 LABEL lbl7eq1 ;
VALUE "s = " ;
WIDTH 33 ;
HEIGHT 30 ;
FONT "Symbol" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 390 ,244 LABEL lbl8eq1 ;
VALUE "R2" ;
WIDTH 31 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,79,39}
@ 218 ,366 LABEL lbl9eq1 ;
VALUE "R" ;
WIDTH 20 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 368 ,307 LABEL lbl10eq1 ;
VALUE "------------------------------------------" ;
WIDTH 47 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 120 ,296 LABEL lbl11eq1 ;
VALUE "R" ;
WIDTH 19 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 326 ,60 LABEL lbl12eq1 ;
VALUE "" ;
WIDTH 31 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,204,204}
@ 217 ,298 LABEL lbl13eq1 ;
VALUE "R" ;
WIDTH 18 ;
HEIGHT 27 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 314 ,446 LABEL lbl14eq1 ;
VALUE "---1" ;
WIDTH 34 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,185,185}
@ 181 ,371 LABEL lbl15eq1 ;
VALUE "L" ;
WIDTH 19 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 115 ,41 LABEL lbl16eq1 ;
VALUE "R1" ;
WIDTH 25 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 156 ,315 LABEL lbl17eq1 ;
VALUE "L" ;
WIDTH 14 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 346 ,249 LABEL lbl18eq1 ;
VALUE "R1" ;
WIDTH 27 ;
HEIGHT 28 ;
FONT "Arabic Transparent" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,108,54}
@ 72 ,180 LABEL lbl19eq1 ;
VALUE " --2" ;
WIDTH 33 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,176,176}
@ 137 ,261 LABEL lbl20eq1 ;
VALUE "R =" ;
WIDTH 27 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ -5 ,268 LABEL lbl21eq1 ;
VALUE "ﬁÊ«‰Ì‰ «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 216 ;
HEIGHT 41 ;
FONT "Andalus" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,100,50}
@ 260 ,303 LABEL lbl22eq1 ;
VALUE "    ﬁÊ«‰Ì‰ «·„ﬁ«Ê„…    ‰”»…" ;
WIDTH 187 ;
HEIGHT 33 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {113,0,113}
@ 34 ,318 LABEL lbl23eq1 ;
VALUE " ﬁÊ«‰Ì‰ «·„ﬁ«Ê„… «·ﬂÂ—»Ì…" ;
WIDTH 178 ;
HEIGHT 48 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,204}
@ 99 ,337 LABEL lbl24eq1 ;
VALUE "A" ;
WIDTH 21 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 67 ,349 LABEL lbl25eq1 ;
VALUE "L" ;
WIDTH 20 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 85 ,303 LABEL lbl26eq1 ;
VALUE "---------------------" ;
WIDTH 79 ;
HEIGHT 19 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 64 ,323 LABEL lbl27eq1 ;
VALUE "R" ;
WIDTH 28 ;
HEIGHT 23 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 84 ,264 LABEL lbl28eq1 ;
VALUE "R = " ;
WIDTH 47 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 453 ,591 FRAME Frame3eq1;
WIDTH 32 ;
HEIGHT 27 ;
FONT "Arial" ;
SIZE 9 ;
STRIKEOUT ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 447 ,89 FRAME Frame4eq1;
WIDTH 108 ;
HEIGHT 35 ;
FONT "Arial" ;
SIZE 9 ;
STRIKEOUT ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 453 ,91 DATEPICKER datepickereq1;
WIDTH 103 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 28 ,201 LABEL lbl29eq1 ;
VALUE "**********************************" ;
WIDTH 290 ;
HEIGHT 16 ;
FONT "WST_Germ" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,36,255}
@ 288 ,317 LABEL lbl33eq1 ;
VALUE "**************************************8" ;
WIDTH 160 ;
HEIGHT 21 ;
FONT "Webdings" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {187,187,0}
@ 193 ,28 LABEL lbl35eq1 ;
VALUE "«⁄Ìœ  ‘ﬂÌ· «·”·ﬂ" ;
WIDTH 158 ;
HEIGHT 24 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,255,164} ;
FONTCOLOR {0,66,33}
@ 73 ,53 LABEL lbl38eq1 ;
VALUE "⁄‰œ  €ÌÌ— «·„”«Õ… ›ﬁÿ" ;
WIDTH 124 ;
HEIGHT 27 ;
FONT "Microsoft Sans Serif" SIZE 12  ;
BACKCOLOR {255,255,185} ;
FONTCOLOR {100,50,0}
@ 156 ,38 LABEL lbl42eq1 ;
VALUE "R2" ;
WIDTH 27 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 347 ,312 LABEL lbl44eq1 ;
VALUE "L1" ;
WIDTH 24 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 313 ,333 LABEL lbl45eq1 ;
VALUE "⁄‰œ  €ÌÌ— «·ÿÊ· ›ﬁÿ" ;
WIDTH 110 ;
HEIGHT 24 ;
FONT "Microsoft Sans Serif" SIZE 12  ;
BACKCOLOR {255,255,191} ;
FONTCOLOR {0,64,128}
@ 201 ,358 LABEL lbl46eq1 ;
VALUE "-------------" ;
WIDTH 51 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 116 ,93 LABEL lbl47eq1 ;
VALUE "A2" ;
WIDTH 29 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 155 ,92 LABEL lbl48eq1 ;
VALUE "A1" ;
WIDTH 25 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 139 ,293 LABEL lbl49eq1 ;
VALUE "---------------" ;
WIDTH 67 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 135 ,30 LABEL lbl50eq1 ;
VALUE "-----  =  -------" ;
WIDTH 104 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 202 ,337 LABEL lbl51eq1 ;
VALUE "=" ;
WIDTH 20 ;
HEIGHT 19 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 218 ,385 LABEL lbl52eq1 ;
VALUE "A" ;
WIDTH 18 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 372 ,287 LABEL lbl53eq1 ;
VALUE "=" ;
WIDTH 19 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 371 ,237 LABEL lbl54eq1 ;
VALUE "--------" ;
WIDTH 48 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 392 ,317 LABEL lbl55eq1 ;
VALUE "L2" ;
WIDTH 28 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 304 ,12 LABEL lbl56eq1 ;
VALUE "--------------------------------------------" ;
WIDTH 203 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 358 ,26 LABEL lbl57eq1 ;
VALUE "------ = --------------------" ;
WIDTH 186 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 342 ,137 LABEL lbl58eq1 ;
VALUE "L1" ;
WIDTH 26 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 380 ,138 LABEL lbl59eq1 ;
VALUE "L2" ;
WIDTH 23 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 382 ,28 LABEL lbl60eq1 ;
VALUE "R2" ;
WIDTH 29 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,98,49}
@ 343 ,30 LABEL lbl61eq1 ;
VALUE "R1" ;
WIDTH 24 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,98,49}
@ 286 ,105 LABEL lbl62eq1 ;
VALUE "A1" ;
WIDTH 28 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 249 ,106 LABEL lbl63eq1 ;
VALUE "A2" ;
WIDTH 26 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 288 ,79 LABEL lbl64eq1 ;
VALUE "L2" ;
WIDTH 26 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 250 ,81 LABEL lbl65eq1 ;
VALUE "L1" ;
WIDTH 27 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 269 ,27 LABEL lbl66eq1 ;
VALUE "------- =  --------" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 283 ,31 LABEL lbl67eq1 ;
VALUE "R2" ;
WIDTH 28 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
@ 376 ,103 LABEL lbl70eq1 ;
VALUE "R2" ;
WIDTH 23 ;
HEIGHT 29 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 344 ,105 LABEL lbl71eq1 ;
VALUE "R1" ;
WIDTH 24 ;
HEIGHT 24 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 378 ,169 LABEL lbl72eq1 ;
VALUE "A1" ;
WIDTH 27 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 341 ,170 LABEL lbl73eq1 ;
VALUE "A2" ;
WIDTH 24 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 176 ,13 LABEL lbl77eq1 ;
VALUE "---------------------------------------------------" ;
WIDTH 203 ;
HEIGHT 17 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
END WINDOW

ACTIVATE WINDOW eq1

Return Nil
Proc eq2
DEFINE WINDOW eq2 ;
AT 10 ,10 ;
WIDTH 590 ;
HEIGHT 518 ;
ICON "abni.ico" ;
TITLE "Mr AbOeLsOuD  --------Ohm ¯s Law _____(ﬁ«‰Ê‰ √Ê„)" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "abn.ani" ;
BACKCOLOR {236,233,216} 

eq2.Center ( )
@ 439 ,242 BUTTONEX btn1eq2;
CAPTION "Thanks Mr Aboelsoud";
FONTCOLOR {108,0,108};
BACKCOLOR {187,255,221};
ON CLICK exiteq2()  ;
WIDTH 186 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 487 ,717 FRAME Frame1eq2;
WIDTH 21 ;
HEIGHT 14 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 109 ,39 FRAME Frame2eq2;
WIDTH 464 ;
HEIGHT 226 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128} ;
OPAQUE ;
TRANSPARENT 

@ 143 ,369 LABEL lbl1eq2 ;
VALUE "I" ;
WIDTH 10 ;
HEIGHT 38 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,128}
@ 306 ,286 LABEL lbl2eq2 ;
VALUE "«·√Ê·" ;
WIDTH 35 ;
HEIGHT 22 ;
FONT "Arabic Transparent" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,176,176}
@ 308 ,368 LABEL lbl3eq2 ;
VALUE "«·À«‰Ì" ;
WIDTH 36 ;
HEIGHT 26 ;
FONT "Arabic Transparent" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,128}
@ 307 ,437 LABEL lbl4eq2 ;
VALUE "«·À«‰Ì" ;
WIDTH 37 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,128}
@ 279 ,287 LABEL lbl5eq2 ;
VALUE "«·›—⁄" ;
WIDTH 36 ;
HEIGHT 31 ;
FONT "Arabic Transparent" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,166,166}
@ 279 ,439 LABEL lbl6eq2 ;
VALUE "«·›—⁄" ;
WIDTH 34 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,128}
@ 256 ,285 LABEL lbl7eq2 ;
VALUE "„ﬁ«Ê„…" ;
WIDTH 53 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,151,151}
@ 143 ,422 LABEL lbl8eq2 ;
VALUE "R" ;
WIDTH 24 ;
HEIGHT 39 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,128}
@ 250 ,120 LABEL lbl9eq2 ;
VALUE "„ﬁ«Ê„…" ;
WIDTH 47 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 258 ,435 LABEL lbl10eq2 ;
VALUE "„ﬁ«Ê„…" ;
WIDTH 46 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,128}
@ 145 ,241 LABEL lbl11eq2 ;
VALUE "I" ;
WIDTH 13 ;
HEIGHT 35 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,187,187}
@ 147 ,287 LABEL lbl12eq2 ;
VALUE "R" ;
WIDTH 28 ;
HEIGHT 35 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,204,204}
@ 154 ,398 LABEL lbl13eq2 ;
VALUE "X" ;
WIDTH 16 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 244 ,45 LABEL lbl14eq2 ;
VALUE " Ì‹‹‹‹«—" ;
WIDTH 42 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 282 ,372 LABEL lbl15eq2 ;
VALUE "«·›—⁄" ;
WIDTH 36 ;
HEIGHT 24 ;
FONT "Microsoft Sans Serif" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,128}
@ 274 ,109 LABEL lbl16eq2 ;
VALUE "«·„Ã„Ê⁄…" ;
WIDTH 54 ;
HEIGHT 22 ;
FONT "MS Serif" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 151 ,143 LABEL lbl17eq2 ;
VALUE "X" ;
WIDTH 17 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 253 ,206 LABEL lbl18eq2 ;
VALUE " Ì‹«—" ;
WIDTH 41 ;
HEIGHT 29 ;
FONT "Arabic Transparent" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,155,155}
@ 272 ,41 LABEL lbl19eq2 ;
VALUE "«·„Ã„Ê⁄…" ;
WIDTH 54 ;
HEIGHT 28 ;
FONT "MS Sans Serif" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 274 ,208 LABEL lbl20eq2 ;
VALUE "«·›—⁄" ;
WIDTH 35 ;
HEIGHT 26 ;
FONT "Arabic Transparent" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {64,128,128}
@ -9 ,469 LABEL lbl21eq2 ;
VALUE "ﬁÊ«‰Ì‰ «·›’· " ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Andalus" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,100,50}
@ 249 ,373 LABEL lbl22eq2 ;
VALUE " Ì«—" ;
WIDTH 32 ;
HEIGHT 38 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,128}
@ 108 ,443 LABEL lbl23eq2 ;
VALUE "ﬁ«‰Ê‰" ;
WIDTH 64 ;
HEIGHT 41 ;
FONT "Andalus" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,204}
@ 1 ,427 LABEL lbl24eq2 ;
VALUE "«·√Ê·" ;
WIDTH 41 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,255}
@ 155 ,267 LABEL lbl25eq2 ;
VALUE "X" ;
WIDTH 20 ;
HEIGHT 27 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 112 ,326 LABEL lbl26eq2 ;
VALUE " Ì‹‹«—" ;
WIDTH 48 ;
HEIGHT 28 ;
FONT "MS Serif" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {64,128,128}
@ 141 ,165 LABEL lbl27eq2 ;
VALUE "R" ;
WIDTH 23 ;
HEIGHT 40 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 142 ,118 LABEL lbl28eq2 ;
VALUE "I" ;
WIDTH 23 ;
HEIGHT 33 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 490 ,688 FRAME Frame3eq2;
WIDTH 31 ;
HEIGHT 20 ;
FONT "Arial" ;
SIZE 9 ;
STRIKEOUT ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 435 ,107 FRAME Frame4eq2;
WIDTH 126 ;
HEIGHT 36 ;
FONT "Arial" ;
SIZE 9 ;
STRIKEOUT ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 439 ,110 DATEPICKER datepickereq2;
WIDTH 121 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 25 ,320 LABEL lbl29eq2 ;
VALUE "**********************************" ;
WIDTH 250 ;
HEIGHT 16 ;
FONT "WST_Germ" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,36,255}
@ 160 ,251 LABEL lbl30eq2 ;
VALUE "1" ;
WIDTH 13 ;
HEIGHT 24 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,64,64}
@ 1 ,350 LABEL lbl35eq2 ;
VALUE "ﬂÂ‹‹‹‹‹‹—»Ì…" ;
WIDTH 72 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 110 ,371 LABEL lbl38eq2 ;
VALUE "Õ”«»" ;
WIDTH 70 ;
HEIGHT 38 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 304 ,209 LABEL lbl42eq2 ;
VALUE "«·√Ê·" ;
WIDTH 35 ;
HEIGHT 26 ;
FONT "Arabic Transparent" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {64,128,128}
@ 114 ,264 LABEL lbl43eq2 ;
VALUE "«·›‹‹‹—⁄" ;
WIDTH 65 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,64}
@ 156 ,448 LABEL lbl44eq2 ;
VALUE "2" ;
WIDTH 11 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 303 ,43 LABEL lbl45eq2 ;
VALUE "⁄·‹‹‹‹‹‹‹Ì «· Ê«“Ì" ;
WIDTH 117 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 154 ,332 LABEL lbl46eq2 ;
VALUE "=" ;
WIDTH 15 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 148 ,204 LABEL lbl47eq2 ;
VALUE "=" ;
WIDTH 13 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 165 ,311 LABEL lbl50eq2 ;
VALUE "1" ;
WIDTH 13 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 159 ,380 LABEL lbl51eq2 ;
VALUE "2" ;
WIDTH 12 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 174 ,137 IMAGE image1eq2;
PICTURE "back/eq2/IR1.BMP";
STRETCH ;
WIDTH 42 HEIGHT 73
@ 181 ,69 IMAGE image2eq2;
PICTURE "back/eq2/IR1.BMP";
STRETCH ;
WIDTH 38 HEIGHT 63
@ 174 ,194 IMAGE image3eq2;
PICTURE "back/eq2/IR3.BMP";
STRETCH ;
WIDTH 85 HEIGHT 77
@ 179 ,260 IMAGE image4eq2;
PICTURE "back/eq2/IR3.BMP";
STRETCH ;
WIDTH 91 HEIGHT 75
@ 180 ,357 IMAGE image5eq2;
PICTURE "back/eq2/IR7.BMP";
STRETCH ;
WIDTH 47 HEIGHT 69
@ 171 ,405 IMAGE image6eq2;
PARENT  {192,192,192} ;
PICTURE "back/eq2/IR7.BMP";
STRETCH ;
WIDTH 64 HEIGHT 83
@ 341 ,38 FRAME Frame5eq2;
WIDTH 465 ;
HEIGHT 85 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 170 ,452 LABEL lbl52eq2 ;
VALUE "" ;
WIDTH 46 ;
HEIGHT 85 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 171 ,173 LABEL lbl53eq2 ;
VALUE "" ;
WIDTH 47 ;
HEIGHT 80 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 173 ,253 LABEL lbl54eq2 ;
VALUE "" ;
WIDTH 39 ;
HEIGHT 80 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 174 ,321 LABEL lbl55eq2 ;
VALUE "" ;
WIDTH 47 ;
HEIGHT 83 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 172 ,392 LABEL lbl56eq2 ;
VALUE "" ;
WIDTH 29 ;
HEIGHT 79 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 179 ,40 LABEL lbl57eq2 ;
VALUE "" ;
WIDTH 29 ;
HEIGHT 69 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 171 ,101 LABEL lbl58eq2 ;
VALUE "" ;
WIDTH 36 ;
HEIGHT 79 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 353 ,220 LABEL lbl59eq2 ;
VALUE "I" ;
WIDTH 43 ;
HEIGHT 68 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 351 ,378 LABEL lbl60eq2 ;
VALUE "R" ;
WIDTH 48 ;
HEIGHT 63 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 350 ,58 LABEL lbl61eq2 ;
VALUE "V" ;
WIDTH 50 ;
HEIGHT 65 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 367 ,285 LABEL lbl62eq2 ;
VALUE " X" ;
WIDTH 67 ;
HEIGHT 41 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {166,166,0}
@ 364 ,129 LABEL lbl63eq2 ;
VALUE " =" ;
WIDTH 56 ;
HEIGHT 52 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
Public oActiveX2
oActiveX2 := TActiveX():New( "eq2", "GIF89.Gif89.1" , 33 , 78 , 380 , 65)
oActiveX2:Load()
END WINDOW

oactivex2:OOLE:glass := .t.
oactivex2:OOLE:autosize := .f.
oactivex2:OOLE:FileName := "back/ee.gif"
ACTIVATE WINDOW eq2

Return Nil
Proc eq3
DEFINE WINDOW eq3 ;
AT 10 ,10 ;
WIDTH 552 ;
HEIGHT 529 ;
ICON "back/eq2abni.ico" ;
TITLE "Mr AbOeLsOuD  -------- Ohm s Law  _____(ﬁ«‰Ê‰ «Ê„)" ;
CHILD ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "back/eq3/abn.ani" ;
BACKCOLOR {236,233,216} 

eq3.Center ( )
@ 448 ,258 BUTTONEX btn1;
CAPTION "Thanks Mr Aboelsoud";
FONTCOLOR {108,0,108};
BACKCOLOR {187,255,221};
ON CLICK exiteq3 ()  ;
WIDTH 151 HEIGHT 30 ;
FONT "Roman" SIZE 12 ;
TOOLTIP ""
@ 114 ,9 FRAME Frame1eq3;
WIDTH 250 ;
HEIGHT 191 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 116 ,270 FRAME Frame2eq3;
WIDTH 254 ;
HEIGHT 188 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128} ;
OPAQUE ;
TRANSPARENT 

@ 311 ,9 FRAME Frame11eq3;
WIDTH 226 ;
HEIGHT 126 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 310 ,273 FRAME Frame12eq3;
WIDTH 228 ;
HEIGHT 128 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 248 ,30 LABEL lbl1eq3 ;
VALUE "=" ;
WIDTH 20 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,0,64}
@ 219 ,56 LABEL lbl2eq3 ;
VALUE "V" ;
WIDTH 22 ;
HEIGHT 31 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 193 ,395 LABEL lbl3eq3 ;
VALUE "   Õ”«» ‘œ… «· Ì«—" ;
WIDTH 124 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 241 ,16 LABEL lbl4eq3 ;
VALUE "I" ;
WIDTH 14 ;
HEIGHT 37 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 151 ,115 LABEL lbl5eq3 ;
VALUE "B1" ;
WIDTH 20 ;
HEIGHT 27 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 246 ,293 LABEL lbl6eq3 ;
VALUE "=" ;
WIDTH 15 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 137 ,170 LABEL lbl7eq3 ;
VALUE "V" ;
WIDTH 19 ;
HEIGHT 36 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 194 ,153 LABEL lbl8eq3 ;
VALUE "Õ”«» ‘œ… «· Ì«—" ;
WIDTH 103 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 154 ,192 LABEL lbl9eq3 ;
VALUE "B2" ;
WIDTH 24 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 138 ,149 LABEL lbl10eq3 ;
VALUE "-" ;
WIDTH 17 ;
HEIGHT 25 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 128 ,29 LABEL lbl11eq3 ;
VALUE "V" ;
WIDTH 22 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {49,98,98}
@ 133 ,96 LABEL lbl12eq3 ;
VALUE "V" ;
WIDTH 20 ;
HEIGHT 32 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 154 ,462 LABEL lbl13eq3 ;
VALUE "B2" ;
WIDTH 26 ;
HEIGHT 28 ;
FONT "Arabic Transparent" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 247 ,312 LABEL lbl14eq3 ;
VALUE "-------------------------------------------" ;
WIDTH 133 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 154 ,393 LABEL lbl15eq3 ;
VALUE "B1" ;
WIDTH 20 ;
HEIGHT 21 ;
FONT "Microsoft Sans Serif" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 197 ,271 LABEL lbl16eq3 ;
VALUE "------------------------------------------------------" ;
WIDTH 137 ;
HEIGHT 26 ;
FONT "MS Serif" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,217,217}
@ 141 ,372 LABEL lbl17eq3 ;
VALUE "V" ;
WIDTH 21 ;
HEIGHT 33 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 229 ,346 LABEL lbl18eq3 ;
VALUE "B1" ;
WIDTH 25 ;
HEIGHT 22 ;
FONT "Arabic Transparent" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 218 ,324 LABEL lbl19eq3 ;
VALUE "V" ;
WIDTH 22 ;
HEIGHT 29 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 216 ,387 LABEL lbl20eq3 ;
VALUE "V" ;
WIDTH 21 ;
HEIGHT 36 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ -8 ,303 LABEL lbl21eq3 ;
VALUE "ﬁÊ«‰Ì‰ «·›’· «·«Ê· ﬂÂ—»Ì…" ;
WIDTH 220 ;
HEIGHT 41 ;
FONT "Andalus" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,100,50}
@ 96 ,89 LABEL lbl22eq3 ;
VALUE " Ê’Ì· «·«ﬁÿ«» «·„ ‘«»Â…" ;
WIDTH 179 ;
HEIGHT 34 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {113,0,113}
@ 96 ,336 LABEL lbl23eq3 ;
VALUE "  Ê’Ì· «·√ﬁÿ«» «·„Œ ·›…" ;
WIDTH 191 ;
HEIGHT 41 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,204}
@ 139 ,443 LABEL lbl24eq3 ;
VALUE "V" ;
WIDTH 20 ;
HEIGHT 31 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 157 ,322 LABEL lbl25eq3 ;
VALUE "BT" ;
WIDTH 32 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {50,99,99}
@ 145 ,419 LABEL lbl26eq3 ;
VALUE "+" ;
WIDTH 20 ;
HEIGHT 23 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 236 ,271 LABEL lbl27eq3 ;
VALUE "I" ;
WIDTH 19 ;
HEIGHT 38 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,91,91}
@ 138 ,302 LABEL lbl28eq3 ;
VALUE "V" ;
WIDTH 22 ;
HEIGHT 37 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,94,47}
@ 464 ,673 FRAME Frame3eq3;
WIDTH 22 ;
HEIGHT 25 ;
FONT "Arial" ;
SIZE 9 ;
STRIKEOUT ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 445 ,140 FRAME Frame4eq3;
WIDTH 108 ;
HEIGHT 35 ;
FONT "Arial" ;
SIZE 9 ;
STRIKEOUT ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 451 ,142 DATEPICKER datepickereq3;
WIDTH 103 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 23 ,289 LABEL lbl29eq3 ;
VALUE "**********************************" ;
WIDTH 232 ;
HEIGHT 17 ;
FONT "WST_Germ" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,36,255}
@ 196 ,14 LABEL lbl30eq3 ;
VALUE "---------------------------------------------------------------" ;
WIDTH 130 ;
HEIGHT 26 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,223,223}
@ 230 ,406 LABEL lbl35eq3 ;
VALUE "B2" ;
WIDTH 26 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 273 ,132 LABEL lbl38eq3 ;
VALUE " + r2" ;
WIDTH 44 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 150 ,43 LABEL lbl42eq3 ;
VALUE "Bt" ;
WIDTH 20 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 263 ,319 LABEL lbl43eq3 ;
VALUE "R" ;
WIDTH 21 ;
HEIGHT 29 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 269 ,412 LABEL lbl44eq3 ;
VALUE "r2" ;
WIDTH 22 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 233 ,77 LABEL lbl45eq3 ;
VALUE "B1" ;
WIDTH 25 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 138 ,72 LABEL lbl46eq3 ;
VALUE "=" ;
WIDTH 15 ;
HEIGHT 23 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 147 ,351 LABEL lbl47eq3 ;
VALUE "=" ;
WIDTH 13 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 253 ,49 LABEL lbl50eq3 ;
VALUE "------------------------------------" ;
WIDTH 134 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 270 ,375 LABEL lbl51eq3 ;
VALUE "r1 " ;
WIDTH 17 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 313 ,286 IMAGE image2eq3;
PICTURE "back/eq2/ba.jpg";
WIDTH 201 HEIGHT 121
@ 312 ,22 IMAGE image3eq3;
PICTURE "back/eq2/ba2.jpg";
WIDTH 204 HEIGHT 118
@ 223 ,116 LABEL lbl54eq3 ;
VALUE "V" ;
WIDTH 21 ;
HEIGHT 37 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 230 ,104 LABEL lbl52eq3 ;
VALUE "-" ;
WIDTH 13 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 235 ,135 LABEL lbl53eq3 ;
VALUE "B2" ;
WIDTH 26 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 271 ,395 LABEL lbl55eq3 ;
VALUE "+" ;
WIDTH 15 ;
HEIGHT 25 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 270 ,359 LABEL lbl56eq3 ;
VALUE "+" ;
WIDTH 17 ;
HEIGHT 26 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 278 ,338 LABEL lbl57eq3 ;
VALUE "eq" ;
WIDTH 17 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 222 ,370 LABEL lbl58eq3 ;
VALUE "+" ;
WIDTH 16 ;
HEIGHT 25 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 266 ,51 LABEL lbl60eq3 ;
VALUE "R" ;
WIDTH 20 ;
HEIGHT 36 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 271 ,93 LABEL lbl61eq3 ;
VALUE "+" ;
WIDTH 16 ;
HEIGHT 23 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 274 ,111 LABEL lbl62eq3 ;
VALUE "r1" ;
WIDTH 18 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 279 ,73 LABEL lbl63eq3 ;
VALUE "eq" ;
WIDTH 21 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
Public oActiveX3
oActiveX3 := TActiveX():New( "eq3", "GIF89.Gif89.1" , 36 , 36 , 380 , 65)
oActiveX3:Load()
END WINDOW

oactivex3:OOLE:glass := .t.
oactivex3:OOLE:autosize := .f.
oactivex3:OOLE:FileName := "back/bt.gif"
ACTIVATE WINDOW eq3

Return Nil
Proc eq4
DEFINE WINDOW eq4 ;
AT 10 ,10 ;
WIDTH 615 ;
HEIGHT 538 ;
ICON "abni.ico" ;
TITLE "Mr AbOeLsOuD  --------  Ohm s Law ______ (ﬁ«‰Ê‰ √Ê„)" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "abn.ani" ;
BACKCOLOR {236,233,216} 

eq4.Center ( )
@ 403 ,16 BUTTONEX btn1eq4;
CAPTION "Close";
FONTCOLOR {255,0,128};
BACKCOLOR {187,255,221};
ON CLICK exiteq4()  ;
WIDTH 87 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 336 ,345 FRAME Frame1eq4;
WIDTH 248 ;
HEIGHT 149 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 116 ,344 FRAME Frame2eq4;
WIDTH 251 ;
HEIGHT 190 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128} ;
OPAQUE ;
TRANSPARENT 

@ 115 ,121 FRAME Frame5eq4;
WIDTH 214 ;
HEIGHT 369 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,255,128} ;
OPAQUE ;
TRANSPARENT 

@ 279 ,152 LABEL lbl1eq4eq4 ;
VALUE "w" ;
WIDTH 18 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
@ 201 ,433 LABEL lbl2eq4 ;
VALUE "=" ;
WIDTH 16 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 324 ,204 LABEL lbl3eq4 ;
VALUE " Ì«— Ê„ﬁ«Ê„…" ;
WIDTH 78 ;
HEIGHT 27 ;
FONT "Tahoma" SIZE 11  ;
BACKCOLOR {255,255,176} ;
FONTCOLOR {128,0,128}
@ 175 ,474 LABEL lbl4eq4 ;
VALUE "W" ;
WIDTH 23 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {173,91,255}
@ 242 ,302 LABEL lbl5eq4 ;
VALUE "--2" ;
WIDTH 28 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,210,210}
@ 143 ,434 LABEL lbl6eq4 ;
VALUE "=" ;
WIDTH 19 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 262 ,455 LABEL lbl7eq4 ;
VALUE "V" ;
WIDTH 22 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 401 ,450 LABEL lbl8eq4 ;
VALUE "V" ;
WIDTH 18 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 261 ,411 LABEL lbl9eq4 ;
VALUE "V" ;
WIDTH 20 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 427 ,432 LABEL lbl10eq4 ;
VALUE "------------------------------------------" ;
WIDTH 85 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 199 ,409 LABEL lbl11eq4 ;
VALUE "V" ;
WIDTH 19 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 376 ,170 LABEL lbl12eq4 ;
VALUE "" ;
WIDTH 31 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,204,204}
@ 262 ,347 LABEL lbl13eq4 ;
VALUE "3--" ;
WIDTH 18 ;
HEIGHT 27 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 104 ,256 LABEL lbl14eq4 ;
VALUE "ﬁÊ«‰Ì‰ «·ﬁœ—…" ;
WIDTH 81 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,185,185}
@ 262 ,519 LABEL lbl15eq4 ;
VALUE "I" ;
WIDTH 17 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 189 ,165 LABEL lbl16eq4 ;
VALUE "w" ;
WIDTH 15 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 215 ,479 LABEL lbl17eq4 ;
VALUE "Q" ;
WIDTH 21 ;
HEIGHT 22 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {98,204,255}
@ 281 ,197 LABEL lbl18eq4 ;
VALUE "V" ;
WIDTH 27 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,108,54}
@ 131 ,309 LABEL lbl19eq4 ;
VALUE "--1" ;
WIDTH 24 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,176,176}
@ 199 ,346 LABEL lbl20eq4 ;
VALUE "2--" ;
WIDTH 27 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ -5 ,368 LABEL lbl21eq4 ;
VALUE "ﬁÊ«‰Ì‰ «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 216 ;
HEIGHT 41 ;
FONT "Andalus" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,100,50}
@ 313 ,435 LABEL lbl22eq4 ;
VALUE "ﬁ«‰Ê‰ √Ê„ ·œ«∆—… „€·ﬁ…" ;
WIDTH 167 ;
HEIGHT 29 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {113,0,113}
@ 97 ,462 LABEL lbl23eq4 ;
VALUE "ﬁÊ«‰Ì‰ ›—ﬁ «·ÃÂœ" ;
WIDTH 138 ;
HEIGHT 47 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,204}
@ 142 ,504 LABEL lbl24eq4 ;
VALUE "R" ;
WIDTH 21 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 142 ,457 LABEL lbl25eq4 ;
VALUE "I" ;
WIDTH 20 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 144 ,481 LABEL lbl26eq4 ;
VALUE "X" ;
WIDTH 16 ;
HEIGHT 22 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {255,255,157} ;
FONTCOLOR {0,0,0}
@ 147 ,347 LABEL lbl27eq4 ;
VALUE "1--" ;
WIDTH 28 ;
HEIGHT 23 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 145 ,410 LABEL lbl28eq4 ;
VALUE "V" ;
WIDTH 23 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 449 ,6 FRAME Frame4eq4;
WIDTH 108 ;
HEIGHT 35 ;
FONT "Arial" ;
SIZE 9 ;
STRIKEOUT ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 454 ,9 DATEPICKER datepickereq4;
WIDTH 103 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 26 ,294 LABEL lbl29eq4 ;
VALUE "**********************************" ;
WIDTH 290 ;
HEIGHT 16 ;
FONT "WST_Germ" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,36,255}
@ 240 ,204 LABEL lbl35eq4 ;
VALUE " Ì«— ÊÃÂœ" ;
WIDTH 75 ;
HEIGHT 25 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,255,164} ;
FONTCOLOR {0,66,33}
@ 131 ,216 LABEL lbl38eq4 ;
VALUE "‘€· Ê“„‰" ;
WIDTH 70 ;
HEIGHT 25 ;
FONT "Microsoft Sans Serif" SIZE 12  ;
BACKCOLOR {255,255,185} ;
FONTCOLOR {100,50,0}
@ 200 ,129 LABEL lbl42eq4 ;
VALUE "ﬁœ—…" ;
WIDTH 27 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 419 ,383 LABEL lbl44eq4 ;
VALUE "I" ;
WIDTH 12 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 353 ,444 LABEL lbl45eq4 ;
VALUE "Õ”«» ‘œ… «· Ì«—" ;
WIDTH 110 ;
HEIGHT 24 ;
FONT "Microsoft Sans Serif" SIZE 12  ;
BACKCOLOR {255,255,191} ;
FONTCOLOR {0,64,128}
@ 260 ,499 LABEL lbl46eq4 ;
VALUE "-" ;
WIDTH 15 ;
HEIGHT 25 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 155 ,225 LABEL lbl47eq4 ;
VALUE "W" ;
WIDTH 29 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 198 ,231 LABEL lbl48eq4 ;
VALUE "t" ;
WIDTH 16 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 199 ,453 LABEL lbl49eq4 ;
VALUE "---------------" ;
WIDTH 72 ;
HEIGHT 18 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {238,238,238} ;
FONTCOLOR {0,0,0}
@ 176 ,195 LABEL lbl50eq4 ;
VALUE " = --------" ;
WIDTH 104 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 262 ,434 LABEL lbl51eq4 ;
VALUE "=" ;
WIDTH 20 ;
HEIGHT 19 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 264 ,538 LABEL lbl52eq4 ;
VALUE "r" ;
WIDTH 18 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 424 ,403 LABEL lbl53eq4 ;
VALUE "=" ;
WIDTH 19 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 409 ,468 LABEL lbl54eq4 ;
VALUE "B" ;
WIDTH 15 ;
HEIGHT 23 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 449 ,505 LABEL lbl55eq4 ;
VALUE "r" ;
WIDTH 28 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 301 ,123 LABEL lbl56eq4 ;
VALUE "--------------------------------------------" ;
WIDTH 203 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 359 ,168 LABEL lbl57eq4 ;
VALUE "=" ;
WIDTH 23 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 325 ,306 LABEL lbl58eq4 ;
VALUE "--3" ;
WIDTH 26 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,206,206}
@ 361 ,237 LABEL lbl59eq4 ;
VALUE "R" ;
WIDTH 23 ;
HEIGHT 22 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 351 ,130 LABEL lbl60eq4 ;
VALUE "P" ;
WIDTH 17 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 368 ,145 LABEL lbl61eq4 ;
VALUE "w" ;
WIDTH 24 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,98,49}
@ 271 ,470 LABEL lbl62eq4 ;
VALUE "B" ;
WIDTH 17 ;
HEIGHT 21 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 449 ,480 LABEL lbl63eq4 ;
VALUE "+" ;
WIDTH 16 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 358 ,195 LABEL lbl64eq4 ;
VALUE "I" ;
WIDTH 9 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 280 ,248 LABEL lbl65eq4 ;
VALUE "I" ;
WIDTH 27 ;
HEIGHT 25 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 284 ,225 LABEL lbl66eq4 ;
VALUE "X" ;
WIDTH 22 ;
HEIGHT 19 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 282 ,177 LABEL lbl67eq4 ;
VALUE "=" ;
WIDTH 17 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 267 ,135 LABEL lbl70eq4 ;
VALUE "p" ;
WIDTH 16 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 169 ,145 LABEL lbl71eq4 ;
VALUE "P" ;
WIDTH 17 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 454 ,454 LABEL lbl72eq4 ;
VALUE "eq" ;
WIDTH 21 ;
HEIGHT 30 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 446 ,437 LABEL lbl73eq4 ;
VALUE "R" ;
WIDTH 18 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 223 ,122 LABEL lbl77eq4 ;
VALUE "---------------------------------------------------" ;
WIDTH 203 ;
HEIGHT 17 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 342 ,33 LABEL lbl78eq4 ;
VALUE "«··Â" ;
WIDTH 28 ;
HEIGHT 22 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 277 ,27 LABEL lbl79eq4 ;
VALUE "„Õ„œ" ;
WIDTH 53 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 306 ,23 LABEL lbl80eq4 ;
VALUE "—”Ê·" ;
WIDTH 61 ;
HEIGHT 27 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,128,64}
@ 410 ,193 LABEL lbl81eq4 ;
VALUE "2" ;
WIDTH 13 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 454 ,177 LABEL lbl82eq4 ;
VALUE "R" ;
WIDTH 17 ;
HEIGHT 21 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 450 ,132 LABEL lbl83eq4 ;
VALUE "w" ;
WIDTH 15 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
@ 411 ,174 LABEL lbl84eq4 ;
VALUE "V" ;
WIDTH 19 ;
HEIGHT 26 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,128}
@ 435 ,146 LABEL lbl85eq4 ;
VALUE "= ----------" ;
WIDTH 82 ;
HEIGHT 17 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 424 ,127 LABEL lbl86eq4 ;
VALUE "P" ;
WIDTH 20 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 410 ,219 LABEL lbl87eq4 ;
VALUE "ÃÂœ Ê„ﬁ«Ê„…" ;
WIDTH 71 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,185} ;
FONTCOLOR {0,0,0}
@ 406 ,301 LABEL lbl88eq4 ;
VALUE "--4" ;
WIDTH 29 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,170,170}
@ 387 ,124 LABEL lbl89eq4 ;
VALUE "------------------------------------------------" ;
WIDTH 201 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 352 ,203 LABEL lbl90eq4 ;
VALUE "2" ;
WIDTH 14 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 365 ,211 LABEL lbl91eq4 ;
VALUE "X" ;
WIDTH 18 ;
HEIGHT 17 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
Public oActiveXeq4
oActiveXeq4 := TActiveX():New( "eq4", "GIF89.Gif89.1" , 43 , 122 , 465 , 60)
oActiveXeq4:Load()
END WINDOW

oactivexeq4:OOLE:glass := .t.
oactivexeq4:OOLE:autosize := .f.
oactivexeq4:OOLE:FileName := "back/pw1.gif"
ACTIVATE WINDOW eq4

Return Nil
Proc vid1
DEFINE WINDOW vid1 ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 553 ;
ICON "PWCTICON" ;
TITLE "›·«‘‹‹‹‹«   Ê÷ÌÕÌ…   ........»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

vid1.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "vid1", "ShockwaveFlash.ShockwaveFlash.1" , 7 , 4 , 742 , 451)
oActiveX:Load()
@ 466 ,411 BUTTONEX btn1vid1;
CAPTION " ‘€Ì·";
PICTURE "FileName.BMP";
ON CLICK pvid1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 466 ,254 BUTTONEX btn2vid1;
CAPTION "Exit";
PICTURE "FileName.BMP";
ON CLICK exit1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 176 ,32 LABEL lbl1vid1 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW vid1

Return Nil
Proc vid2
DEFINE WINDOW vid2 ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 553 ;
ICON "PWCTICON" ;
TITLE "›·«‘‹‹‹‹«   Ê÷ÌÕÌ…   ........»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

vid2.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "vid2", "ShockwaveFlash.ShockwaveFlash.1" , 7 , 4 , 742 , 451)
oActiveX:Load()
@ 466 ,411 BUTTONEX btn1vid2;
CAPTION " ‘€Ì·";
PICTURE "FileName.BMP";
ON CLICK pvid2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 466 ,254 BUTTONEX btn2vid2;
CAPTION "Exit";
PICTURE "FileName.BMP";
ON CLICK exit2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 176 ,32 LABEL lbl1vid2 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW vid2

Return Nil
Proc vid3
DEFINE WINDOW vid3 ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 553 ;
ICON "PWCTICON" ;
TITLE "›·«‘‹‹‹‹«   Ê÷ÌÕÌ…   ........»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

vid3.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "vid3", "ShockwaveFlash.ShockwaveFlash.1" , 7 , 4 , 742 , 451)
oActiveX:Load()
@ 466 ,411 BUTTONEX btn1vid3;
CAPTION " ‘€Ì·";
PICTURE "FileName.BMP";
ON CLICK pvid3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 466 ,254 BUTTONEX btn2vid3;
CAPTION "Exit";
PICTURE "FileName.BMP";
ON CLICK exit3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 176 ,32 LABEL lbl1vid3 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW vid3

Return Nil
Proc vid4
DEFINE WINDOW vid4 ;
AT 10 ,10 ;
WIDTH 773 ;
HEIGHT 594 ;
ICON "PWCTICON" ;
TITLE "›·«‘‹‹‹‹«   Ê÷ÌÕÌ…   ........»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

vid4.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "vid4", "ShockwaveFlash.ShockwaveFlash.1" , 6 , 4 , 752 , 485)
oActiveX:Load()
@ 512 ,389 BUTTONEX btn1vid4;
CAPTION " ‘€Ì·";
PICTURE "FileName.BMP";
ON CLICK pvid4()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 512 ,232 BUTTONEX btn2vid4;
CAPTION "Exit";
PICTURE "FileName.BMP";
ON CLICK exit4()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 176 ,32 LABEL lbl4vid1 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW vid4

Return Nil
Proc vid5
DEFINE WINDOW vid5 ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 553 ;
ICON "PWCTICON" ;
TITLE "›·«‘‹‹‹‹«   Ê÷ÌÕÌ…   ........»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

vid5.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "vid5", "ShockwaveFlash.ShockwaveFlash.1" , 7 , 4 , 742 , 451)
oActiveX:Load()
@ 466 ,411 BUTTONEX btn1vid5;
CAPTION " ‘€Ì·";
PICTURE "FileName.BMP";
ON CLICK pvid5()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 466 ,254 BUTTONEX btn2vid5;
CAPTION "Exit";
PICTURE "FileName.BMP";
ON CLICK exit5()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 176 ,32 LABEL lbl4vid5 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW vid5

Return Nil
Proc vid6
DEFINE WINDOW vid6 ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 553 ;
ICON "PWCTICON" ;
TITLE "›·«‘‹‹‹‹«   Ê÷ÌÕÌ…   ........»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

vid6.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "vid6", "ShockwaveFlash.ShockwaveFlash.1" , 7 , 4 , 742 , 451)
oActiveX:Load()
@ 466 ,411 BUTTONEX btn1vid6;
CAPTION " ‘€Ì·";
PICTURE "FileName.BMP";
ON CLICK pvid6()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 466 ,254 BUTTONEX btn2vid6;
CAPTION "Exit";
PICTURE "FileName.BMP";
ON CLICK exit6()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 176 ,32 LABEL lbl4vid6 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW vid6

Return Nil
Proc vid7
DEFINE WINDOW vid7 ;
AT 10 ,10 ;
WIDTH 731 ;
HEIGHT 521 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

vid7.Center ( )
@ 483 ,153 BUTTONEX btn1vid7;
CAPTION "Play";
FONTCOLOR {0,0,255};
ON CLICK myopen7()  ;
WIDTH 71 HEIGHT 31 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,227 BUTTONEX btn3vid7;
CAPTION "pause";
FONTCOLOR {0,125,63};
ON CLICK mypause7()  ;
WIDTH 71 HEIGHT 31 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,301 BUTTONEX btn4vid7;
CAPTION "Resume";
FONTCOLOR {128,0,255};
ON CLICK myresume7()  ;
WIDTH 71 HEIGHT 31 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,449 BUTTONEX btn5vid7;
CAPTION "Close";
FONTCOLOR {232,0,116};
ON CLICK myclose7()  ;
WIDTH 71 HEIGHT 31 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,375 BUTTONEX btn2vid7;
CAPTION "Repeat";
FONTCOLOR {0,0,255};
ON CLICK myrepeat7()  ;
WIDTH 71 HEIGHT 31 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 98 ,270 LABEL lbl1VID7 ;
VALUE "«÷€ÿ ⁄·Ì                 · ‘€Ì· «·›ÌœÌÊ" ;
WIDTH 375 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 140 ,208 LABEL lbl2VID7 ;
VALUE "«÷€ÿ ⁄·Ì               ··«Ìﬁ«› «··ÕŸÌ ··›ÌœÌÊ" ;
WIDTH 437 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 184 ,200 LABEL lbl3VID7 ;
VALUE "«÷€ÿ ⁄·Ì                 ·„ «»⁄… „‘«Âœ… «·›ÌœÌÊ" ;
WIDTH 445 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 228 ,222 LABEL lbl4VID7 ;
VALUE "«÷€ÿ ⁄·Ì                ·«⁄«œ…  ‘€Ì· «·›ÌœÌÊ" ;
WIDTH 423 ;
HEIGHT 40 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 270 ,277 LABEL lbl5VID7 ;
VALUE "«÷€ÿ ⁄·Ì                ·«€·«ﬁ «·‰«›–…" ;
WIDTH 368 ;
HEIGHT 37 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 98 ,427 LABEL lbl71 ;
VALUE "Play" ;
WIDTH 64 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,210}
@ 147 ,427 LABEL lbl72 ;
VALUE "Pause" ;
WIDTH 78 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,117,0}
@ 192 ,427 LABEL lbl73 ;
VALUE "Resume" ;
WIDTH 99 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 234 ,427 LABEL lbl74 ;
VALUE "Repeat" ;
WIDTH 84 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 273 ,427 LABEL lbl75 ;
VALUE "Close" ;
WIDTH 73 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
DEFINE Context MENU OF vid7
Set MenuStyle EXTENDED
MENUITEM "Play" Action myopen7()  IMAGE "back/med/pl.bmp"
SEPARATOR
MENUITEM "Pause" Action mypause7()  IMAGE "back/med/pu.bmp"
SEPARATOR
MENUITEM "Resume" Action myresume7()  IMAGE "back/med/rs.bmp"
SEPARATOR
MENUITEM "Repeat" Action myrepeat7()  IMAGE "back/med/re.bmp"
SEPARATOR
MENUITEM "Exit" Action myclose7()  IMAGE "back/med/x.bmp"
END MENU
@ 0 ,47 LABEL lbl76 ;
VALUE "Designed By Mr AbOeLsOuD AbDeLrAoF (Physics Advisor)" ;
WIDTH 527 ;
HEIGHT 18 ;
FONT "Courier New" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,128}
@ 309 ,262 LABEL lbl77 ;
VALUE "√Ê   «÷€ÿ  ﬂ·Ìﬂ Ì„Ì‹‰" ;
WIDTH 383 ;
HEIGHT 43 ;
FONT "Courier New" SIZE 24  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {64,0,64}
END WINDOW

ACTIVATE WINDOW vid7

Return Nil
Proc vid8
DEFINE WINDOW vid8 ;
AT 10 ,10 ;
WIDTH 731 ;
HEIGHT 521 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

vid8.Center ( )
@ 483 ,153 BUTTONEX btn1vid8;
CAPTION "Play";
FONTCOLOR {0,0,255};
ON CLICK myopen8()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,227 BUTTONEX btn3vid8;
CAPTION "pause";
FONTCOLOR {0,125,63};
ON CLICK mypause8()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,301 BUTTONEX btn4vid8;
CAPTION "Resume";
FONTCOLOR {128,0,255};
ON CLICK myresume8()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,449 BUTTONEX btn5vid8;
CAPTION "Close";
FONTCOLOR {232,0,116};
ON CLICK myclose8()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,375 BUTTONEX btn2vid8;
CAPTION "Repeat";
FONTCOLOR {0,0,255};
ON CLICK myrepeat8()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 98 ,270 LABEL lbl1VID8 ;
VALUE "«÷€ÿ ⁄·Ì                 · ‘€Ì· «·›ÌœÌÊ" ;
WIDTH 375 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 140 ,208 LABEL lbl2VID8 ;
VALUE "«÷€ÿ ⁄·Ì               ··«Ìﬁ«› «··ÕŸÌ ··›ÌœÌÊ" ;
WIDTH 437 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 184 ,200 LABEL lbl3VID8 ;
VALUE "«÷€ÿ ⁄·Ì                 ·„ «»⁄… „‘«Âœ… «·›ÌœÌÊ" ;
WIDTH 445 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 228 ,222 LABEL lbl4VID8 ;
VALUE "«÷€ÿ ⁄·Ì                ·«⁄«œ…  ‘€Ì· «·›ÌœÌÊ" ;
WIDTH 423 ;
HEIGHT 40 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 270 ,277 LABEL lbl5VID8 ;
VALUE "«÷€ÿ ⁄·Ì                ·«€·«ﬁ «·‰«›–…" ;
WIDTH 368 ;
HEIGHT 37 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 98 ,427 LABEL lbl81 ;
VALUE "Play" ;
WIDTH 64 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,210}
@ 147 ,427 LABEL lbl82 ;
VALUE "Pause" ;
WIDTH 78 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,117,0}
@ 192 ,427 LABEL lbl83 ;
VALUE "Resume" ;
WIDTH 99 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 234 ,427 LABEL lbl84 ;
VALUE "Repeat" ;
WIDTH 84 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 273 ,427 LABEL lbl85 ;
VALUE "Close" ;
WIDTH 73 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
DEFINE Context MENU OF vid8
Set MenuStyle EXTENDED
MENUITEM "Play" Action myopen8()  IMAGE "back/med/pl.bmp"
SEPARATOR
MENUITEM "Pause" Action mypause8()  IMAGE "back/med/pu.bmp"
SEPARATOR
MENUITEM "Resume" Action myresume8()  IMAGE "back/med/rs.bmp"
SEPARATOR
MENUITEM "Repeat" Action myrepeat8()  IMAGE "back/med/re.bmp"
SEPARATOR
MENUITEM "Exit" Action myclose8()  IMAGE "back/med/x.bmp"
END MENU
@ 0 ,57 LABEL lbl86 ;
VALUE "Designed By Mr AbOeLsOuD AbDeLrAoF (Physics Advisor)" ;
WIDTH 527 ;
HEIGHT 18 ;
FONT "Courier New" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 309 ,262 LABEL lbl87 ;
VALUE "√Ê   «÷€ÿ  ﬂ·Ìﬂ Ì„Ì‹‰" ;
WIDTH 383 ;
HEIGHT 43 ;
FONT "Courier New" SIZE 24  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {64,0,64}
END WINDOW

ACTIVATE WINDOW vid8

Return Nil
Proc vid9
DEFINE WINDOW vid9 ;
AT 10 ,10 ;
WIDTH 731 ;
HEIGHT 521 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

vid9.Center ( )
@ 483 ,153 BUTTONEX btn1vid9;
CAPTION "Play";
FONTCOLOR {0,0,255};
ON CLICK myopen9()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,227 BUTTONEX btn3vid9;
CAPTION "pause";
FONTCOLOR {0,125,63};
ON CLICK mypause9()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,301 BUTTONEX btn4vid9;
CAPTION "Resume";
FONTCOLOR {128,0,255};
ON CLICK myresume9()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,449 BUTTONEX btn5vid9;
CAPTION "Close";
FONTCOLOR {232,0,116};
ON CLICK myclose9()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 483 ,375 BUTTONEX btn2vid9;
CAPTION "Repeat";
FONTCOLOR {0,0,255};
ON CLICK myrepeat9()  ;
WIDTH 71 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 98 ,270 LABEL lbl1VID9 ;
VALUE "«÷€ÿ ⁄·Ì                 · ‘€Ì· «·›ÌœÌÊ" ;
WIDTH 375 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 140 ,208 LABEL lbl2VID9 ;
VALUE "«÷€ÿ ⁄·Ì               ··«Ìﬁ«› «··ÕŸÌ ··›ÌœÌÊ" ;
WIDTH 437 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 184 ,200 LABEL lbl3VID9 ;
VALUE "«÷€ÿ ⁄·Ì                 ·„ «»⁄… „‘«Âœ… «·›ÌœÌÊ" ;
WIDTH 445 ;
HEIGHT 32 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 228 ,222 LABEL lbl4VID9 ;
VALUE "«÷€ÿ ⁄·Ì                ·«⁄«œ…  ‘€Ì· «·›ÌœÌÊ" ;
WIDTH 423 ;
HEIGHT 40 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 270 ,277 LABEL lbl5VID9 ;
VALUE "«÷€ÿ ⁄·Ì                ·«€·«ﬁ «·‰«›–…" ;
WIDTH 368 ;
HEIGHT 37 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 98 ,427 LABEL lbl91 ;
VALUE "Play" ;
WIDTH 64 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,210}
@ 147 ,427 LABEL lbl92 ;
VALUE "Pause" ;
WIDTH 78 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,117,0}
@ 192 ,427 LABEL lbl93 ;
VALUE "Resume" ;
WIDTH 99 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 234 ,427 LABEL lbl94 ;
VALUE "Repeat" ;
WIDTH 84 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 273 ,427 LABEL lbl95 ;
VALUE "Close" ;
WIDTH 73 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
DEFINE Context MENU OF vid9
Set MenuStyle EXTENDED
MENUITEM "Play" Action myopen9()  IMAGE "back/med/pl.bmp"
SEPARATOR
MENUITEM "Pause" Action mypause9()  IMAGE "back/med/pu.bmp"
SEPARATOR
MENUITEM "Resume" Action myresume9()  IMAGE "back/med/rs.bmp"
SEPARATOR
MENUITEM "Repeat" Action myrepeat9()  IMAGE "back/med/re.bmp"
SEPARATOR
MENUITEM "Exit" Action myclose9()  IMAGE "back/med/x.bmp"
END MENU
@ 0 ,47 LABEL lbl96 ;
VALUE "Designed By Mr AbOeLsOuD AbDeLrAoF (Physics Advisor)" ;
WIDTH 527 ;
HEIGHT 18 ;
FONT "Courier New" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,128}
@ 309 ,262 LABEL lbl97 ;
VALUE "√Ê   «÷€ÿ  ﬂ·Ìﬂ Ì„Ì‹‰" ;
WIDTH 383 ;
HEIGHT 43 ;
FONT "Courier New" SIZE 24  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {64,0,64}
END WINDOW

ACTIVATE WINDOW vid9

Return Nil
Proc pic1
DEFINE WINDOW pic1 ;
AT 10 ,10 ;
WIDTH 706 ;
HEIGHT 560 ;
ICON "PWCTICON" ;
TITLE "⁄·«ﬁ«  »Ì«‰Ì… ··›’· «·œ—«”Ì «·√Ê·" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

pic1.Center ( )
@ 0 ,2 IMAGE pic11;
PICTURE "back/g1/g1.jpg";
STRETCH ;
WIDTH 693 HEIGHT 520
END WINDOW

ACTIVATE WINDOW pic1

Return Nil
Proc pic2
DEFINE WINDOW pic2 ;
AT 10 ,10 ;
WIDTH 706 ;
HEIGHT 560 ;
ICON "PWCTICON" ;
TITLE "⁄·«ﬁ«  »Ì«‰Ì… ··›’· «·œ—«”Ì «·√Ê·" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

pic2.Center ( )
@ 0 ,2 IMAGE pic21;
PICTURE "back/g2/g2.jpg";
STRETCH ;
WIDTH 693 HEIGHT 520
END WINDOW

ACTIVATE WINDOW pic2

Return Nil
Proc pic3
DEFINE WINDOW pic3 ;
AT 10 ,10 ;
WIDTH 706 ;
HEIGHT 560 ;
ICON "PWCTICON" ;
TITLE "⁄·«ﬁ«  »Ì«‰Ì… ··›’· «·œ—«”Ì «·√Ê·" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

pic3.Center ( )
@ 0 ,2 IMAGE pic31;
PICTURE "back/g3/g3.jpg";
STRETCH ;
WIDTH 693 HEIGHT 520
END WINDOW

ACTIVATE WINDOW pic3

Return Nil
Proc pic4
DEFINE WINDOW pic4 ;
AT 10 ,10 ;
WIDTH 706 ;
HEIGHT 560 ;
ICON "PWCTICON" ;
TITLE "⁄·«ﬁ«  »Ì«‰Ì… ··›’· «·œ—«”Ì «·√Ê·" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

pic4.Center ( )
@ 0 ,2 IMAGE pic41;
PICTURE "back/g4/g4.jpg";
STRETCH ;
WIDTH 693 HEIGHT 520
END WINDOW

ACTIVATE WINDOW pic4

Return Nil
Proc pic5
DEFINE WINDOW pic5 ;
AT 10 ,10 ;
WIDTH 706 ;
HEIGHT 560 ;
ICON "PWCTICON" ;
TITLE "⁄·«ﬁ«  »Ì«‰Ì… ··›’· «·œ—«”Ì «·√Ê·" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

pic5.Center ( )
@ 0 ,2 IMAGE pic51;
PICTURE "back/g5/g5.jpg";
STRETCH ;
WIDTH 693 HEIGHT 520
END WINDOW

ACTIVATE WINDOW pic5

Return Nil
Proc pic6
DEFINE WINDOW pic6 ;
AT 10 ,10 ;
WIDTH 706 ;
HEIGHT 560 ;
ICON "PWCTICON" ;
TITLE "⁄·«ﬁ«  »Ì«‰Ì… ··›’· «·œ—«”Ì «·√Ê·" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

pic6.Center ( )
@ 0 ,2 IMAGE pic61;
PICTURE "back/g6/g6.jpg";
STRETCH ;
WIDTH 693 HEIGHT 520
END WINDOW

ACTIVATE WINDOW pic6

Return Nil
Proc conv1
DEFINE WINDOW conv1 ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 553 ;
ICON "PWCTICON" ;
TITLE "CONVERTOR  Designed By Mr AbOeLsOuD" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

conv1.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "conv1", "ShockwaveFlash.ShockwaveFlash.1" , 7 , 4 , 742 , 451)
oActiveX:Load()
@ 466 ,411 BUTTONEX btn1conv1;
CAPTION " ‘€Ì·";
PICTURE "FileName.BMP";
ON CLICK pconv1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 466 ,254 BUTTONEX btn2conv1;
CAPTION "Exit";
PICTURE "FileName.BMP";
ON CLICK exitconv1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 176 ,32 LABEL lbl1conv1 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW conv1

Return Nil
Proc conv2
DEFINE WINDOW conv2 ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 553 ;
ICON "PWCTICON" ;
TITLE "CONVERTOR  Designed By Mr AbOeLsOuD" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

conv2.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "conv2", "ShockwaveFlash.ShockwaveFlash.1" , 7 , 4 , 742 , 451)
oActiveX:Load()
@ 466 ,411 BUTTONEX btn1conv2;
CAPTION " ‘€Ì·";
FONTCOLOR {128,64,0};
PICTURE "FileName.BMP";
ON CLICK pconv2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 466 ,254 BUTTONEX btn2conv2;
CAPTION "Exit";
FONTCOLOR {64,0,128};
PICTURE "FileName.BMP";
ON CLICK exitconv2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 176 ,32 LABEL lbl1conv2 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW conv2

Return Nil
Proc calc1
Return Nil
Proc calc2
Return Nil
Proc timer
time = TIME()
win1.timer.Value := time
Return Nil
Proc pvid1
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\vid\vid1.swf" )
Return Nil
Proc pvid2
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\vid\vid2.swf" )
Return Nil
Proc pvid3
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\vid\vid3.swf" )
Return Nil
Proc pvid4
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\vid\vid4.swf" )
Return Nil
Proc pvid5
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\vid\vid5.swf" )
Return Nil
Proc pvid6
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\vid\vid6.swf" )
Return Nil
Proc pconv1
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\prog\conv\converter.swf" )
Return Nil
Proc pconv2
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\prog\conv\converter2.swf" )
Return Nil
Proc conv3
Execute File "prog/conv/cn.exe"
Return Nil
Proc exit1
vid1.Release ( )
Return Nil
Proc exit2
vid2.Release ( )
Return Nil
Proc exit3
vid3.Release ( )
Return Nil
Proc exit4
vid4.Release ( )
Return Nil
Proc exit5
vid5.Release ( )
Return Nil
Proc exit6
vid6.Release ( )
Return Nil
Proc exitconv1
conv1.Release ( )
Return Nil
Proc exitconv2
conv2.Release ( )
Return Nil
Proc exiteq1
eq1.Release ( )
Return Nil
Proc exiteq2
eq2.Release ( )
Return Nil
Proc exiteq3
eq3.Release ( )
Return Nil
Proc exiteq4
eq4.Release ( )
Return Nil
Proc myopen7
myhandle := GetFormHandle("vid7")
myhandle = STR ( myhandle )
myhandle = ALLTRIM ( myhandle )
mycmd := 'open "vid/twz.avi" type AVIvideo  alias mymovie style child parent '
mycmd := mycmd + myhandle
CALLDLL32("mciSendString","winmm.dll",mycmd,0&,128,0&)
CALLDLL32("mciSendString","winmm.dll",'put mymovie window client at 25 25 680 450 ',0,128,0)
CALLDLL32("mciSendString","winmm.dll",'play mymovie',0,128,0)
Return Nil
Proc mypause7
CALLDLL32("mciSendString","winmm.dll",'pause mymovie',0,128,0)
Return Nil
Proc myresume7
CALLDLL32("mciSendString","winmm.dll",'resume mymovie',0,128,0)
Return Nil
Proc myrepeat7
CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
myhandle := GetFormHandle("vid7")
myhandle = STR ( myhandle )
myhandle = ALLTRIM ( myhandle )
mycmd := 'open "vid/twz.avi" type AVIvideo  alias mymovie style child parent '
mycmd := mycmd + myhandle
CALLDLL32("mciSendString","winmm.dll",mycmd,0&,128,0&)
CALLDLL32("mciSendString","winmm.dll",'put mymovie window client at 25 25 680 450 ',0,128,0)
CALLDLL32("mciSendString","winmm.dll",'play mymovie',0,128,0)
Return Nil
Proc myclose7
CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
vid7.Release ( )
Return Nil
Proc myopen8
myhandle := GetFormHandle("vid8")
myhandle = STR ( myhandle )
myhandle = ALLTRIM ( myhandle )
mycmd := 'open "vid/ABN1.avi" type AVIvideo  alias mymovie style child parent '
mycmd := mycmd + myhandle
CALLDLL32("mciSendString","winmm.dll",mycmd,0&,128,0&)
CALLDLL32("mciSendString","winmm.dll",'put mymovie window client at 25 25 680 450 ',0,128,0)
CALLDLL32("mciSendString","winmm.dll",'play mymovie',0,128,0)
Return Nil
Proc mypause8
CALLDLL32("mciSendString","winmm.dll",'pause mymovie',0,128,0)
Return Nil
Proc myresume8
CALLDLL32("mciSendString","winmm.dll",'resume mymovie',0,128,0)
Return Nil
Proc myrepeat8
CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
myhandle := GetFormHandle("vid8")
myhandle = STR ( myhandle )
myhandle = ALLTRIM ( myhandle )
mycmd := 'open "vid/ABN1.avi" type AVIvideo  alias mymovie style child parent '
mycmd := mycmd + myhandle
CALLDLL32("mciSendString","winmm.dll",mycmd,0&,128,0&)
CALLDLL32("mciSendString","winmm.dll",'put mymovie window client at 25 25 680 450 ',0,128,0)
CALLDLL32("mciSendString","winmm.dll",'play mymovie',0,128,0)
Return Nil
Proc myclose8
CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
vid8.Release ( )
Return Nil
Proc myopen9
myhandle := GetFormHandle("vid9")
myhandle = STR ( myhandle )
myhandle = ALLTRIM ( myhandle )
mycmd := 'open "vid/twl.avi" type AVIvideo  alias mymovie style child parent '
mycmd := mycmd + myhandle
CALLDLL32("mciSendString","winmm.dll",mycmd,0&,128,0&)
CALLDLL32("mciSendString","winmm.dll",'put mymovie window client at 25 25 680 450 ',0,128,0)
CALLDLL32("mciSendString","winmm.dll",'play mymovie',0,128,0)
Return Nil
Proc mypause9
CALLDLL32("mciSendString","winmm.dll",'pause mymovie',0,128,0)
Return Nil
Proc myresume9
CALLDLL32("mciSendString","winmm.dll",'resume mymovie',0,128,0)
Return Nil
Proc myrepeat9
CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
myhandle := GetFormHandle("vid9")
myhandle = STR ( myhandle )
myhandle = ALLTRIM ( myhandle )
mycmd := 'open "vid/twl.avi" type AVIvideo  alias mymovie style child parent '
mycmd := mycmd + myhandle
CALLDLL32("mciSendString","winmm.dll",mycmd,0&,128,0&)
CALLDLL32("mciSendString","winmm.dll",'put mymovie window client at 25 25 680 450 ',0,128,0)
CALLDLL32("mciSendString","winmm.dll",'play mymovie',0,128,0)
Return Nil
Proc myclose9
CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
vid9.Release ( )
Return Nil
Proc real
MyOut := MSGOKCANCEL("Â·  —Ìœ  ‰’Ì» «·»—‰«„Ã","Mr ABN Guide")
IF myout == False
MyOut := MSGExclamation(" ⁄“Ì“Ì «·„” Œœ„ ‰√”› ·« Ì„ﬂ‰  ‰’Ì» «·»—‰«„Ã","Mr ABN Guide")
Return 0
ENDIF
IF myout == True
DEFINE WINDOW real ;
AT 10 ,10 ;
WIDTH 437 ;
HEIGHT 284 ;
ICON "back/prog/real.ico" ;
TITLE "Real Player 11 .......(Mr AbOeLsOuD Programms)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

real.Center ( )
@ 197 ,248 BUTTONEX btn1real;
CAPTION "Set Up";
FONTCOLOR {0,0,255};
ON CLICK getreal()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 197 ,79 BUTTONEX btn2real;
CAPTION "Exit";
FONTCOLOR {255,0,128};
ON CLICK exitreal()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveXreal
oActiveXreal := TActiveX():New( "real", "GIF89.Gif89.1" , 8 , 18 , 483 , 184)
oActiveXreal:Load()
END WINDOW

oactivexreal:OOLE:glass := .t.
oactivexreal:OOLE:autosize := .f.
oactivexreal:OOLE:FileName := "progactive/real.gif"
ACTIVATE WINDOW real

ENDIF
Return Nil
Proc jet
MyOut := MSGOKCANCEL("Â·  —Ìœ  ‰’Ì» «·»—‰«„Ã","Mr ABN Guide")
IF myout == False
MyOut := MSGExclamation(" ⁄“Ì“Ì «·„” Œœ„ ‰√”› ·« Ì„ﬂ‰  ‰’Ì» «·»—‰«„Ã","Mr ABN Guide")
Return 0
ENDIF
IF myout == True
DEFINE WINDOW jet ;
AT 10 ,10 ;
WIDTH 435 ;
HEIGHT 275 ;
ICON "back/prog/j.ico" ;
TITLE "Jet Audio ..........(Mr AbOeLsOuD Programms)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

jet.Center ( )
@ 195 ,260 BUTTONEX btn1jet;
CAPTION "Set Up";
FONTCOLOR {0,0,255};
ON CLICK getjet()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 195 ,91 BUTTONEX btn2jet;
CAPTION "Exit";
FONTCOLOR {255,0,128};
ON CLICK exitjet()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveXjet
oActiveXjet := TActiveX():New( "jet", "GIF89.Gif89.1" , 3 , 24 , 489 , 186)
oActiveXjet:Load()
END WINDOW

oactivexjet:OOLE:glass := .t.
oactivexjet:OOLE:autosize := .f.
oactivexjet:OOLE:FileName := "progactive/jet.gif"
ACTIVATE WINDOW jet

ENDIF
Return Nil
Proc nero
MyOut := MSGOKCANCEL("Â·  —Ìœ  ‰’Ì »—‰«„Ã ‰Ì—Ê 8 ⁄·Ì ÃÂ«“ﬂ  ","Mr ABN Guide")
IF myout == False
MyOut := MSGExclamation(" ⁄“Ì“Ì «·„” Œœ„ ‰√”› ·« Ì„ﬂ‰  ‰’Ì» «·»—‰«„Ã  ","Mr ABN Guide")
Return 0
ENDIF
IF myout == True
MyOut := MSGExclamation("Â–« «·»—‰‹‹‹‹«„Ã  ‰’‹‹Ì» ’‹‹‹«„‹‹ ","Mr ABN Guide")
DEFINE WINDOW Nero ;
AT 10 ,10 ;
WIDTH 435 ;
HEIGHT 275 ;
ICON "back/prog/nero.ico" ;
TITLE "Nero 8  ........(Mr AbOeLsOuD Programms)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

Nero.Center ( )
@ 198 ,254 BUTTONEX btn1Nero;
CAPTION "Set Up";
FONTCOLOR {0,0,255};
ON CLICK getnero()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 198 ,85 BUTTONEX btn2Nero;
CAPTION "Exit";
FONTCOLOR {255,0,128};
ON CLICK exitNero()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveXNero
oActiveXNero := TActiveX():New( "Nero", "GIF89.Gif89.1" , 4 , 19 , 494 , 185)
oActiveXNero:Load()
END WINDOW

oactivexNero:OOLE:glass := .t.
oactivexNero:OOLE:autosize := .f.
oactivexNero:OOLE:FileName := "progactive/nero.gif"
ACTIVATE WINDOW Nero

ENDIF
Return Nil
Proc uiso
MyOut := MSGOKCANCEL("Â·  —Ìœ  ‰’Ì» «·»—‰«„Ã  ","Mr ABN Guide")
IF myout == False
MyOut := MSGExclamation(" ⁄“Ì“Ì «·„” Œœ„ ‰√”› ·« Ì„ﬂ‰  ‰’Ì» «·»—‰«„Ã  ·√‰ﬂ √·€Ì  «·⁄„·Ì…","Mr ABN Guide")
Return 0
ENDIF
IF myout == True
MyOut := MSGBOX("Â–« «·»—‰‹‹‹‹«„Ã Ì⁄„· »Ê— «»· »œÊ‰  ‰’Ì»","Mr ABN Guide")
DEFINE WINDOW uiso ;
AT 10 ,10 ;
WIDTH 447 ;
HEIGHT 383 ;
ICON "prog/uiso/uiso.ico" ;
TITLE "ultra iso  ...... (Mr AbOeLsOuD Programms)" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

uiso.Center ( )
@ 211 ,166 TEXTBOX text1uiso;
HEIGHT 38 ;
WIDTH 241 ;
VALUE "TEAM ZWT" ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP "«‰”Œ «·«”„ Ê÷⁄Â ›Ì «·»—‰«„Ã" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
FONTCOLOR {0,128,128}
@ 263 ,166 TEXTBOX text2uiso;
HEIGHT 36 ;
WIDTH 241 ;
VALUE "4FFB-6D99-4A3D-07B9" ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP "«‰”Œ «·”—Ì«· Ê÷⁄Â ›Ì «·»—‰«„Ã" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
FONTCOLOR {255,0,0}
@ 305 ,296 BUTTONEX btn1uiso;
CAPTION "Set Up";
ON CLICK getultra()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP "«÷€ÿ Â‰« · ‘€Ì· «·»—‰«„Ã"
@ 218 ,18 LABEL lbl1uiso ;
VALUE "Name :- " ;
WIDTH 99 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 270 ,11 LABEL lbl2uiso ;
VALUE "Serial Number" ;
WIDTH 129 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 334 ,292 LABEL lbl3uiso ;
VALUE "" ;
WIDTH 74 ;
HEIGHT 36 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
Public oActiveXuiso
oActiveXuiso := TActiveX():New( "uiso", "GIF89.Gif89.1" , 4 , 33 , 430 , 196)
oActiveXuiso:Load()
@ 305 ,177 BUTTONEX btn2uiso;
CAPTION "Exit";
FONTCOLOR {255,0,128};
ON CLICK exituiso()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

oactivexuiso:OOLE:glass := .t.
oactivexuiso:OOLE:autosize := .f.
oactivexuiso:OOLE:FileName := "progactive/uiso.gif"
ACTIVATE WINDOW uiso

ENDIF
Return Nil
Proc truet
MyOut := MSGOKCANCEL("Â·  —Ìœ  ‰’Ì» «·»—‰«„Ã   ⁄·Ì ÃÂ«“ﬂ","Mr ABN Guide")
IF myout == False
MyOut := MSGExclamation(" ⁄“Ì“Ì «·„” Œœ„ ‰√”› ·« Ì„ﬂ‰  ‰’Ì» «·»—‰«„Ã    ·√‰ﬂ —›÷  «· ‰’Ì»","Mr ABN Guide")
Return 0
ENDIF
IF myout == True
MyOut := MSGExclamation("Â–« «·»—‰‹‹‹‹«„Ã Ì⁄„· »Ê— «»· »œÊ‰  ‰’Ì» ","Mr ABN Guide")
DEFINE WINDOW Truet ;
AT 10 ,10 ;
WIDTH 439 ;
HEIGHT 308 ;
ICON "back/prog/tt.ico" ;
TITLE "TrueTransparency ............(Mr AbOeLsOuD PROGRAMMS)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

truet.Center ( )
@ 226 ,260 BUTTONEX btn1truet;
CAPTION "Set Up";
FONTCOLOR {0,0,255};
ON CLICK gettrue()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 226 ,91 BUTTONEX btn2truet;
CAPTION "Exit";
FONTCOLOR {255,0,128};
ON CLICK exittruet()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveXtruet
oActiveXtruet := TActiveX():New( "truet", "GIF89.Gif89.1" , 13 , 32 , 497 , 202)
oActiveXtruet:Load()
END WINDOW

oactivextruet:OOLE:glass := .t.
oactivextruet:OOLE:autosize := .f.
oactivextruet:OOLE:FileName := "progactive/true.gif"
ACTIVATE WINDOW Truet

ENDIF
Return Nil
Proc ccleaner
MyOut := MSGOKCANCEL("Â·  —Ìœ  ‰’Ì» «·»—‰«„Ã  ⁄·Ì ÃÂ«“ﬂ ","Mr ABN Guide")
IF myout == False
MyOut := MSGExclamation(" ⁄“Ì“Ì «·„” Œœ„ ‰√”› ·« Ì„ﬂ‰  ‰’Ì» «·»—‰«„Ã  ·√‰ﬂ √·€Ì  «·⁄„·Ì…","Mr ABN Guide")
Return 0
ENDIF
IF myout == True
MyOut := MSGBOX("Â–« «·»—‰‹‹‹‹«„Ã Ì⁄„· »Ê— «»· »œÊ‰  ‰’Ì»","Mr ABN Guide")
DEFINE WINDOW ccleaner ;
AT 10 ,10 ;
WIDTH 431 ;
HEIGHT 283 ;
ICON "back/prog/ccleaner.ico" ;
TITLE "Ccleaner .........(Mr AbOeLsOuD Programms)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

ccleaner.Center ( )
@ 199 ,257 BUTTONEX btn1ccleaner;
CAPTION "Set Up";
FONTCOLOR {0,0,255};
ON CLICK getccleaner()  ;
WIDTH 104 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 199 ,88 BUTTONEX btn2ccleaner;
CAPTION "Exit";
FONTCOLOR {255,0,128};
ON CLICK exitccleaner()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveXccleaner
oActiveXccleaner := TActiveX():New( "ccleaner", "GIF89.Gif89.1" , 4 , 22 , 488 , 186)
oActiveXccleaner:Load()
END WINDOW

oactivexccleaner:OOLE:glass := .t.
oactivexccleaner:OOLE:autosize := .f.
oactivexccleaner:OOLE:FileName := "progactive/ccleaner.gif"
ACTIVATE WINDOW ccleaner

ENDIF
Return Nil
Proc winrar
MyOut := MSGOKCANCEL("Â·  —Ìœ  ‰’Ì» «·»—‰«„Ã  ⁄·Ì ÃÂ«“ﬂ","Mr ABN Guide")
IF myout == False
MyOut := MSGExclamation(" ⁄“Ì“Ì «·„” Œœ„ ‰√”› ·« Ì„ﬂ‰  ‰’Ì» «·»—‰«„Ã  ·ﬁœ «Œ —  «·€«¡ ⁄„·Ì… «· À»Ì ","Mr ABN Guide")
Return 0
ENDIF
IF myout == True
MyOut := MSGExclamation("Â–« «·»—‰‹‹‹‹«„Ã  ‰’‹‹Ì» ’‹‹‹«„‹‹ ","Mr ABN Guide")
DEFINE WINDOW Winrar ;
AT 10 ,10 ;
WIDTH 439 ;
HEIGHT 298 ;
ICON "back/prog/winrar.ico" ;
TITLE "Winrar ............(Mr AbOeLsOuD Programms)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

Winrar.Center ( )
@ 219 ,261 BUTTONEX btn1Winrar;
CAPTION "Set Up";
FONTCOLOR {0,0,255};
ON CLICK getwinrar()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 219 ,92 BUTTONEX btn2Winrar;
CAPTION "Exit";
FONTCOLOR {255,0,128};
ON CLICK exitWinrar()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveXWinrar
oActiveXWinrar := TActiveX():New( "Winrar", "GIF89.Gif89.1" , 2 , 21 , 497 , 208)
oActiveXWinrar:Load()
END WINDOW

oactivexWinrar:OOLE:glass := .t.
oactivexWinrar:OOLE:autosize := .f.
oactivexWinrar:OOLE:FileName := "progactive/Winrar.gif"
ACTIVATE WINDOW Winrar

ENDIF
Return Nil
Proc foxit
MyOut := MSGOKCANCEL("Â·  —Ìœ  ‰’Ì» «·»—‰«„Ã  ⁄·Ì ÃÂ«“ﬂ","Mr ABN Guide")
IF myout == False
MyOut := MSGExclamation(" ⁄“Ì“Ì «·„” Œœ„ ‰√”› ·« Ì„ﬂ‰  ‰’Ì» «·»—‰«„Ã  ·ﬁœ «Œ —  «·€«¡ ⁄„·Ì… «· À»Ì ","Mr ABN Guide")
Return 0
ENDIF
IF myout == True
MyOut := MSGExclamation("Â–« «·»—‰‹‹‹‹«„Ã  ‰’‹‹Ì» ’‹‹‹«„‹‹ ","Mr ABN Guide")
DEFINE WINDOW foxit ;
AT 10 ,10 ;
WIDTH 444 ;
HEIGHT 286 ;
ICON "back/prog/foxit.ico" ;
TITLE "Foxit PDF Reader ...(Mr AbOeLsOuD Programms)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

foxit.Center ( )
@ 86 ,-21 IMAGE imagefoxit1;
PICTURE "prog/foxit/foxit.jpg";
STRETCH ;
WIDTH 514 HEIGHT 162
@ 212 ,256 BUTTONEX btn1foxit;
CAPTION "Set Up";
FONTCOLOR {0,0,255};
ON CLICK getfoxit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 212 ,87 BUTTONEX btn2foxit;
CAPTION "Exit";
FONTCOLOR {255,0,128};
ON CLICK exitfoxit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveXfoxit
oActiveXfoxit := TActiveX():New( "foxit", "GIF89.Gif89.1" , 1 , 20 , 482 , 202)
oActiveXfoxit:Load()
END WINDOW

oactivexfoxit:OOLE:glass := .t.
oactivexfoxit:OOLE:autosize := .f.
oactivexfoxit:OOLE:FileName := "progactive/foxit.gif"
ACTIVATE WINDOW foxit

ENDIF
Return Nil
Proc winamp
MyOut := MSGOKCANCEL("Â·  —Ìœ  ‰’Ì» «·»—‰«„Ã    winamp","Mr ABN Guide")
IF myout == False
MyOut := MSGExclamation(" ⁄“Ì“Ì «·„” Œœ„ ‰√”› ·« Ì„ﬂ‰  ‰’Ì» «·»—‰«„Ã  winamp","Mr ABN Guide")
Return 0
ENDIF
IF myout == True
DEFINE WINDOW winamp ;
AT 10 ,10 ;
WIDTH 474 ;
HEIGHT 283 ;
ICON "back/prog/wi.ico" ;
TITLE "winamp 5.56  .........(Mr AbOeLsOuD Programms)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

winamp.Center ( )
@ 208 ,261 BUTTONEX btn1winamp;
CAPTION "Set Up";
FONTCOLOR {0,0,255};
ON CLICK getwinamp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 208 ,92 BUTTONEX btn2winamp;
CAPTION "Exit";
FONTCOLOR {255,0,128};
ON CLICK exitwinamp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveXwinamp
oActiveXwinamp := TActiveX():New( "winamp", "GIF89.Gif89.1" , 4 , 20 , 500 , 194)
oActiveXwinamp:Load()
END WINDOW

oactivexwinamp:OOLE:glass := .t.
oactivexwinamp:OOLE:autosize := .f.
oactivexwinamp:OOLE:FileName := "progactive/winamp.gif"
ACTIVATE WINDOW winamp

ENDIF
Return Nil
Proc exitreal
real.Release ( )
Return Nil
Proc exitjet
jet.Release ( )
Return Nil
Proc exitwinamp
winamp.Release ( )
Return Nil
Proc exitNero
Nero.Release ( )
Return Nil
Proc exittruet
truet.Release ( )
Return Nil
Proc exituiso
uiso.Release ( )
Return Nil
Proc exitfoxit
foxit.Release ( )
Return Nil
Proc exitWinrar
Winrar.Release ( )
Return Nil
Proc exitccleaner
ccleaner.Release ( )
Return Nil
Proc exg1
DEFINE WINDOW exg1 ;
AT 10 ,10 ;
WIDTH 747 ;
HEIGHT 502 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani " ;
BACKCOLOR {236,233,216} 

exg1.Center ( )
@ 61 ,9 FRAME Frame1exg1;
WIDTH 171 ;
HEIGHT 80 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 39 ,186 FRAME Frame2exg1;
WIDTH 544 ;
HEIGHT 202 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 402 ,6 FRAME Frame3exg1;
WIDTH 166 ;
HEIGHT 35 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 201 ,11 FRAME Frame4exg1;
WIDTH 167 ;
HEIGHT 125 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 246 ,23 BUTTONEX mysaveexg1;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveexg1()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 246 ,185 EDITBOX edit1exg1;
WIDTH 545 ;
HEIGHT 202;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 28 ,620 LABEL lbl1exg1 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 212 ,698 LABEL lbl2exg1 ;
VALUE "-1" ;
WIDTH 24 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 171 ,557 LABEL lbl3exg1 ;
VALUE "Ê‘œ… «· Ì«— «·„«— ›Ì „Ê’·" ;
WIDTH 172 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 191 ,608 LABEL lbl4exg1 ;
VALUE "-:Ê„‰ «·—”„ «ÊÃœ" ;
WIDTH 114 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 261 ,420 LABEL lbl5exg1 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,582 LABEL lbl6exg1 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 116 ,654 LABEL lbl7exg1 ;
VALUE "«·⁄·«ﬁ… »Ì‰" ;
WIDTH 70 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,230}
@ 22 ,377 LABEL lbl8exg1 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ -3 ,373 LABEL lbl9exg1 ;
VALUE "„”‹‹«∆· ⁄·Ì «·›’· «·√Ê·  ﬂÂ—»Ì…" ;
WIDTH 284 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 214 ,600 LABEL lbl10exg1 ;
VALUE "y & x ﬁÌ„… " ;
WIDTH 91 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {128,64,0}
@ 409 ,15 LABEL lbl12exg1 ;
VALUE "«·‰« Ã  =   (        ) «   " ;
WIDTH 150 ;
HEIGHT 24 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 215 ,307 LABEL lbl21exg1 ;
VALUE "«·„ﬁ«Ê„…  Ê«·„ﬁ«Ê„… «·‰Ê⁄Ì… Ê«· Ê’Ì·Ì… «·ﬂÂ—»Ì…" ;
WIDTH 247 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 172 ,189 LABEL lbl22exg1 ;
VALUE "Ê«· Ì«— ⁄·Ì «·«›ﬁÌ" ;
WIDTH 116 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,85,43}
@ 90 ,598 LABEL lbl23exg1 ;
VALUE "«·ÃœÊ· «· «·Ì ÌÊ÷Õ " ;
WIDTH 127 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 141 ,654 LABEL lbl24exg1 ;
VALUE "›—ﬁ «·ÃÂœ" ;
WIDTH 66 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 287 ,23 BUTTONEX btn6exg1;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadexg1()  ;
WIDTH 140 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 389 ,129 LABEL lbl25 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 168 ,302 LABEL lbl26 ;
VALUE "«—”„ «·⁄·«ﬁ… »Ì‰ ›—ﬁ «·ÃÂœ⁄·Ì («·—√”Ì )  " ;
WIDTH 253 ;
HEIGHT 33 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 208 ,23 BUTTONEX btnGRexg1;
CAPTION "—”„ «·„À«·";
FONTCOLOR {255,0,128};
BACKCOLOR {206,255,255};
ON CLICK exd1()  ;
WIDTH 140 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 41 ,190 IMAGE imagegrexg1;
PICTURE "exgdr/VI.bmp";
WIDTH 394 HEIGHT 133
@ 72 ,15 TEXTBOX text1exg1;
HEIGHT 57 ;
WIDTH 157 ;
READONLY ;
FONT "Arial" SIZE 25 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {215,0,215}
DEFINE TIMER Timer1exg1 INTERVAL 1000 ;
Action clockexg1()
@ 338 ,71 BUTTONEX btncalg1;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
END WINDOW

ACTIVATE WINDOW exg1

Return Nil
Proc exg2
DEFINE WINDOW exg2 ;
AT 10 ,10 ;
WIDTH 747 ;
HEIGHT 503 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani " ;
BACKCOLOR {236,233,216} 

exg2.Center ( )
@ 67 ,8 FRAME Frame1exg2;
WIDTH 169 ;
HEIGHT 67 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 39 ,186 FRAME Frame2exg2;
WIDTH 544 ;
HEIGHT 202 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 401 ,9 FRAME Frame3exg2;
WIDTH 161 ;
HEIGHT 40 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 155 ,6 FRAME Frame4exg2;
WIDTH 173 ;
HEIGHT 138 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 206 ,23 BUTTONEX mysaveexg2;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveexg2()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 254 ,187 EDITBOX edit1exg2;
WIDTH 543 ;
HEIGHT 198;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 28 ,620 LABEL lbl1exg2 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 212 ,698 LABEL lbl2exg2 ;
VALUE "-1" ;
WIDTH 24 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 171 ,557 LABEL lbl3exg2 ;
VALUE "Ê‘œ… «· Ì«— «·„«— ›Ì „Ê’·" ;
WIDTH 172 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 191 ,608 LABEL lbl4exg2 ;
VALUE "-:Ê„‰ «·—”„ «ÊÃœ" ;
WIDTH 114 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 261 ,420 LABEL lbl5exg2 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,582 LABEL lbl6exg2 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 116 ,654 LABEL lbl7exg2 ;
VALUE "«·⁄·«ﬁ… »Ì‰" ;
WIDTH 70 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,230}
@ 22 ,377 LABEL lbl8exg2 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ -3 ,373 LABEL lbl9exg2 ;
VALUE "„”‹‹«∆· ⁄·Ì «·›’· «·√Ê·  ﬂÂ—»Ì…" ;
WIDTH 284 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 214 ,600 LABEL lbl10exg2 ;
VALUE "«·ﬁ—«¡… «·Œÿ√" ;
WIDTH 91 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {128,64,0}
@ 410 ,13 LABEL lbl12exg2 ;
VALUE "«·‰« Ã = (         ) ¡" ;
WIDTH 151 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 211 ,561 LABEL lbl20exg2 ;
VALUE "-2" ;
WIDTH 25 ;
HEIGHT 27 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 215 ,307 LABEL lbl21exg2 ;
VALUE "«·„ﬁ«Ê„…  Ê«·„ﬁ«Ê„… «·‰Ê⁄Ì… Ê«· Ê’Ì·Ì… «·ﬂÂ—»Ì…" ;
WIDTH 247 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 172 ,189 LABEL lbl22exg2 ;
VALUE "Ê«· Ì«— ⁄·Ì «·«›ﬁÌ" ;
WIDTH 116 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,85,43}
@ 90 ,598 LABEL lbl23exg2 ;
VALUE "«·ÃœÊ· «· «·Ì ÌÊ÷Õ " ;
WIDTH 127 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 141 ,654 LABEL lbl24exg2 ;
VALUE "›—ﬁ «·ÃÂœ" ;
WIDTH 66 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 255 ,23 BUTTONEX btn6exg2;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadexg2 ()  ;
WIDTH 140 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 387 ,125 LABEL lbl25exg2 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 168 ,302 LABEL lbl26exg2 ;
VALUE "«—”„ «·⁄·«ﬁ… »Ì‰ ›—ﬁ «·ÃÂœ⁄·Ì («·—√”Ì )  " ;
WIDTH 253 ;
HEIGHT 33 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 161 ,23 BUTTONEX btnGRexg2;
CAPTION "—”„ «·„À«·";
FONTCOLOR {255,0,128};
BACKCOLOR {206,255,255};
ON CLICK exd2()  ;
WIDTH 140 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 41 ,190 IMAGE imagegrexg2;
PICTURE "exgdr/VI2.bmp";
WIDTH 394 HEIGHT 133
@ 72 ,15 TEXTBOX text1exg2;
HEIGHT 57 ;
WIDTH 157 ;
READONLY ;
FONT "Arial" SIZE 25 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {215,0,215}
DEFINE TIMER Timer1exg2 INTERVAL 1000 ;
Action clockexg2()
@ 325 ,71 BUTTONEX btncalg2;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
END WINDOW

ACTIVATE WINDOW exg2

Return Nil
Proc exg3
DEFINE WINDOW exg3 ;
AT 10 ,10 ;
WIDTH 747 ;
HEIGHT 504 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani " ;
BACKCOLOR {236,233,216} 

exg3.Center ( )
@ 66 ,11 FRAME Frame1exg3;
WIDTH 168 ;
HEIGHT 70 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 39 ,186 FRAME Frame2exg3;
WIDTH 544 ;
HEIGHT 202 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 407 ,10 FRAME Frame3exg3;
WIDTH 166 ;
HEIGHT 39 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 180 ,15 FRAME Frame4exg3;
WIDTH 155 ;
HEIGHT 146 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 235 ,30 BUTTONEX mysaveexg3;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveexg3()  ;
WIDTH 129 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 254 ,189 EDITBOX edit1exg3;
WIDTH 541 ;
HEIGHT 195;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 28 ,620 LABEL lbl1exg3 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 212 ,698 LABEL lbl2exg3 ;
VALUE "-1" ;
WIDTH 24 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 165 ,613 LABEL lbl3exg3 ;
VALUE "ÊÿÊ· «·„Ê’·" ;
WIDTH 93 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 191 ,608 LABEL lbl4exg3 ;
VALUE "-:Ê„‰ «·—”„ «ÊÃœ" ;
WIDTH 114 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 261 ,420 LABEL lbl5exg3 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,582 LABEL lbl6exg3 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 116 ,654 LABEL lbl7exg3 ;
VALUE "«·⁄·«ﬁ… »Ì‰" ;
WIDTH 70 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,230}
@ 22 ,377 LABEL lbl8exg3 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ -3 ,373 LABEL lbl9exg3 ;
VALUE "„”‹‹«∆· ⁄·Ì «·›’· «·√Ê·  ﬂÂ—»Ì…" ;
WIDTH 284 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 214 ,600 LABEL lbl10exg3 ;
VALUE "y & x ﬁÌ„… " ;
WIDTH 91 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {128,64,0}
@ 419 ,11 LABEL lbl12exg3 ;
VALUE "«·‰« Ã  =   (        ) «   " ;
WIDTH 158 ;
HEIGHT 24 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 211 ,561 LABEL lbl20exg3 ;
VALUE "-2" ;
WIDTH 25 ;
HEIGHT 27 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 215 ,307 LABEL lbl21exg3 ;
VALUE "«·„ﬁ«Ê„…  Ê«·„ﬁ«Ê„… «·‰Ê⁄Ì… Ê«· Ê’Ì·Ì… «·ﬂÂ—»Ì…" ;
WIDTH 247 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 173 ,235 LABEL lbl22exg3 ;
VALUE "Ê«·ÿÊ· ⁄·Ì «·√›ﬁÌ" ;
WIDTH 122 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 90 ,598 LABEL lbl23exg3 ;
VALUE "«·ÃœÊ· «· «·Ì ÌÊ÷Õ " ;
WIDTH 127 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 142 ,606 LABEL lbl24exg3 ;
VALUE "«·„ﬁ«Ê„… «·ﬂÂ—»Ì…" ;
WIDTH 109 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 288 ,30 BUTTONEX btn6exg3;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadexg3()  ;
WIDTH 129 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 400 ,131 LABEL lbl25exg3 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 166 ,359 LABEL lbl26exg3 ;
VALUE "«—”„ «·⁄·«ﬁ… »Ì‰ «·„ﬁ«Ê„… ⁄·Ì («·—√”Ì )  " ;
WIDTH 244 ;
HEIGHT 32 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 184 ,30 BUTTONEX btnGRexg3;
CAPTION "—”„ «·„À«·";
FONTCOLOR {255,0,128};
BACKCOLOR {206,255,255};
ON CLICK exd3()  ;
WIDTH 129 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 41 ,190 IMAGE imagegrexg3;
PICTURE "exgdr/rl.bmp";
WIDTH 394 HEIGHT 133
@ 72 ,15 TEXTBOX text1exg3;
HEIGHT 57 ;
WIDTH 157 ;
READONLY ;
FONT "Arial" SIZE 25 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {0,128,0}
DEFINE TIMER Timer1exg3 INTERVAL 1000 ;
Action clockexg3()
@ 339 ,77 BUTTONEX btncalg3;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
END WINDOW

ACTIVATE WINDOW exg3

Return Nil
Proc exd1
DEFINE WINDOW exd1 ;
AT 10 ,10 ;
WIDTH 808 ;
HEIGHT 612 ;
ICON "PWCTICON" ;
TITLE "»—„Ã… √/ √»Ê «·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/g.ani" ;
BACKCOLOR {236,233,216} 

exd1.Center ( )
@ 1 ,0 IMAGE imageexd1;
PICTURE "exgdr/vi.jpg";
STRETCH ;
WIDTH 797 HEIGHT 574
END WINDOW

ACTIVATE WINDOW exd1

Return Nil
Proc exd2
DEFINE WINDOW exd2 ;
AT 10 ,10 ;
WIDTH 808 ;
HEIGHT 612 ;
ICON "PWCTICON" ;
TITLE "»—„Ã… √/ √»Ê «·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/g.ani" ;
BACKCOLOR {236,233,216} 

exd2.Center ( )
@ -3 ,1 IMAGE imageexd2;
PICTURE "exgdr/vi2.jpg";
STRETCH ;
WIDTH 797 HEIGHT 574
END WINDOW

ACTIVATE WINDOW exd2

Return Nil
Proc exd3
DEFINE WINDOW exd3 ;
AT 10 ,10 ;
WIDTH 808 ;
HEIGHT 612 ;
ICON "PWCTICON" ;
TITLE "»—„Ã… √/ √»Ê «·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/g.ani" ;
BACKCOLOR {236,233,216} 

exd3.Center ( )
@ 1 ,0 IMAGE imageexd3;
PICTURE "exgdr/rl.jpg";
STRETCH ;
WIDTH 797 HEIGHT 574
END WINDOW

ACTIVATE WINDOW exd3

Return Nil
Proc EX1
DEFINE WINDOW ex1 ;
AT 10 ,10 ;
WIDTH 645 ;
HEIGHT 506 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur.ani " ;
BACKCOLOR {236,233,216} 

ex1.Center ( )
@ 65 ,7 FRAME Frame1ex1;
WIDTH 210 ;
HEIGHT 90 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 52 ,226 FRAME Frame2ex1;
WIDTH 403 ;
HEIGHT 162 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 410 ,3 FRAME Frame3ex1;
WIDTH 219 ;
HEIGHT 38 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 195 ,38 FRAME Frame4ex1;
WIDTH 146 ;
HEIGHT 109 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 206 ,44 BUTTONEX mysaveex1;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveex1()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 223 ,228 EDITBOX edit1ex1;
WIDTH 402 ;
HEIGHT 224;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 38 ,520 LABEL lbl1ex1 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 123 ,304 LABEL lbl2ex1 ;
VALUE "Ê„”«Õ… „ﬁÿ⁄Â" ;
WIDTH 86 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 96 ,269 LABEL lbl3ex1 ;
VALUE "Ê„ﬁ«Ê„ Â« «·œ«Œ·Ì…" ;
WIDTH 109 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,89,45}
@ 189 ,423 LABEL lbl4ex1 ;
VALUE "«Õ”» ‘œ… «· Ì«— «·„«— ›Ì «·œ«∆—…" ;
WIDTH 199 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 230 ,319 LABEL lbl5ex1 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,482 LABEL lbl6ex1 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 95 ,230 LABEL lbl7ex1 ;
VALUE "1.4 W" ;
WIDTH 39 ;
HEIGHT 29 ;
FONT "Symbol" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 32 ,277 LABEL lbl8ex1 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 4 ,295 LABEL lbl9ex1 ;
VALUE "„”«∆· ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 256 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 148 ,569 LABEL lbl10ex1 ;
VALUE "-4" ;
WIDTH 17 ;
HEIGHT 17 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {128,64,0}
@ 418 ,2 LABEL lbl12ex1 ;
VALUE "«·‰« Ã  =   (                   ) «   " ;
WIDTH 218 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 415 ,33 LABEL lbl20ex1 ;
VALUE "2.4 Amp" ;
WIDTH 69 ;
HEIGHT 31 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 161 ,538 LABEL lbl21ex1 ;
VALUE "5x10   cm2" ;
WIDTH 83 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 125 ,469 LABEL lbl22ex1 ;
VALUE "Ê’· ﬁÿ»«Â« »”·ﬂ ÿÊ·Â" ;
WIDTH 152 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,85,43}
@ 94 ,447 LABEL lbl23ex1 ;
VALUE "»ÿ«—Ì… ﬁÊ Â« «·œ«›⁄… «·ﬂÂ—»Ì…" ;
WIDTH 179 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 94 ,379 LABEL lbl24ex1 ;
VALUE "12Volt" ;
WIDTH 66 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 262 ,44 BUTTONEX btn6ex1;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadex1()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 397 ,175 LABEL lbl25ex1 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 120 ,399 LABEL lbl26ex1 ;
VALUE "120 Cm" ;
WIDTH 67 ;
HEIGHT 31 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 146 ,357 LABEL lbl27ex1 ;
VALUE "-8" ;
WIDTH 20 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 162 ,391 LABEL lbl28ex1 ;
VALUE "m" ;
WIDTH 17 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 160 ,374 LABEL lbl29ex1 ;
VALUE "W" ;
WIDTH 18 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 161 ,313 LABEL lbl30ex1 ;
VALUE "15 x 10 " ;
WIDTH 57 ;
HEIGHT 20 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 158 ,426 LABEL lbl31ex1 ;
VALUE "Ê„ﬁ«Ê„ Â «·‰Ê⁄Ì…" ;
WIDTH 106 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
@ 339 ,89 BUTTONEX btncal1;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
@ 77 ,14 TEXTBOX text1ex1;
HEIGHT 64 ;
WIDTH 194 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {215,0,215}
DEFINE TIMER Timer1ex1 INTERVAL 1000 ;
Action clockex1()
END WINDOW

ACTIVATE WINDOW ex1

Return Nil
Proc EX2
DEFINE WINDOW ex2 ;
AT 10 ,10 ;
WIDTH 653 ;
HEIGHT 511 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur.ani " ;
BACKCOLOR {236,233,216} 

ex2.Center ( )
@ 69 ,8 FRAME Frame1ex2;
WIDTH 208 ;
HEIGHT 85 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 48 ,228 FRAME Frame2ex2;
WIDTH 401 ;
HEIGHT 175 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 402 ,9 FRAME Frame3ex2;
WIDTH 199 ;
HEIGHT 43 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 221 ,19 FRAME Frame4ex2;
WIDTH 163 ;
HEIGHT 87 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 227 ,34 BUTTONEX mysaveex2;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveex2()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 237 ,228 EDITBOX edit1ex2;
WIDTH 401 ;
HEIGHT 210;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 38 ,520 LABEL lbl1ex2 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 166 ,371 LABEL lbl2ex2 ;
VALUE "ﬁÌ„… «·„ﬁ«Ê„… «·ﬂ·Ì… „⁄ «· Ê÷ÌÕ »«·—”„" ;
WIDTH 234 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 89 ,266 LABEL lbl3ex2 ;
VALUE "⁄·Ì «· — Ì»" ;
WIDTH 87 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,89,45}
@ 144 ,249 LABEL lbl4ex2 ;
VALUE "«Õ”»" ;
WIDTH 45 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 251 ,326 LABEL lbl5ex2 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,482 LABEL lbl6ex2 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 87 ,357 LABEL lbl7ex2 ;
VALUE "W" ;
WIDTH 39 ;
HEIGHT 29 ;
FONT "Symbol" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 32 ,277 LABEL lbl8ex2 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 4 ,295 LABEL lbl9ex2 ;
VALUE "„”«∆· ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 256 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 145 ,345 LABEL lbl10ex2 ;
VALUE "«·„ﬁ«Ê„… «·œ«Œ·Ì… ··»ÿ«—Ì…" ;
WIDTH 133 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {128,64,0}
@ 408 ,6 LABEL lbl12ex2 ;
VALUE "«·‰« Ã  =   (               ) «   " ;
WIDTH 198 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 407 ,38 LABEL lbl20ex2 ;
VALUE "27.5 W" ;
WIDTH 69 ;
HEIGHT 31 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 118 ,236 LABEL lbl21ex2 ;
VALUE "›Ì «·„ﬁ«Ê„« " ;
WIDTH 83 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 114 ,516 LABEL lbl22ex2 ;
VALUE "»„’œ—  Ì«— ‘œ Â" ;
WIDTH 111 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,85,43}
@ 88 ,504 LABEL lbl23ex2 ;
VALUE "Ê’·  «·„ﬁ«Ê„«  " ;
WIDTH 113 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 87 ,377 LABEL lbl24ex2 ;
VALUE "(30 &20 & 10)" ;
WIDTH 125 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 272 ,34 BUTTONEX btn6ex2;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadex2()  ;
WIDTH 135 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 387 ,165 LABEL lbl25ex2 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 111 ,325 LABEL lbl26ex2 ;
VALUE "Amp(0.05 & 0.2& 0.15)" ;
WIDTH 181 ;
HEIGHT 35 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 145 ,481 LABEL lbl27ex2 ;
VALUE "Ê«–« ⁄·„  «‰  " ;
WIDTH 68 ;
HEIGHT 19 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 146 ,317 LABEL lbl28ex2 ;
VALUE "(1)" ;
WIDTH 25 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 145 ,300 LABEL lbl29ex2 ;
VALUE "W" ;
WIDTH 18 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 144 ,556 LABEL lbl30ex2 ;
VALUE "⁄·Ì «· — Ì»" ;
WIDTH 66 ;
HEIGHT 21 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 191 ,482 LABEL lbl31ex2 ;
VALUE "«·ﬁÊ… «·œ«›⁄… «·ﬂÂ—»Ì…" ;
WIDTH 128 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
DEFINE TIMER Timer1ex2 INTERVAL 1000 ;
Action clockex2()
@ 339 ,89 BUTTONEX btncal2;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
@ 70 ,7 FRAME Frame2cal;
WIDTH 208 ;
HEIGHT 80 ;
FONT "arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 77 ,14 TEXTBOX text1ex2;
HEIGHT 64 ;
WIDTH 194 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW ex2

Return Nil
Proc EX3
DEFINE WINDOW ex3 ;
AT 10 ,10 ;
WIDTH 675 ;
HEIGHT 502 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur.ani " ;
BACKCOLOR {236,233,216} 

ex3.Center ( )
@ 52 ,256 FRAME Frame2ex3;
WIDTH 403 ;
HEIGHT 162 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 410 ,-4 FRAME Frame3ex3;
WIDTH 254 ;
HEIGHT 37 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 233 ,25 FRAME Frame4ex3;
WIDTH 177 ;
HEIGHT 87 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 237 ,42 BUTTONEX mysaveex3;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveex3()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 223 ,258 EDITBOX edit1ex3;
WIDTH 402 ;
HEIGHT 224;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 38 ,550 LABEL lbl1ex3 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 97 ,327 LABEL lbl2ex3 ;
VALUE "»⁄œ« „ﬁÿ⁄Â" ;
WIDTH 68 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 136 ,605 LABEL lbl3ex3 ;
VALUE "ÊÿÊ·Â" ;
WIDTH 50 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,89,45}
@ 184 ,257 LABEL lbl4ex3 ;
VALUE "«Õ”» „ﬁ«Ê„ Â  «–« ﬂ«‰ ›—ﬁ «·ÃÂœ „Ê’· ⁄·Ì «·„ﬁÿ⁄ «·ÿÊ·Ì" ;
WIDTH 373 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 230 ,349 LABEL lbl5ex3 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,512 LABEL lbl6ex3 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 135 ,553 LABEL lbl7ex3 ;
VALUE "40 cm" ;
WIDTH 52 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 32 ,307 LABEL lbl8ex3 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 4 ,325 LABEL lbl9ex3 ;
VALUE "„”«∆· ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 256 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 183 ,632 LABEL lbl10ex3 ;
VALUE "À„" ;
WIDTH 20 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {255,0,255}
@ 418 ,0 LABEL lbl12ex3 ;
VALUE "«·‰« Ã  =   (                     ) «Ê„   " ;
WIDTH 248 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 414 ,34 LABEL lbl20ex3 ;
VALUE "10  -   2.5 x10" ;
WIDTH 131 ;
HEIGHT 29 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 164 ,540 LABEL lbl21ex3 ;
VALUE "«Õ”» „ﬁ«Ê„ Â" ;
WIDTH 83 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 414 ,152 LABEL lbl22ex3 ;
VALUE "-7" ;
WIDTH 19 ;
HEIGHT 19 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 96 ,396 LABEL lbl23ex3 ;
VALUE "ﬁ÷Ì» ÕœÌœ ⁄·Ì ÂÌ∆… „ Ê«“Ì „” ÿÌ·« " ;
WIDTH 260 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 94 ,257 LABEL lbl24ex3 ;
VALUE " 2x2 cm" ;
WIDTH 68 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 283 ,42 BUTTONEX btn6ex3;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadex3()  ;
WIDTH 135 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 397 ,205 LABEL lbl25ex3 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 411 ,54 LABEL lbl26ex3 ;
VALUE "-4" ;
WIDTH 19 ;
HEIGHT 18 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 125 ,421 LABEL lbl27ex3 ;
VALUE "-7" ;
WIDTH 20 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 136 ,381 LABEL lbl28ex3 ;
VALUE "m" ;
WIDTH 17 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 135 ,363 LABEL lbl29ex3 ;
VALUE "W" ;
WIDTH 18 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 137 ,399 LABEL lbl30ex3 ;
VALUE "10" ;
WIDTH 35 ;
HEIGHT 20 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 134 ,446 LABEL lbl31ex3 ;
VALUE "Ê„ﬁ«Ê„ Â «·‰Ê⁄Ì…" ;
WIDTH 106 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
DEFINE TIMER Timer1ex3 INTERVAL 1000 ;
Action clockex3()
@ 339 ,89 BUTTONEX btncal3;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
@ 70 ,7 FRAME Frame3cal;
WIDTH 208 ;
HEIGHT 80 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 77 ,14 TEXTBOX text1ex3;
HEIGHT 64 ;
WIDTH 194 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {128,0,128}
END WINDOW

ACTIVATE WINDOW ex3

Return Nil
Proc EX4
DEFINE WINDOW ex4 ;
AT 10 ,10 ;
WIDTH 650 ;
HEIGHT 497 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani " ;
BACKCOLOR {236,233,216} 

ex4.Center ( )
@ 52 ,226 FRAME Frame2ex4;
WIDTH 403 ;
HEIGHT 162 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 400 ,6 FRAME Frame3ex4;
WIDTH 214 ;
HEIGHT 42 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 225 ,17 FRAME Frame4ex4;
WIDTH 154 ;
HEIGHT 101 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 238 ,24 BUTTONEX mysaveex4;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveex4()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 223 ,228 EDITBOX edit1ex4;
WIDTH 402 ;
HEIGHT 224;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 38 ,520 LABEL lbl1ex4 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 92 ,351 LABEL lbl2ex4 ;
VALUE "Ê„”«Õ… „ﬁÿ⁄Â" ;
WIDTH 97 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 127 ,237 LABEL lbl3ex4 ;
VALUE "«œŒ· ÷„‰ œ«∆—… ›„— »Â  Ì«—" ;
WIDTH 181 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,89,45}
@ 183 ,419 LABEL lbl4ex4 ;
VALUE "›Â· Â‰«ﬂ Œÿ√ ›Ì ﬁ—«¡ Â √„ ·«" ;
WIDTH 195 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 230 ,319 LABEL lbl5ex4 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,482 LABEL lbl6ex4 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 153 ,245 LABEL lbl7ex4 ;
VALUE "20.5 v" ;
WIDTH 52 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 32 ,277 LABEL lbl8ex4 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 4 ,295 LABEL lbl9ex4 ;
VALUE "„”«∆· ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 256 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 77 ,271 LABEL lbl10ex4 ;
VALUE "-4" ;
WIDTH 18 ;
HEIGHT 21 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {0,0,255}
@ 407 ,11 LABEL lbl12ex4 ;
VALUE "«·‰« Ã  =   (           ) «Ê„   " ;
WIDTH 198 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 147 ,290 LABEL lbl20ex4 ;
VALUE " Ê’· ›Ê· „Ì — »ÿ—›Ì «·”·ﬂ ›ﬂ«‰  ﬁ—«¡ Â" ;
WIDTH 274 ;
HEIGHT 31 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 95 ,236 LABEL lbl21ex4 ;
VALUE "5X10" ;
WIDTH 57 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {0,0,255}
@ 153 ,563 LABEL lbl22ex4 ;
VALUE "2 Amp" ;
WIDTH 59 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 91 ,517 LABEL lbl23ex4 ;
VALUE "”·ﬂ „‰ Ÿ„ ÿÊ·Â " ;
WIDTH 108 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 91 ,443 LABEL lbl24ex4 ;
VALUE "125 cm" ;
WIDTH 68 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 288 ,24 BUTTONEX btn6ex4;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadex4()  ;
WIDTH 135 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 387 ,175 LABEL lbl25ex4 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 95 ,299 LABEL lbl26ex4 ;
VALUE "cm2" ;
WIDTH 35 ;
HEIGHT 21 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 114 ,481 LABEL lbl27ex4 ;
VALUE "-7" ;
WIDTH 20 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 130 ,435 LABEL lbl28ex4 ;
VALUE "m" ;
WIDTH 17 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 129 ,419 LABEL lbl29ex4 ;
VALUE "W" ;
WIDTH 18 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 131 ,456 LABEL lbl30ex4 ;
VALUE "4 x10" ;
WIDTH 40 ;
HEIGHT 19 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 128 ,518 LABEL lbl31ex4 ;
VALUE "Ê„ﬁ«Ê„ Â «·‰Ê⁄Ì…" ;
WIDTH 106 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
DEFINE TIMER Timer1ex4 INTERVAL 1000 ;
Action clockex4()
@ 340 ,69 BUTTONEX btncal4;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
@ 70 ,7 FRAME Frame4cal;
WIDTH 208 ;
HEIGHT 80 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 77 ,14 TEXTBOX text1ex4;
HEIGHT 64 ;
WIDTH 194 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {97,97,48}
END WINDOW

ACTIVATE WINDOW ex4

Return Nil
Proc EX5
DEFINE WINDOW ex5 ;
AT 10 ,10 ;
WIDTH 668 ;
HEIGHT 503 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani " ;
BACKCOLOR {236,233,216} 

ex5.Center ( )
@ 52 ,246 FRAME Frame2ex5;
WIDTH 403 ;
HEIGHT 162 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 407 ,2 FRAME Frame3ex5;
WIDTH 238 ;
HEIGHT 42 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 184 ,41 FRAME Frame4ex5;
WIDTH 159 ;
HEIGHT 94 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 194 ,52 BUTTONEX mysaveex5;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveex5()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 223 ,248 EDITBOX edit1ex5;
WIDTH 402 ;
HEIGHT 224;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 38 ,540 LABEL lbl1ex5 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 92 ,265 LABEL lbl2ex5 ;
VALUE "„’‰Ê⁄ „‰ ”»Ìﬂ… " ;
WIDTH 116 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 153 ,408 LABEL lbl3ex5 ;
VALUE "«· Ê’Ì·Ì… «·ﬂÂ—»Ì… ·„«œ… Â–« «·”·ﬂ" ;
WIDTH 211 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,89,45}
@ 181 ,327 LABEL lbl4ex5 ;
VALUE "«·ÿÊ· «·«“„ „‰ «·”·ﬂ ·«” Œœ«„Â ﬂ„ﬁ«Ê„… ﬁÌ„ Â«" ;
WIDTH 293 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 252 ,339 LABEL lbl5ex5 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,502 LABEL lbl6ex5 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 93 ,396 LABEL lbl7ex5 ;
VALUE "0.1 mm" ;
WIDTH 59 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 32 ,297 LABEL lbl8ex5 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 4 ,315 LABEL lbl9ex5 ;
VALUE "„”«∆· ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 256 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 154 ,623 LABEL lbl10ex5 ;
VALUE "--1" ;
WIDTH 20 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {255,0,255}
@ 416 ,2 LABEL lbl12ex5 ;
VALUE "«·‰« Ã =(                         ) « " ;
WIDTH 228 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 123 ,389 LABEL lbl21ex5 ;
VALUE "«Õ”»" ;
WIDTH 50 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 412 ,102 LABEL lbl22ex5 ;
VALUE "6" ;
WIDTH 19 ;
HEIGHT 19 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 93 ,457 LABEL lbl23ex5 ;
VALUE "”·ﬂ „⁄œ‰Ì „⁄“Ê· ﬁÿ— „ﬁÿ⁄Â" ;
WIDTH 186 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 177 ,255 LABEL lbl24ex5 ;
VALUE "200 W" ;
WIDTH 56 ;
HEIGHT 27 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 236 ,52 BUTTONEX btn6ex5;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadex5()  ;
WIDTH 135 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 397 ,185 LABEL lbl25ex5 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 183 ,621 LABEL lbl26ex5 ;
VALUE "--2" ;
WIDTH 24 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,164} ;
FONTCOLOR {255,0,128}
@ 111 ,507 LABEL lbl27ex5 ;
VALUE "-7" ;
WIDTH 20 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 126 ,461 LABEL lbl28ex5 ;
VALUE "m" ;
WIDTH 17 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 122 ,443 LABEL lbl29ex5 ;
VALUE "W" ;
WIDTH 18 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 125 ,481 LABEL lbl30ex5 ;
VALUE "5 x10" ;
WIDTH 47 ;
HEIGHT 23 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 125 ,534 LABEL lbl31ex5 ;
VALUE "Ê„ﬁ«Ê„ Â «·‰Ê⁄Ì…" ;
WIDTH 106 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
@ 224 ,365 LABEL lbl32ex5 ;
VALUE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
WIDTH 159 ;
HEIGHT 34 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {193,255,255} ;
FONTCOLOR {255,0,255}
@ 425 ,126 LABEL lbl33ex5 ;
VALUE "m" ;
WIDTH 14 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 415 ,137 LABEL lbl34ex5 ;
VALUE "-1" ;
WIDTH 14 ;
HEIGHT 13 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 424 ,108 LABEL lbl35ex5 ;
VALUE "W" ;
WIDTH 15 ;
HEIGHT 20 ;
FONT "Symbol" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 413 ,115 LABEL lbl36ex5 ;
VALUE "-1" ;
WIDTH 15 ;
HEIGHT 15 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 143 ,290 LABEL lbl37ex5 ;
VALUE "3.14" ;
WIDTH 47 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 134 ,253 LABEL lbl38ex5 ;
VALUE "p =" ;
WIDTH 34 ;
HEIGHT 31 ;
FONT "Symbol" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
DEFINE TIMER Timer1ex5 INTERVAL 1000 ;
Action clockex5()
@ 312 ,91 BUTTONEX btncal5;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
@ 70 ,17 FRAME Frame5cal;
WIDTH 208 ;
HEIGHT 80 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 77 ,24 TEXTBOX text1ex5;
HEIGHT 64 ;
WIDTH 194 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {128,0,255}
@ 424 ,30 LABEL lbl39ex5 ;
VALUE "3.15m-2x10" ;
WIDTH 73 ;
HEIGHT 23 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
END WINDOW

ACTIVATE WINDOW ex5

Return Nil
Proc EX6
DEFINE WINDOW ex6 ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 515 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani " ;
BACKCOLOR {236,233,216} 

ex6.Center ( )
@ 52 ,276 FRAME Frame2ex6;
WIDTH 403 ;
HEIGHT 162 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 409 ,2 FRAME Frame3ex6;
WIDTH 264 ;
HEIGHT 38 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 216 ,31 FRAME Frame4ex6;
WIDTH 166 ;
HEIGHT 99 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 224 ,48 BUTTONEX mysaveex6;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveex6()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 223 ,278 EDITBOX edit1ex6;
WIDTH 402 ;
HEIGHT 224;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 38 ,570 LABEL lbl1ex6 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 92 ,329 LABEL lbl2ex6 ;
VALUE "24 &16 &8" ;
WIDTH 97 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 168 ,548 LABEL lbl3ex6 ;
VALUE " Ì«— ﬂ· „ﬁ«Ê„…" ;
WIDTH 98 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,89,45}
@ 189 ,512 LABEL lbl4ex6 ;
VALUE "›—ﬁ «·ÃÂœ »Ì‰ ÿ—›ÌÂ«" ;
WIDTH 137 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 252 ,369 LABEL lbl5ex6 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,532 LABEL lbl6ex6 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 125 ,284 LABEL lbl7ex6 ;
VALUE "√„»Ì—" ;
WIDTH 34 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 32 ,327 LABEL lbl8ex6 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 4 ,345 LABEL lbl9ex6 ;
VALUE "„”«∆· ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 256 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 164 ,653 LABEL lbl10ex6 ;
VALUE "--1" ;
WIDTH 20 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {255,0,255}
@ 417 ,-8 LABEL lbl12ex6 ;
VALUE "«·‰« Ã =(                               ) « " ;
WIDTH 270 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 419 ,98 LABEL lbl20ex6 ;
VALUE "128 V" ;
WIDTH 49 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 140 ,624 LABEL lbl21ex6 ;
VALUE "«Õ”»" ;
WIDTH 50 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 425 ,145 LABEL lbl22ex6 ;
VALUE "--" ;
WIDTH 18 ;
HEIGHT 14 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 91 ,433 LABEL lbl23ex6 ;
VALUE "»Ì‰ ﬂÌ›  Ê’· À·«À… „ﬁ«Ê„«  „ﬁœ«—Â„" ;
WIDTH 241 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 116 ,409 LABEL lbl24ex6 ;
VALUE " W" ;
WIDTH 28 ;
HEIGHT 27 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 272 ,48 BUTTONEX btn6ex6;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadex6()  ;
WIDTH 135 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 396 ,219 LABEL lbl25ex6 ;
VALUE "Result" ;
WIDTH 44 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 193 ,651 LABEL lbl26ex6 ;
VALUE "--2" ;
WIDTH 24 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,164} ;
FONTCOLOR {255,0,128}
@ 101 ,205 LABEL lbl27ex6 ;
VALUE "" ;
WIDTH 20 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {233,233,233} ;
FONTCOLOR {0,0,0}
@ 420 ,9 LABEL lbl28ex6 ;
VALUE "AMP" ;
WIDTH 31 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 92 ,297 LABEL lbl29ex6 ;
VALUE "W" ;
WIDTH 22 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 122 ,319 LABEL lbl30ex6 ;
VALUE "8" ;
WIDTH 22 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {229,229,229} ;
FONTCOLOR {0,0,0}
@ 118 ,478 LABEL lbl31ex6 ;
VALUE "»ÕÌÀ  ﬂÊ‰ ﬁÌ„… «·„ﬁ«Ê„… «·ﬂ·Ì…" ;
WIDTH 194 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
@ 224 ,395 LABEL lbl32ex6 ;
VALUE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
WIDTH 159 ;
HEIGHT 34 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {193,255,255} ;
FONTCOLOR {255,0,255}
@ 421 ,152 LABEL lbl33ex6 ;
VALUE "48 V" ;
WIDTH 42 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 101 ,239 LABEL lbl34ex6 ;
VALUE "" ;
WIDTH 14 ;
HEIGHT 13 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 421 ,85 LABEL lbl35ex6 ;
VALUE "--" ;
WIDTH 15 ;
HEIGHT 20 ;
FONT "Symbol" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 419 ,37 LABEL lbl36ex6 ;
VALUE "8--2--6" ;
WIDTH 49 ;
HEIGHT 24 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 119 ,340 LABEL lbl37ex6 ;
VALUE "Ê‘œ… «· Ì«— " ;
WIDTH 71 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 114 ,441 LABEL lbl38ex6 ;
VALUE "22" ;
WIDTH 30 ;
HEIGHT 31 ;
FONT "Symbol" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
DEFINE TIMER Timer1ex6 INTERVAL 1000 ;
Action clockex6()
@ 339 ,89 BUTTONEX btncal6;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
@ 70 ,7 FRAME Frame6cal;
WIDTH 208 ;
HEIGHT 80 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 77 ,14 TEXTBOX text1ex6;
HEIGHT 64 ;
WIDTH 194 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {187,187,0}
END WINDOW

ACTIVATE WINDOW ex6

Return Nil
Proc EX7
DEFINE WINDOW ex7 ;
AT 10 ,10 ;
WIDTH 658 ;
HEIGHT 506 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani " ;
BACKCOLOR {236,233,216} 

ex7.Center ( )
@ 52 ,236 FRAME Frame2ex7;
WIDTH 403 ;
HEIGHT 162 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 407 ,18 FRAME Frame3ex7;
WIDTH 208 ;
HEIGHT 40 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 188 ,34 FRAME Frame4ex7;
WIDTH 184 ;
HEIGHT 93 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 202 ,59 BUTTONEX mysaveex7;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveex7()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 223 ,238 EDITBOX edit1ex7;
WIDTH 402 ;
HEIGHT 224;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 38 ,530 LABEL lbl1ex7 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 85 ,308 LABEL lbl2ex7 ;
VALUE "Êﬁÿ—Â" ;
WIDTH 46 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 148 ,286 LABEL lbl3ex7 ;
VALUE "”·ﬂ Ê«Õœ „‰ ‰›” «·„«œ… Ê·Â ‰›” «·ÿÊ·" ;
WIDTH 250 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,89,45}
@ 147 ,538 LABEL lbl4ex7 ;
VALUE "ﬁÿ— " ;
WIDTH 34 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 252 ,329 LABEL lbl5ex7 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,492 LABEL lbl6ex7 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 87 ,351 LABEL lbl7ex7 ;
VALUE "m" ;
WIDTH 18 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 32 ,287 LABEL lbl8ex7 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 4 ,305 LABEL lbl9ex7 ;
VALUE "„”«∆· ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 256 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 143 ,612 LABEL lbl10ex7 ;
VALUE "ﬂ„ " ;
WIDTH 20 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {255,0,255}
@ 418 ,23 LABEL lbl12ex7 ;
VALUE "«·‰« Ã =(                  ) « " ;
WIDTH 197 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 459 ,6 LABEL lbl20ex7 ;
VALUE "" ;
WIDTH 12 ;
HEIGHT 17 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 113 ,280 LABEL lbl21ex7 ;
VALUE "( R )" ;
WIDTH 38 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 90 ,248 LABEL lbl22ex7 ;
VALUE "m" ;
WIDTH 19 ;
HEIGHT 19 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 86 ,400 LABEL lbl23ex7 ;
VALUE " ”⁄… √”·«ﬂ „‰ «·‰Õ«” ÿÊ· ﬂ· „‰Â«" ;
WIDTH 235 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 179 ,541 LABEL lbl24ex7 ;
VALUE "Ê‰›” «·„ﬁ«Ê„…" ;
WIDTH 88 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 246 ,59 BUTTONEX btn6ex7;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadex7()  ;
WIDTH 135 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 397 ,185 LABEL lbl25ex7 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 145 ,573 LABEL lbl26ex7 ;
VALUE "ÌﬂÊ‰" ;
WIDTH 37 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,164} ;
FONTCOLOR {255,0,128}
@ 181 ,515 LABEL lbl27ex7 ;
VALUE "ø" ;
WIDTH 21 ;
HEIGHT 23 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 416 ,70 LABEL lbl28ex7 ;
VALUE "„ —" ;
WIDTH 33 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {157,97,30}
@ 115 ,257 LABEL lbl29ex7 ;
VALUE "W" ;
WIDTH 18 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 115 ,320 LABEL lbl30ex7 ;
VALUE "· ﬂÊÌ‰ ”·ﬂ Ê«Õœ „ﬁ«Ê„ Â" ;
WIDTH 157 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 111 ,474 LABEL lbl31ex7 ;
VALUE "Ê’·  „⁄« ⁄·Ì «· Ê«“Ì" ;
WIDTH 153 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
@ 224 ,355 LABEL lbl32ex7 ;
VALUE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
WIDTH 159 ;
HEIGHT 34 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {193,255,255} ;
FONTCOLOR {255,0,255}
@ 85 ,269 LABEL lbl33ex7 ;
VALUE "( d )" ;
WIDTH 37 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 416 ,122 LABEL lbl34ex7 ;
VALUE "d" ;
WIDTH 21 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 64 ,271 LABEL lbl35ex7 ;
VALUE "" ;
WIDTH 15 ;
HEIGHT 20 ;
FONT "Symbol" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 417 ,101 LABEL lbl36ex7 ;
VALUE "3" ;
WIDTH 19 ;
HEIGHT 24 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,255}
@ 87 ,369 LABEL lbl37ex7 ;
VALUE "( L )" ;
WIDTH 31 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 111 ,201 LABEL lbl38ex7 ;
VALUE "" ;
WIDTH 34 ;
HEIGHT 31 ;
FONT "Symbol" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
DEFINE TIMER Timer1ex7 INTERVAL 1000 ;
Action clockex7()
@ 344 ,98 BUTTONEX btncal7;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
@ 80 ,17 FRAME Frame7cal;
WIDTH 208 ;
HEIGHT 80 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 87 ,24 TEXTBOX text1ex7;
HEIGHT 64 ;
WIDTH 194 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {0,128,255}
END WINDOW

ACTIVATE WINDOW ex7

Return Nil
Proc EX8
DEFINE WINDOW ex8 ;
AT 10 ,10 ;
WIDTH 661 ;
HEIGHT 510 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani " ;
BACKCOLOR {236,233,216} 

ex8.Center ( )
@ 52 ,236 FRAME Frame2ex8;
WIDTH 403 ;
HEIGHT 162 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 411 ,41 FRAME Frame3ex8;
WIDTH 142 ;
HEIGHT 37 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 228 ,31 FRAME Frame4ex8;
WIDTH 178 ;
HEIGHT 92 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64} ;
OPAQUE ;
TRANSPARENT 

@ 236 ,52 BUTTONEX mysaveex8;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveex8()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 223 ,238 EDITBOX edit1ex8;
WIDTH 402 ;
HEIGHT 224;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 38 ,530 LABEL lbl1ex8 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 144 ,315 LABEL lbl2ex8 ;
VALUE "Ì„— ›Ì «·œ«∆—… ›ﬂ«‰ ›—ﬁ «·ÃÂœ »Ì‰ ÿ—›Ì √Ì „ﬁ«Ê„…" ;
WIDTH 317 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 90 ,272 LABEL lbl3ex8 ;
VALUE "Cm" ;
WIDTH 35 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,89,45}
@ 187 ,425 LABEL lbl4ex8 ;
VALUE "„ﬁ«Ê„… ﬂ· ”·ﬂ" ;
WIDTH 104 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 230 ,329 LABEL lbl5ex8 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,492 LABEL lbl6ex8 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 418 ,64 LABEL lbl7ex8 ;
VALUE "W --" ;
WIDTH 28 ;
HEIGHT 23 ;
FONT "Symbol" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 32 ,287 LABEL lbl8ex8 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 4 ,305 LABEL lbl9ex8 ;
VALUE "„”«∆· ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 256 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 148 ,255 LABEL lbl10ex8 ;
VALUE "Volt" ;
WIDTH 28 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {128,64,0}
@ 412 ,0 LABEL lbl12ex8 ;
VALUE "" ;
WIDTH 27 ;
HEIGHT 18 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 415 ,45 LABEL lbl20ex8 ;
VALUE "4" ;
WIDTH 19 ;
HEIGHT 29 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 171 ,548 LABEL lbl21ex8 ;
VALUE "«Õ”‹‹‹‹»" ;
WIDTH 83 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 116 ,423 LABEL lbl22ex8 ;
VALUE "Ê’·  ⁄·Ì «· Ê«“Ì ›«–«⁄·„  √‰" ;
WIDTH 210 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,85,43}
@ 89 ,429 LABEL lbl23ex8 ;
VALUE "À·«À… √”·«ﬂ „‰ ‰›” «·‰Ê⁄ ÿÊ·Â«" ;
WIDTH 206 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 88 ,307 LABEL lbl24ex8 ;
VALUE "( 48 - 24 - 16)" ;
WIDTH 122 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 281 ,52 BUTTONEX btn6ex8;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadex8()  ;
WIDTH 135 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 397 ,135 LABEL lbl25ex8 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 112 ,358 LABEL lbl26ex8 ;
VALUE " Ì«— ‘œ Â" ;
WIDTH 67 ;
HEIGHT 31 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 119 ,296 LABEL lbl27ex8 ;
VALUE "Amp" ;
WIDTH 29 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,128,255}
@ 420 ,96 LABEL lbl28ex8 ;
VALUE "6 --12" ;
WIDTH 45 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 420 ,146 LABEL lbl29ex8 ;
VALUE "W" ;
WIDTH 18 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 117 ,328 LABEL lbl30ex8 ;
VALUE "3" ;
WIDTH 25 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 145 ,291 LABEL lbl31ex8 ;
VALUE "6" ;
WIDTH 25 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
DEFINE TIMER Timer1ex8 INTERVAL 1000 ;
Action clockex8()
@ 339 ,89 BUTTONEX btncal8;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
@ 70 ,7 FRAME Frame1cal;
WIDTH 208 ;
HEIGHT 80 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 77 ,14 TEXTBOX text1ex8;
HEIGHT 64 ;
WIDTH 194 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {128,0,0}
END WINDOW

ACTIVATE WINDOW ex8

Return Nil
Proc EX9
DEFINE WINDOW ex9 ;
AT 10 ,10 ;
WIDTH 715 ;
HEIGHT 507 ;
ICON "abni.ico" ;
TITLE "„”«∆· ⁄·Ì «·›’· «·«Ê· ﬂÂ—»Ì…  --Designed By Mr AbOeLsOuD (Physics Advisor ) " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani " ;
BACKCOLOR {236,233,216} 

ex9.Center ( )
@ 222 ,28 FRAME Frame1ex9;
WIDTH 179 ;
HEIGHT 100 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 52 ,248 FRAME Frame2ex9;
WIDTH 441 ;
HEIGHT 164 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
OPAQUE ;
TRANSPARENT 

@ 402 ,24 FRAME Frame3ex9;
WIDTH 187 ;
HEIGHT 44 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 233 ,46 BUTTONEX mysaveex9;
CAPTION "Õ›Ÿ «·Õ· ›Ì „·›";
FONTCOLOR {128,0,64};
ON CLICK mysaveex9 ()  ;
WIDTH 135 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 222 ,249 EDITBOX edit1ex9;
WIDTH 441 ;
HEIGHT 225;
FONT "Arial" SIZE 18 ;
BACKCOLOR {170,213,213} ;
FONTCOLOR {0,0,255}
@ 38 ,580 LABEL lbl1ex9 ;
VALUE "‰’ «·„”√·…" ;
WIDTH 113 ;
HEIGHT 40 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 133 ,284 LABEL lbl2ex9 ;
VALUE "œÊ‰ «‰  Õ —ﬁ  Ê÷Õ »«·—”„ ÿ—Ìﬁ…  Ê’Ì·Â« · ÕﬁÌﬁ Â–« «·€—÷" ;
WIDTH 393 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 229 ,421 LABEL lbl3ex9 ;
VALUE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
WIDTH 180 ;
HEIGHT 39 ;
FONT "Andalus" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,89,45}
@ 187 ,503 LABEL lbl4ex9 ;
VALUE "⁄·„« »√‰ „ﬁ«Ê„… «·„’»«Õ" ;
WIDTH 161 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {243,243,243} ;
FONTCOLOR {255,0,255}
@ 264 ,384 LABEL lbl5ex9 ;
VALUE "«ﬂ ‹‹‹» «·Õ· Â‰‹‹‹‹‹‹‹‹‹‹‹‹«" ;
WIDTH 227 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,206,157} ;
FONTCOLOR {255,0,128}
@ 68 ,542 LABEL lbl6ex9 ;
VALUE "----------------------------------------" ;
WIDTH 142 ;
HEIGHT 22 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 187 ,417 LABEL lbl7ex9 ;
VALUE "W " ;
WIDTH 28 ;
HEIGHT 23 ;
FONT "Symbol" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 32 ,337 LABEL lbl8ex9 ;
VALUE "**********************************" ;
WIDTH 282 ;
HEIGHT 12 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 4 ,355 LABEL lbl9ex9 ;
VALUE "„”«∆· ⁄·Ì «·›’· «·√Ê· ﬂÂ—»Ì…" ;
WIDTH 256 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 110 ,605 LABEL lbl10ex9 ;
VALUE "Volt" ;
WIDTH 28 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,168} ;
FONTCOLOR {128,64,0}
@ 412 ,29 LABEL lbl12ex9 ;
VALUE "«·‰« Ã  = (             ) «" ;
WIDTH 173 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 411 ,56 LABEL lbl20ex9 ;
VALUE "4" ;
WIDTH 19 ;
HEIGHT 29 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 164 ,598 LABEL lbl21ex9 ;
VALUE "À„ «Õ”‹‹‹‹»" ;
WIDTH 83 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,183} ;
FONTCOLOR {255,0,0}
@ 162 ,399 LABEL lbl22ex9 ;
VALUE "‘œ… «· Ì«— «·„«— ›Ì ﬂ·  „’»«Õ" ;
WIDTH 194 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,85,43}
@ 84 ,253 LABEL lbl23ex9 ;
VALUE "” … „’«»ÌÕ ﬂÂ—»Ì… „Ê’·… ⁄·Ì «· Ê«“Ì  ⁄„· ⁄·Ì „’œ— ﬁÊ Â «·œ«›⁄…" ;
WIDTH 432 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 107 ,636 LABEL lbl24ex9 ;
VALUE "100" ;
WIDTH 45 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 277 ,46 BUTTONEX btn6ex9;
CAPTION " Õ„Ì· «·Õ· „‰ „·›";
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
ON CLICK myloadex9 ()  ;
WIDTH 135 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 387 ,172 LABEL lbl25ex9 ;
VALUE "Result" ;
WIDTH 48 ;
HEIGHT 25 ;
FONT "Andalus" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 104 ,336 LABEL lbl26ex9 ;
VALUE "Ì—«œ  ‘€Ì·Â« ⁄·Ì „’œ— «Œ— ﬁÊ Â «·œ«›⁄…" ;
WIDTH 260 ;
HEIGHT 28 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 110 ,264 LABEL lbl27ex9 ;
VALUE "Volt" ;
WIDTH 29 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,128,255}
@ 416 ,75 LABEL lbl28ex9 ;
VALUE "Amp" ;
WIDTH 45 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 58 ,475 LABEL lbl29ex9 ;
VALUE "«“Â—  90" ;
WIDTH 62 ;
HEIGHT 22 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {255,191,191} ;
FONTCOLOR {0,128,64}
@ 187 ,454 LABEL lbl30ex9 ;
VALUE "240" ;
WIDTH 42 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 108 ,298 LABEL lbl31ex9 ;
VALUE "200" ;
WIDTH 37 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,64}
DEFINE TIMER Timer1ex9 INTERVAL 1000 ;
Action clockex9 ()
@ 339 ,89 BUTTONEX btncal9;
FONTCOLOR {128,0,255};
BACKCOLOR {239,199,227};
PICTURE "calc/cl.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK calc()  ;
WIDTH 33 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ Â‰« "
@ 70 ,7 FRAME Frame9cal;
WIDTH 208 ;
HEIGHT 80 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 77 ,14 TEXTBOX text1ex9;
HEIGHT 64 ;
WIDTH 194 ;
READONLY ;
FONT "Arial" SIZE 30 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {0,64,64}
END WINDOW

ACTIVATE WINDOW ex9

Return Nil
Proc mysaveex1
abn1 := ex1.edit1ex1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn1)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveex2
abn2 := ex2.edit1ex2.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn2)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveex3
abn3 := ex3.edit1ex3.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn3)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveex4
abn4 := ex4.edit1ex4.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn4)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveex5
abn5 := ex5.edit1ex5.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn5)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveex6
abn6 := ex6.edit1ex6.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn6)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveex7
abn7 := ex7.edit1ex7.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn7)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveex8
abn8 := ex8.edit1ex8.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn8)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveex9
abn9 := ex9.edit1ex9.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn9)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveexg1
abe1 := exg1.edit1exg1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abe1)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveexg2
abe2 := exg2.edit1exg2.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abe2)
FCLOSE(RPWI_TH)
Return Nil
Proc mysaveexg3
abe3 := exg3.edit1exg3.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «” »œ«·Â (Mr AbOeLsOuD)Ì«","«·„·› „ÊÃÊœ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abe3)
FCLOSE(RPWI_TH)
Return Nil
Proc myloadex1
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnl1 = MEMOREAD ( GetFile )
ex1.edit1ex1.Value := abnl1
Return Nil
Proc myloadex2
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnl2 = MEMOREAD ( GetFile )
ex2.edit1ex2.Value := abnl2
Return Nil
Proc myloadex3
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnl3 = MEMOREAD ( GetFile )
ex3.edit1ex3.Value := abnl3
Return Nil
Proc myloadex4
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnl4 = MEMOREAD ( GetFile )
ex4.edit1ex4.Value := abnl4
Return Nil
Proc myloadex5
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnl5 = MEMOREAD ( GetFile )
ex5.edit1ex5.Value := abnl5
Return Nil
Proc myloadex6
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnl6 = MEMOREAD ( GetFile )
ex6.edit1ex6.Value := abnl6
Return Nil
Proc myloadex7
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnl7 = MEMOREAD ( GetFile )
ex7.edit1ex7.Value := abnl7
Return Nil
Proc myloadex8
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnl8 = MEMOREAD ( GetFile )
ex8.edit1ex8.Value := abnl8
Return Nil
Proc myloadex9
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnl9 = MEMOREAD ( GetFile )
ex9.edit1ex9.Value := abnl9
Return Nil
Proc myloadexg1
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abld1 = MEMOREAD ( GetFile )
exg1.edit1exg1.Value := abld1
Return Nil
Proc myloadexg2
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abnld2 = MEMOREAD ( GetFile )
exg2.edit1exg2.Value := abld2
Return Nil
Proc myloadexg3
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·Õ· „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
abld3 = MEMOREAD ( GetFile )
exg3.edit1exg3.Value := abld3
Return Nil
Proc clockex1
mrabn1 = TIME()
ex1.text1ex1.Value := mrabn1
Return Nil
Proc clockex2
mrabn2 = TIME()
ex2.text1ex2.Value := mrabn2
Return Nil
Proc clockex3
mrabn3 = TIME()
ex3.text1ex3.Value := mrabn3
Return Nil
Proc clockex4
mrabn4 = TIME()
ex4.text1ex4.Value := mrabn4
Return Nil
Proc clockex5
mrabn5 = TIME()
ex5.text1ex5.Value := mrabn5
Return Nil
Proc clockex6
mrabn6 = TIME()
ex6.text1ex6.Value := mrabn6
Return Nil
Proc clockex7
mrabn7 = TIME()
ex7.text1ex7.Value := mrabn7
Return Nil
Proc clockex8
mrabn8 = TIME()
ex8.text1ex8.Value := mrabn8
Return Nil
Proc clockex9
mrabn9 = TIME()
ex9.text1ex9.Value := mrabn9
Return Nil
Proc clockexg1
mrabng1 = TIME()
exg1.text1exg1.Value := mrabng1
Return Nil
Proc clockexg2
mrabng2 = TIME()
exg2.text1exg2.Value := mrabng2
Return Nil
Proc clockexg3
mrabng3 = TIME()
exg3.text1exg3.Value := mrabng3
Return Nil
Proc winclock
DEFINE WINDOW winclock ;
AT 10 ,10 ;
WIDTH 539 ;
HEIGHT 223 ;
ICON "PWCTICON" ;
TITLE "PWCT Clock" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

winclock.Center ( )
@ 4 ,2 TEXTBOX text1time;
HEIGHT 156 ;
WIDTH 522 ;
READONLY ;
FONT "Arial" SIZE 85 ;
BOLD ;
TOOLTIP "«·Êﬁ  «·¬‰" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
NOTABSTOP ;
FONTCOLOR {215,0,215}
DEFINE TIMER Timer1winclock INTERVAL 1000 ;
Action tc4()
DEFINE STATUSBAR ;
BOLD 

DATE;
WIDTH 100 

CLOCK;
WIDTH 100;
AMPM 

KEYBOARD;
WIDTH 100 

END STATUSBAR

END WINDOW

ACTIVATE WINDOW winclock

Return Nil
Proc calc
Execute File "calc/abncal.exe"
Return Nil
Proc myplay1
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'open "t/1.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc mypause
CALLDLL32("mciSendString","winmm.dll",'pause MediaFile',nil,0,0)
Return Nil
Proc myresume
CALLDLL32("mciSendString","winmm.dll",'resume MediaFile',nil,0,0)
Return Nil
Proc myclose
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
Return Nil
Proc myplay2
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'open "t/2.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc myplay3
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'open "t/3.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc myplay4
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'open "t/4.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc getjet
Execute File "prog/jet/jetaudio.exe"
Return Nil
Proc getwinamp
Execute File "prog/winamp/winamp556.exe"
Return Nil
Proc getreal
MyOut := MSGBOX("«÷€ÿ ⁄·Ì „Ê«›ﬁ Ê«‰ Ÿ— »÷⁄ ÀÊ«‰Ì ","Mr ABN Guide")
Execute File "prog/real/realplayergold11.exe"
Return Nil
Proc getwinrar
Execute File "prog/winr/winrar.exe"
Return Nil
Proc getccleaner
Execute File "prog/ccleaner/cclean.exe"
Return Nil
Proc gettrue
MyOut := MSGBOX("»„Ã—œ «·÷€ÿ ⁄·Ì „Ê«›ﬁ ”Ê›  ’»Õ «·‰Ê«›– ‘›«›… ","Mr ABN Guide")
Execute File "prog/truetransparency/truetransparency.exe"
Return Nil
Proc getnero
MyOut := MSGBOX("«÷€ÿ ⁄·Ì „Ê«›ﬁ Ê«‰ Ÿ— »÷⁄ ÀÊ«‰Ì ","Mr ABN Guide")
Execute File "prog/nero/nero.exe"
Return Nil
Proc getultra
MyOut := MSGBOX("»⁄œ  ‘€Ì· «·»—‰«„Ã «‰”Œ «·«”„ Ê«·—ﬁ„ «·”—Ì Ê÷⁄Â„« ›Ì «·»—‰«„Ã","Mr ABN Guide")
Execute File "prog/uiso/ultraiso.exe"
Return Nil
Proc getfoxit
Execute File "prog/foxit/foxit.exe"
Return Nil
Proc TC1
DEFINE WINDOW TC1 ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 553 ;
ICON "PWCTICON" ;
TITLE "¬·… Õ«”»… ›·«‘ —Ê⁄… ........»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

TC1.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "tc1", "ShockwaveFlash.ShockwaveFlash.1" , 7 , 4 , 742 , 451)
oActiveX:Load()
@ 466 ,411 BUTTONEX btn1tc1;
CAPTION " ‘€Ì·";
FONTCOLOR {128,0,128};
PICTURE "FileName.BMP";
ON CLICK ptc1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 466 ,254 BUTTONEX btn2tc1;
CAPTION "Exit";
FONTCOLOR {255,0,0};
PICTURE "FileName.BMP";
ON CLICK exittc1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 176 ,32 LABEL lbl1tc1 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW TC1

Return Nil
Proc ptc1
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\prog\time\fc.swf" )
Return Nil
Proc exittc1
tc1.Release ( )
Return Nil
Proc TC2
DEFINE WINDOW TC2 ;
AT 10 ,10 ;
WIDTH 854 ;
HEIGHT 377 ;
ICON "PWCTICON" ;
TITLE "”‹‹‹‹‹‹«⁄… «Ìﬁ‹‹‹‹‹‹‹«› ........»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

TC2.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "tc2", "ShockwaveFlash.ShockwaveFlash.1" , 3 , 2 , 834 , 294)
oActiveX:Load()
@ 303 ,458 BUTTONEX btn1tc2;
CAPTION " ‘€Ì·";
FONTCOLOR {128,0,128};
PICTURE "FileName.BMP";
ON CLICK ptc2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 303 ,301 BUTTONEX btn2tc2;
CAPTION "Exit";
FONTCOLOR {255,0,0};
PICTURE "FileName.BMP";
ON CLICK exittc2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 99 ,89 LABEL lbl1tc2 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 670 ;
HEIGHT 86 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW TC2

Return Nil
Proc TC3
DEFINE WINDOW TC3 ;
AT 10 ,10 ;
WIDTH 623 ;
HEIGHT 534 ;
ICON "PWCTICON" ;
TITLE "”«⁄… ⁄ﬁ—» ›·«‘  ........»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

TC3.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "tc3", "ShockwaveFlash.ShockwaveFlash.1" , 4 , 3 , 605 , 452)
oActiveX:Load()
@ 461 ,335 BUTTONEX btn1tc3;
CAPTION " ‘€Ì·";
FONTCOLOR {128,0,128};
PICTURE "FileName.BMP";
ON CLICK ptc3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 461 ,178 BUTTONEX btn2tc3;
CAPTION "Exit";
FONTCOLOR {255,0,0};
PICTURE "FileName.BMP";
ON CLICK exittc3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 211 ,14 LABEL lbl1tc3 ;
VALUE "«÷€ÿ ⁄·Ì  ‘€Ì‹‹‹‹‹‹‹‹‹‹‹‹‹‹·" ;
WIDTH 564 ;
HEIGHT 75 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,91,46}
END WINDOW

ACTIVATE WINDOW TC3

Return Nil
Proc ptc2
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\prog\time\dgc.swf" )
Return Nil
Proc ptc3
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\prog\time\anc.swf" )
Return Nil
Proc exittc2
tc2.Release ( )
Return Nil
Proc exittc3
tc3.Release ( )
Return Nil
Proc tc4
mrabn = TIME()
winclock.text1time.Value := mrabn
Return Nil
Proc tc6
Execute File "calc/abncal.exe"
Return Nil
Proc tc7
Execute File "dclock/DigitalClock.exe"
Return Nil
Proc tc5
DEFINE WINDOW tc5 ;
AT 10 ,10 ;
WIDTH 326 ;
HEIGHT 474 ;
ICON "PWCTICON" ;
TITLE "PWCT Calculator  ......... ( Version 1)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

tc5.Center ( )
@ 15 ,52 TEXTBOX text1tc5;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 106 ,55 BUTTONEX btn1tc5;
CAPTION "1";
FONTCOLOR {0,0,0};
ON CLICK addnum("1")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 106 ,109 BUTTONEX btn2tc5;
CAPTION "2";
FONTCOLOR {0,0,0};
ON CLICK addnum("2")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 106 ,163 BUTTONEX btn3tc5;
CAPTION "3";
FONTCOLOR {0,0,0};
ON CLICK addnum("3")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 156 ,55 BUTTONEX btn4tc5;
CAPTION "4";
FONTCOLOR {0,0,0};
ON CLICK addnum("4")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 156 ,109 BUTTONEX btn5tc5;
CAPTION "5";
FONTCOLOR {0,0,0};
ON CLICK addnum("5")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 156 ,163 BUTTONEX btn6tc5;
CAPTION "6";
FONTCOLOR {0,0,0};
ON CLICK addnum("6")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,55 BUTTONEX btn7tc5;
CAPTION "7";
FONTCOLOR {0,0,0};
ON CLICK addnum("7")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,109 BUTTONEX btn8tc5;
CAPTION "8";
FONTCOLOR {0,0,0};
ON CLICK addnum("8")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,163 BUTTONEX btn9tc5;
CAPTION "9";
FONTCOLOR {0,0,0};
ON CLICK addnum("9")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,213 BUTTONEX btn0tc5;
CAPTION "0";
FONTCOLOR {0,0,0};
ON CLICK addnum("0")  ;
WIDTH 40 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 60 ,265 BUTTONEX btnplus;
CAPTION "+";
ON CLICK addsign("+")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 106 ,265 BUTTONEX btnmin;
CAPTION "-";
ON CLICK addsign("-")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 158 ,265 BUTTONEX btnmul;
CAPTION "*";
ON CLICK addsign("*")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,265 BUTTONEX btndiv;
CAPTION "/";
ON CLICK addsign("/")  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 15 ,265 BUTTONEX btnequal;
CAPTION "=";
ON CLICK result()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 60 ,163 BUTTONEX btnclear;
CAPTION "Clear";
ON CLICK clearall()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 20 ,10 LABEL lbl1tc5 ;
VALUE "Input" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 240 ,10 LABEL lbl2tc5 ;
VALUE "History" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 240 ,58 EDITBOX edit1tc5;
WIDTH 250 ;
HEIGHT 140;
READONLY ;
FONT "arial" SIZE 9 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 60 ,56 BUTTONEX btnbackspace;
CAPTION "Backspace";
ON CLICK backspace()  ;
WIDTH 92 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action myexittc5()
END POPUP
END MENU
END WINDOW

tc5.text1tc5.Enabled := .f.
ACTIVATE WINDOW tc5

Return Nil
Proc addnum( cNum )
mytext := tc5.text1tc5.Value
mytext = ALLTRIM ( mytext )
mytext := mytext + cnum
tc5.text1tc5.Value := mytext
Return Nil
Proc addsign( cSign )
mytext := tc5.text1tc5.Value
mytext = ALLTRIM ( mytext )
IF mytext == ""
Return 0
ENDIF
MyOut = Right(mytext,1)
IF myout != "+" .and. myout != "-" .and. myout != "*" .and. myout != "/"
mytext := mytext + csign
tc5.text1tc5.Value := mytext
ENDIF
Return Nil
Proc clearall
tc5.text1tc5.Value := ""
Return Nil
Proc result
myout := tc5.text1tc5.Value
myout = ALLTRIM ( myout )
IF myout == ""
Return 0
ENDIF
MyOut = Right(myout,1)
IF myout != "+" .and. myout != "-" .and. myout != "*" .and. myout != "/"
myout := tc5.text1tc5.Value
if .not. empty(tc5.Edit1tc5.VALUE)
tc5.Edit1tc5.VALUE := tc5.Edit1tc5.VALUE + CHR(13) + CHR(10) + myout
else
tc5.Edit1tc5.VALUE := myout
endif
myout := &myout
myout = STR ( myout )
myout = ALLTRIM ( myout )
if .not. empty(tc5.Edit1tc5.VALUE)
tc5.Edit1tc5.VALUE := tc5.Edit1tc5.VALUE + CHR(13) + CHR(10) + "---> " +myout
else
tc5.Edit1tc5.VALUE := "---> " +myout
endif
tc5.text1tc5.Value := myout
ENDIF
Return Nil
Proc backspace
mytext := tc5.text1tc5.Value
mytext = ALLTRIM ( mytext )
mycount  = LEN(mytext)
Mytext = Left(mytext,mycount-1)
tc5.text1tc5.Value := mytext
Return Nil
Proc myexittc5
tc5.Release ( )
Return Nil
Proc phpwctbooks
DEFINE WINDOW abbooks ;
AT 10 ,10 ;
WIDTH 501 ;
HEIGHT 345 ;
ICON "PWCTICON" ;
TITLE "”·”·… ﬂ » «·›Ì“Ì«¡ Ê ⁄·Ì„ «·»—„Ã… »œÊ‰ ﬂÊœ ··„» œ∆Ì‰" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {207,231,231} 

abbooks.Center ( )
@ 111 ,3 FRAME Frame1abbooks;
WIDTH 476 ;
HEIGHT 145 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 196 ,7 BUTTONEX btn1abbooks;
CAPTION "«·ﬂ «» «·—«»⁄";
FONTCOLOR {82,0,164};
ON CLICK abbook4()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 131 ,7 BUTTONEX btn2abbooks;
CAPTION "«·ﬂ «» «·√Ê·";
FONTCOLOR {82,0,164};
ON CLICK abbook1()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 197 ,164 BUTTONEX btn3abbooks;
CAPTION "«·ﬂ «» «·À«·À";
FONTCOLOR {82,0,164};
ON CLICK abbook3()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 131 ,164 BUTTONEX btn4abbooks;
CAPTION "PWCT  »—‰«„Ã";
FONTCOLOR {0,89,45};
ON CLICK abbook14nova()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 198 ,321 BUTTONEX btn6abbooks;
CAPTION "«·ﬂ «» «·À«‰Ì";
FONTCOLOR {82,0,164};
ON CLICK abbook2()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 131 ,321 BUTTONEX btn5abbooks;
CAPTION "»—‰«„Ã ·ﬁ—«¡… «·ﬂ »";
FONTCOLOR {202,101,0};
ON CLICK abbook5pdf()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 264 ,11 BUTTONEX btn7abbooks;
CAPTION "Exit";
FONTCOLOR {179,0,0};
ON CLICK abbookexit()  ;
WIDTH 61 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP "«÷€ÿ ·«€·«ﬁ «·‰«›–…"
@ 27 ,11 LABEL lbl1abbooks ;
VALUE "”·”·… «·›Ì“Ì«¡ Ê ⁄·„  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ ··„» œ∆Ì‰" ;
WIDTH 475 ;
HEIGHT 38 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
END WINDOW

ACTIVATE WINDOW abbooks

Return Nil
Proc abbook4
Execute File "BOOKS\PWCTPHY4.PDF"
Return Nil
Proc abbook1
Execute File "BOOKS\PWCTPHY1.PDF"
Return Nil
Proc abbook3
Execute File "BOOKS\PWCTPHY3.PDF"
Return Nil
Proc abbook14nova
Execute File "BOOKS\nova.PDF"
Return Nil
Proc abbook5pdf
Execute File "prog/foxit/foxit.exe"
Return Nil
Proc abbook2
Execute File "BOOKS\PWCTPHY2.PDF"
Return Nil
Proc abbookexit
abbooks.Release ( )
Return Nil
Proc contactabn
DEFINE WINDOW helpabn ;
AT 10 ,10 ;
WIDTH 537 ;
HEIGHT 490 ;
ICON "PWCTICON" ;
TITLE "PWCT Help   .........................(Mr AbOeLsOuD Help)" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,207,185} 

helpabn.Center ( )
@ 12 ,20 IMAGE image1;
PICTURE "help/help.jpg";
STRETCH ;
WIDTH 485 HEIGHT 356
@ 221,164 HYPERLINK Hyper1;
VALUE "                                           " ;
ADDRESS "http://mrabn.yoo7.com";
WIDTH 227 ;
HEIGHT 27 ;
FONT "Arial" ;
SIZE 14 ;
TOOLTIP "«÷€ÿ ··œŒÊ· «·Ì „Êﬁ⁄ √/√»Ê«·”⁄Êœ" ;
TRANSPARENT ;
HANDCURSOR 

@ 251,156 HYPERLINK Hyper2;
VALUE "                                              " ;
ADDRESS "http://www.mrabn.net.tf";
WIDTH 272 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" ;
SIZE 14 ;
TOOLTIP "«÷€ÿ ··œŒÊ· «·Ì „Êﬁ⁄ √/√»Ê«·”⁄Êœ" ;
TRANSPARENT ;
HANDCURSOR 

@ 311,236 HYPERLINK Hyper3;
VALUE "           " ;
ADDRESS "http://pwct.p2h.info";
WIDTH 69 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" ;
SIZE 14 ;
TOOLTIP "«÷€ÿ ··œŒÊ· «·Ì „‰ œÌ „œ—”… «·›Ì“Ì«¡ Ê«·»—„Ã… »œÊ‰ ﬂÊœ" ;
TRANSPARENT ;
HANDCURSOR 

@ 416 ,55 LABEL lbl1helpabn ;
VALUE "/" ;
WIDTH 16 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {47,94,94}
@ 416 ,72 LABEL lbl2helpabn ;
VALUE "0105234960" ;
WIDTH 128 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 376 ,6 LABEL lbl3helpabn ;
VALUE "Email:-(abn_feshofesho_s@yahoo.com)" ;
WIDTH 389 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 409 ,440 LABEL lbl4helpabn ;
VALUE "„Ê»«Ì·" ;
WIDTH 55 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,128,255}
@ 376 ,388 LABEL lbl5helpabn ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ì" ;
WIDTH 113 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,128,64}
@ 415 ,14 LABEL lbl6helpabn ;
VALUE "002" ;
WIDTH 43 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {193,0,0}
END WINDOW

ACTIVATE WINDOW helpabn

Return Nil
Proc contactmsf
DEFINE WINDOW helpmsf ;
AT 10 ,10 ;
WIDTH 619 ;
HEIGHT 475 ;
ICON "PWCTICON" ;
TITLE "PWCT Help   .........................(Eng/ Mahmoud Fayed Help)" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,221,255} 

helpmsf.Center ( )
@ 10 ,11 IMAGE image1;
PICTURE "help/msf.jpg";
STRETCH ;
WIDTH 583 HEIGHT 362
@ 273,210 HYPERLINK Hyper1msf;
VALUE "                                                           " ;
ADDRESS "http://pwct.p2h.info";
WIDTH 248 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" ;
SIZE 14 ;
TOOLTIP "«÷€ÿ ··œŒÊ· «·Ì „‰ œÌ «·»—„Ã… »œÊ‰ ﬂÊœ" ;
TRANSPARENT ;
HANDCURSOR 

@ 406 ,128 LABEL lbl1helpmsf ;
VALUE "hotmail" ;
WIDTH 78 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {47,94,94}
@ 407 ,200 LABEL lbl2helpmsf ;
VALUE "com" ;
WIDTH 46 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 376 ,6 LABEL lbl3helpmsf ;
VALUE "Email:-(msfclipper@yahoo.com)" ;
WIDTH 303 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 274 ,470 LABEL lbl4helpmsf ;
VALUE "«÷€ÿ Â‰«" ;
WIDTH 83 ;
HEIGHT 23 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,128,255}
@ 376 ,388 LABEL lbl5helpmsf ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ì" ;
WIDTH 113 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,128,64}
@ 404 ,13 LABEL lbl6helpmsf ;
VALUE "msfclipper@           . " ;
WIDTH 203 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {193,0,0}
END WINDOW

ACTIVATE WINDOW helpmsf

Return Nil
Proc contactsk
DEFINE WINDOW helpsk ;
AT 10 ,10 ;
WIDTH 583 ;
HEIGHT 338 ;
ICON "PWCTICON" ;
TITLE "PWCT Help   .........................(Mr / Sameh Kamel Help)" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {164,225,255} 

helpsk.Center ( )
@ 86,122 HYPERLINK Hyper1sk;
VALUE "„Êﬁ⁄ √ / ”«„Õ ﬂ«„· " ;
ADDRESS "http://samehsoft.co.cc/";
WIDTH 170 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" ;
SIZE 18 ;
TOOLTIP "«÷€ÿ ··œŒÊ· «·Ì „‰ œÌ √/ ”«„Õ ﬂ«„·" ;
TRANSPARENT ;
HANDCURSOR 

@ 223 ,453 LABEL lbl1helpsk ;
VALUE "»—Ìœ «·ﬂ —Ê‰Ì" ;
WIDTH 97 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {47,94,94}
@ 22 ,96 LABEL lbl2helpsk ;
VALUE "„⁄·Ê„«  «·« ’«· » √/ ”«„Õ ﬂ«„·" ;
WIDTH 370 ;
HEIGHT 42 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 176 ,113 LABEL lbl3helpsk ;
VALUE "Email:-(mrsameh1@gmail.com )" ;
WIDTH 302 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 92 ,312 LABEL lbl4helpsk ;
VALUE "«÷€ÿ Â‰«" ;
WIDTH 83 ;
HEIGHT 23 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,255}
@ 175 ,435 LABEL lbl5helpsk ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ì" ;
WIDTH 113 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,128,64}
@ 217 ,116 LABEL lbl6helpsk ;
VALUE "mr-sameh@msn.com <mr-sameh@msn.com>" ;
WIDTH 203 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {193,0,0}
END WINDOW

ACTIVATE WINDOW helpsk

Return Nil
Proc contactam
DEFINE WINDOW helpam ;
AT 10 ,10 ;
WIDTH 537 ;
HEIGHT 292 ;
ICON "PWCTICON" ;
TITLE "PWCT Help   .........................(Mr / Amine Debabsia Help)" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {215,215,0} 

helpam.Center ( )
@ 260 ,226 LABEL lbl1helpam ;
VALUE "" ;
WIDTH 97 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {47,94,94}
@ 63 ,80 LABEL lbl2helpam ;
VALUE "„⁄·Ê„«  «·« ’«· » √/√„Ì‰ œ»«»”ÌÂ" ;
WIDTH 370 ;
HEIGHT 42 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 179 ,98 LABEL lbl3helpam ;
VALUE "Email:-(aminedebabsia@gmail.com )" ;
WIDTH 346 ;
HEIGHT 36 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 131 ,207 LABEL lbl5helpam ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ì" ;
WIDTH 148 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 250 ,117 LABEL lbl6helpam ;
VALUE "" ;
WIDTH 23 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {193,0,0}
END WINDOW

ACTIVATE WINDOW helpam

Return Nil
Proc myteamcontact
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\help\team\intro\intro.swf" )
Return Nil
Proc teamcontact
DEFINE WINDOW teamcontact ;
AT 10 ,10 ;
WIDTH 844 ;
HEIGHT 577 ;
ON INIT myteamcontact ()  ;
ICON "PWCTICON" ;
TITLE "«·« ’«· ⁄·Ì ›—Ìﬁ ⁄„· „‘—Ê⁄  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,162,117} 

teamcontact.Center ( )
@ 453,55 HYPERLINK Hyper1;
ADDRESS "http://pwct.p2h.info";
WIDTH 404 ;
HEIGHT 36 ;
FONT "Arial" ;
SIZE 14 ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 499 ,365 BUTTONEX btn1team;
CAPTION "„/„Õ„Êœ ›«Ìœ";
FONTCOLOR {0,81,40};
ON CLICK contactmsf()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 499 ,49 BUTTONEX btn2team;
CAPTION "√/√»Ê«·”⁄Êœ";
FONTCOLOR {0,81,40};
ON CLICK contactabn()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 499 ,260 BUTTONEX btn3team;
CAPTION "√/”«„Õ ﬂ«„·";
FONTCOLOR {0,81,40};
ON CLICK contactsk()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 499 ,151 BUTTONEX btn4team;
CAPTION "√/√„Ì‰ œ»«»”ÌÂ";
FONTCOLOR {0,81,40};
ON CLICK contactam()  ;
WIDTH 105 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 503 ,508 LABEL lbl1team ;
VALUE "«·« ’«· ⁄·Ì «·»—Ìœ «·«·ﬂ —Ê‰Ì" ;
WIDTH 197 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,111,221}
@ 456 ,491 LABEL lbl2team ;
VALUE "«·« ’«· ⁄·Ì „Êﬁ⁄ «·»—„Ã…" ;
WIDTH 214 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 450 ,49 BUTTONEX btn5team;
CAPTION "«·„Êﬁ⁄ «·—”„Ì ··»—„Ã… »œÊ‰ ﬂÊœ";
FONTCOLOR {0,0,255};
WIDTH 416 HEIGHT 42 ;
FONT "Arial" SIZE 24 ;
BOLD ;
NOTABSTOP ;
TOOLTIP ""
Public oActiveX
oActiveX := TActiveX():New( "teamcontact", "ShockwaveFlash.ShockwaveFlash.1" , 5 , 1 , 822 , 440)
oActiveX:Load()
DEFINE Context MENU OF teamcontact
Set MenuStyle EXTENDED
MENUITEM "Hide Window" Action hide()
SEPARATOR
POPUP "Programms"
POPUP "Media"
MENUITEM "Jet Audio" Action jet()  IMAGE "mainmenu/j.bmp"
SEPARATOR
MENUITEM "Winamp 5.56" Action winamp()  IMAGE "mainmenu/winamp.bmp"
SEPARATOR
MENUITEM "Real 11" Action real()  IMAGE "mainmenu/real.bmp"
END POPUP
POPUP "System"
MENUITEM "Winrar 3.8" Action winrar()  IMAGE "mainmenu/winrar.bmp"
SEPARATOR
MENUITEM "Ccleaner" Action ccleaner()  IMAGE "mainmenu/cc.bmp"
SEPARATOR
MENUITEM "True Transparency" Action truet()  IMAGE "mainmenu/tt.bmp"
END POPUP
POPUP "CD/DVD"
MENUITEM "Nero 8" Action nero()  IMAGE "mainmenu/nero.bmp"
SEPARATOR
MENUITEM "Ultra Iso 9.2" Action uiso()  IMAGE "mainmenu/uiso.bmp"
END POPUP
POPUP "Library"
MENUITEM "PDF Reader" Action foxit()  IMAGE "MAINMENU/FOXIT.BMP"
SEPARATOR
MENUITEM "ﬂ » ﬁÌ„…" Action phpwctbooks()  IMAGE "MAINMENU/book.BMP"
END POPUP
END POPUP
POPUP "„”«∆·"
MENUITEM "„À«· 1" Action ex1()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 2" Action ex2()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 3" Action ex3()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 4" Action ex4()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 5" Action ex5()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 6" Action ex6()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 7" Action ex7()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 8" Action ex8()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 9" Action ex9()  IMAGE "mainmenu/ex.bmp"
END POPUP
POPUP "„”«∆· »Ì«‰Ì…"
MENUITEM "„À«· 1" Action exg1()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 2" Action exg2()  IMAGE "mainmenu/ex.bmp"
SEPARATOR
MENUITEM "„À«· 3" Action exg3()  IMAGE "mainmenu/ex.bmp"
END POPUP
POPUP "⁄·«ﬁ«  »Ì«‰Ì…"
MENUITEM "Q - t" Action pic5()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "R - L" Action pic4()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "W - Q" Action pic6()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "V - I" Action pic3()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "R - r2" Action pic2()  IMAGE "MAINMENU/EX.BMP"
SEPARATOR
MENUITEM "R - A" Action pic1()  IMAGE "MAINMENU/EX.BMP"
END POPUP
POPUP "Soft Music"
MENUITEM "1" Action myplay1()  IMAGE "MAINMENU/music.BMP"
SEPARATOR
MENUITEM "2" Action myplay2()  IMAGE "MAINMENU/music.BMP"
SEPARATOR
MENUITEM "3" Action myplay3()  IMAGE "MAINMENU/music.BMP"
SEPARATOR
MENUITEM "4" Action myplay4()  IMAGE "MAINMENU/music.BMP"
END POPUP
POPUP "PWCT Team"
MENUITEM "Eng/Mahmoud" Action contactmsf()  IMAGE "mainmenu/m.bmp"
SEPARATOR
MENUITEM "Mr/Sameh" Action contactsk()  IMAGE "mainmenu/m.bmp"
SEPARATOR
MENUITEM "Mr/Amine" Action contactam()  IMAGE "mainmenu/m.bmp"
SEPARATOR
MENUITEM "Mr/AbOeLsOuD" Action contactabn()  IMAGE "mainmenu/m.bmp"
END POPUP
MENUITEM "Close Window" Action close()  IMAGE "mainmenu/x.bmp"
END MENU
END WINDOW

ACTIVATE WINDOW teamcontact

Return Nil
Proc myinit
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'open "media/open.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc favweb
DEFINE WINDOW FAVWEB ;
AT 10 ,10 ;
WIDTH 585 ;
HEIGHT 392 ;
ICON "PWCTICON" ;
TITLE "„Ê«ﬁ⁄  Õ «Ã «·ÌÂ«" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,0} 

favweb.Center ( )
@ 99 ,304 IMAGE imageweb1;
PICTURE "WEB/1.jpg";
STRETCH ;
WIDTH 255 HEIGHT 54
@ 271 ,13 IMAGE imageweb2;
PICTURE "WEB/2.jpg";
STRETCH ;
WIDTH 255 HEIGHT 54
@ 185 ,13 IMAGE imageweb3;
PICTURE "WEB/3.jpg";
STRETCH ;
WIDTH 255 HEIGHT 54
@ 15 ,13 IMAGE imageweb4;
PICTURE "WEB/4.jpg";
STRETCH ;
WIDTH 255 HEIGHT 54
@ 99 ,13 IMAGE imageweb5;
PICTURE "WEB/5.jpg";
STRETCH ;
WIDTH 255 HEIGHT 54
@ 271 ,304 IMAGE imageweb6;
PICTURE "WEB/6.jpg";
STRETCH ;
WIDTH 255 HEIGHT 54
@ 185 ,304 IMAGE imageweb7;
PICTURE "WEB/7.jpg";
STRETCH ;
WIDTH 255 HEIGHT 54
@ 13 ,304 IMAGE imageweb8;
PICTURE "WEB/8.jpg";
STRETCH ;
WIDTH 255 HEIGHT 54
@ 25,326 HYPERLINK Hyperweb1;
ADDRESS "http://itwadi.com";
WIDTH 204 ;
HEIGHT 31 ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 283,326 HYPERLINK Hyperweb2;
ADDRESS "http://vb4arab.com/vb";
WIDTH 204 ;
HEIGHT 31 ;
FONT "Arial" ;
SIZE 9 ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 27,35 HYPERLINK Hyperweb4;
ADDRESS "http://www.ghost9.cjb.net";
WIDTH 204 ;
HEIGHT 28 ;
FONT "Arial" ;
SIZE 9 ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 111,35 HYPERLINK Hyperweb5;
ADDRESS "http://www.tariqel3lm.com/vb";
WIDTH 204 ;
HEIGHT 31 ;
FONT "Arial" ;
SIZE 9 ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 109,326 HYPERLINK Hyperweb6;
ADDRESS "http://pwct.p2h.info/vb";
WIDTH 204 ;
HEIGHT 31 ;
FONT "Arial" ;
SIZE 9 ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 284,35 HYPERLINK Hyperweb7;
ADDRESS "http://www.damasgate.com/vb";
WIDTH 204 ;
HEIGHT 31 ;
FONT "Arial" ;
SIZE 9 ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 196,35 HYPERLINK Hyperweb8;
ADDRESS "http://www.kutub.info/library/list.php?cat=81";
WIDTH 204 ;
HEIGHT 31 ;
FONT "Arial" ;
SIZE 9 ;
CLIENTEDGE ;
TRANSPARENT ;
HANDCURSOR 

@ 196 ,324 LABEL lbl1abnwebpresnt ;
VALUE "                                        " ;
ACTION abnwebpresnt()  ;
WIDTH 204 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CLIENTEDGE ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW FAVWEB

Return Nil
Proc abnwebpresnt
DEFINE WINDOW abnwebpresnt ;
AT 10 ,10 ;
WIDTH 725 ;
HEIGHT 517 ;
ON INIT mydoabnwebpresnt()  ;
ICON "PWCTICON" ;
TITLE "Presentation To Mr AbOeLsOuD Forum" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 

abnwebpresnt.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "abnwebpresnt", "ShockwaveFlash.ShockwaveFlash.1" , 9 , 8 , 696 , 420)
oActiveX:Load()
@ 432 ,26 FRAME Frame1abnwebpresnt;
WIDTH 84 ;
HEIGHT 39 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 433 ,114 FRAME Frame2abnwebpresnt;
WIDTH 300 ;
HEIGHT 37 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 436 ,34 BUTTONEX btn1abnwebpresnt;
CAPTION "Close";
FONTCOLOR {202,0,0};
ON CLICK mycloseabnwebpresnt()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP "«÷€ÿ ·«€·«ﬁ «·‰«›–…"
@ 436 ,118 LABEL lbl1abnwebpresnt ;
VALUE "«” ⁄—«÷ ›·«‘Ì ·„‰ œÌ √/√»Ê«·”⁄Êœ" ;
WIDTH 309 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW abnwebpresnt

Return Nil
Proc mydoabnwebpresnt
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\web\presnt\cdpresentation.swf" )
Return Nil
Proc mycloseabnwebpresnt
abnwebpresnt.Release ( )
Return Nil
Proc hide
win1.Hide ( )
Return Nil
Proc close
win1.Release ( )
Return Nil
Proc show
win1.Show ( )
Return Nil
Proc dedecate
Execute File "THANK\DEDECATE\THANKYOU.HTM"
Return Nil
Proc merci
Execute File "THANK\MERCI.HTM"
Return Nil
Proc explane
Execute File "explane/explane.htm"
Return Nil


End Of Resistance

INIT PROCEDURE Init_MR_ABOELSOUD_3SEC
START DOUBLES
Return
*-------------------------------------------------------------------*
