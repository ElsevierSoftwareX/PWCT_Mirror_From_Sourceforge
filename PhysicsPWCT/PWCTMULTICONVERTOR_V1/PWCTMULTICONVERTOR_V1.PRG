*---------------------------------------------------------------------------*
* Time : 03:50:39    Date : 07/19/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
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


Resistance R_PWCTMULTICONVERTOR_V1_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PWCTMULTICONVERTOR_V1_15speed1() code
set decimals to 4
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 675 ;
HEIGHT 489 ;
ON INIT myon()  ;
ICON "PWCTICON" ;
TITLE "„ÕÊ·«  «·ﬁÌ«”" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "mrabn/mrabn.ani" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "mrabn/pwct.ico" ;
NOTIFYTOOLTIP "PWCT_Multi Convertor" 

win1.Center ( )
DEFINE TAB Tab1;
AT 1 ,3;
WIDTH 661;
HEIGHT 405;
FONT "Tahoma" SIZE 9 ;
BOLD ;
FLAT ;
TOOLTIP ""
PAGE "œ—Ã… «·Õ—«—…"
@ 25 ,1 IMAGE image1;
PICTURE "mrabn/t.jpg";
STRETCH ;
WIDTH 656 HEIGHT 375
@ 198 ,437 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 102 ;
FONT "arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 198 ,287 TEXTBOX text2;
HEIGHT 36 ;
WIDTH 102 ;
FONT "arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 198 ,130 TEXTBOX text3;
HEIGHT 36 ;
WIDTH 102 ;
FONT "arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 288 ,216 BUTTONEX btn1;
CAPTION " ÕÊÌ·";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,64};
PICTURE "mrabn/c.BMP";
ON CLICK tconvertor()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 288 ,366 BUTTONEX btn2;
CAPTION "ÃœÌœ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,0};
PICTURE "mrabn/n.BMP";
ON CLICK tconvertorc()  ;
WIDTH 86 HEIGHT 37 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 242 ,437 LABEL lbl1 ;
VALUE "C" ;
WIDTH 100 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,0,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 242 ,130 LABEL lbl2 ;
VALUE "F" ;
WIDTH 100 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,0,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 242 ,287 LABEL lbl3 ;
VALUE "K" ;
WIDTH 100 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,0,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 27 ,130 LABEL lbl4www ;
VALUE " ÕÊÌ·«  œ—Ã«  «·Õ—«—…" ;
WIDTH 397 ;
HEIGHT 62 ;
FONT "Tahoma" SIZE 22  ;
BACKCOLOR {211,219,166} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 149 ,437 LABEL lbl5ww ;
VALUE "”·“ÌÊ”" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 149 ,130 LABEL lbl6ww ;
VALUE "›Â—‰ÂÌ " ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 149 ,287 LABEL lbl7ww ;
VALUE "ﬂ·›‰" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,255,128}
@ 333 ,216 BUTTONEX btn3;
CAPTION " ÕÊÌ·«  œ—Ã… «·’›—";
FONTCOLOR {255,255,128};
BACKCOLOR {0,128,64};
PICTURE "back/con.BMP";
ON CLICK myzero()  ;
WIDTH 236 HEIGHT 33 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 365 ,216 BUTTONEX btn44;
CAPTION "«·ﬁ«‰Ê‰ «·⁄«„ ·· —„Ê„ —« ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,128,255};
PICTURE "back/con.BMP";
ON CLICK therm()  ;
WIDTH 236 HEIGHT 32 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
END PAGE
PAGE "«·„”«›« "
@ 25 ,1 IMAGE image1l;
PICTURE "mrabn/t.jpg";
STRETCH ;
WIDTH 656 HEIGHT 375
@ 196 ,400 TEXTBOX text1l;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {117,0,234} ;
INPUTMASK ""
@ 196 ,266 TEXTBOX text2l;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {117,0,234} ;
INPUTMASK ""
@ 196 ,132 TEXTBOX text3l;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {117,0,234} ;
INPUTMASK ""
@ 288 ,215 BUTTONEX btn1l;
CAPTION " ÕÊÌ·";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/c.BMP";
ON CLICK lconvertor()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 288 ,350 BUTTONEX btn2l;
CAPTION "ÃœÌœ";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/n.BMP";
ON CLICK lclear()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 152 ,401 LABEL lbl1l ;
VALUE "”‰ Ì„ —" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 152 ,133 LABEL lbl2ll ;
VALUE "„··Ì„ —" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 152 ,267 LABEL lbl3l ;
VALUE "„‹‹‹ —" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 243 ,401 LABEL lbl5ll ;
VALUE "Cm" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,128,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
@ 243 ,133 LABEL lbl6ll ;
VALUE "mm" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,128,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
@ 243 ,267 LABEL lbl7ll ;
VALUE "m" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,128,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
@ 27 ,124 LABEL lbl4ll ;
VALUE " ÕÊÌ·«  «·„”‹‹‹‹‹«›« " ;
WIDTH 397 ;
HEIGHT 62 ;
FONT "Tahoma" SIZE 22  ;
BACKCOLOR {128,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
END PAGE
PAGE "«·ﬂ ·…"
@ 25 ,1 IMAGE image1m;
PICTURE "mrabn/t.jpg";
STRETCH ;
WIDTH 656 HEIGHT 375
@ 196 ,400 TEXTBOX text1m;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,64,0} ;
INPUTMASK ""
@ 196 ,266 TEXTBOX text2m;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,64,0} ;
INPUTMASK ""
@ 196 ,132 TEXTBOX text3m;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,64,0} ;
INPUTMASK ""
@ 288 ,215 BUTTONEX btn1m;
CAPTION " ÕÊÌ·";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/c.BMP";
ON CLICK mconvertor()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 288 ,350 BUTTONEX btn2m;
CAPTION "ÃœÌœ";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/n.BMP";
ON CLICK mclear()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 152 ,401 LABEL lbl1m ;
VALUE "Ã‹‹‹‹‹—«„" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 152 ,133 LABEL lbl2lm ;
VALUE "‰ÌÊ ‰" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 152 ,267 LABEL lbl3m ;
VALUE "ﬂÌ·ÊÃ—«„" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 27 ,124 LABEL lbl4lm ;
VALUE " ÕÊÌ·«   «·ﬂ ·…" ;
WIDTH 397 ;
HEIGHT 62 ;
FONT "Tahoma" SIZE 22  ;
BACKCOLOR {255,128,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 243 ,401 LABEL lbl5m ;
VALUE "gm" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {206,103,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,0,128}
@ 243 ,133 LABEL lbl6m ;
VALUE "N" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {206,103,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,0,128}
@ 243 ,267 LABEL lbl7lm ;
VALUE "kg" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {206,103,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,0,128}
END PAGE
PAGE "Ê“‰ «·Ã”„"
@ 25 ,-1 IMAGE image1me;
PICTURE "mrabn/t.jpg";
STRETCH ;
WIDTH 656 HEIGHT 375
@ 150 ,270 TEXTBOX text1me;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,128} ;
INPUTMASK ""
@ 150 ,138 TEXTBOX text2we;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,128} ;
INPUTMASK ""
@ 200 ,270 TEXTBOX text3mo;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 200 ,138 TEXTBOX text4wo;
HEIGHT 36 ;
WIDTH 102 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 288 ,215 BUTTONEX btn1me;
CAPTION " ÕÊÌ·";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/c.BMP";
ON CLICK meconvertor()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 288 ,350 BUTTONEX btn2me;
CAPTION "ÃœÌœ";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/n.BMP";
ON CLICK meclear()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 156 ,391 LABEL lbl1me ;
VALUE "⁄·Ì ”ÿÕ «·√—÷" ;
WIDTH 192 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {128,0,128} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 105 ,139 LABEL lbl2lme ;
VALUE "Ê“‰" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 105 ,270 LABEL lbl3me ;
VALUE "ﬂ ·…" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 27 ,124 LABEL lbl4lme ;
VALUE "  ÕÊÌ·«   «·ﬂ ·…  Ê«·Ê“‰" ;
WIDTH 397 ;
HEIGHT 62 ;
FONT "Tahoma" SIZE 22  ;
BACKCOLOR {255,128,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 206 ,390 LABEL lbl5me ;
VALUE "⁄·Ì ”ÿÕ «·ﬁ„—" ;
WIDTH 192 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 245 ,139 LABEL lbl6me ;
VALUE "N" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {206,103,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,0,128}
@ 245 ,270 LABEL lbl7lme ;
VALUE "kg" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {206,103,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,0,128}
@ 370 ,77 LABEL lbl8lme ;
VALUE "„/À2" ;
WIDTH 61 ;
HEIGHT 28 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,111,55} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
@ 339 ,77 LABEL lbl9lme ;
VALUE "„/À2" ;
WIDTH 61 ;
HEIGHT 28 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,111,55} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
@ 370 ,145 LABEL lbl10lme ;
VALUE "1.6333" ;
WIDTH 71 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
@ 339 ,145 LABEL lbl11lme ;
VALUE "9.8" ;
WIDTH 71 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 369 ,220 LABEL lbl12lme ;
VALUE "⁄Ã·… «·Ã«–»Ì… ⁄·Ì ”ÿÕ «·ﬁ„—" ;
WIDTH 292 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 339 ,220 LABEL lbl14lme ;
VALUE "⁄Ã·… «·Ã«–»Ì… ⁄·Ì ”ÿÕ «·«—÷" ;
WIDTH 292 ;
HEIGHT 29 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {128,0,128} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 339 ,520 LABEL lbl15lme ;
VALUE "„·ÕÊŸ« " ;
WIDTH 86 ;
HEIGHT 58 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,64,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END PAGE
PAGE "«·ÿ«ﬁ…/ Ã‹‹‹‹—«„"
@ 25 ,1 IMAGE image1le;
PICTURE "mrabn/t.jpg";
STRETCH ;
WIDTH 656 HEIGHT 375
@ 150 ,89 TEXTBOX text1j;
HEIGHT 36 ;
WIDTH 292 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} ;
INPUTMASK ""
@ 196 ,88 TEXTBOX text2cal;
HEIGHT 36 ;
WIDTH 292 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} ;
INPUTMASK ""
@ 238 ,88 TEXTBOX text3mev;
HEIGHT 36 ;
WIDTH 292 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {117,0,234} ;
INPUTMASK ""
@ 103 ,89 TEXTBOX text4grm;
HEIGHT 36 ;
WIDTH 82 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 288 ,215 BUTTONEX btn1le;
CAPTION " ÕÊÌ·";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/c.BMP";
ON CLICK nuconvertor()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 288 ,350 BUTTONEX btn2le;
CAPTION "ÃœÌœ";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/n.BMP";
ON CLICK nuclear()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 152 ,483 LABEL lbl1le ;
VALUE "ÃÊ·" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 238 ,483 LABEL lbl2lle ;
VALUE "„ « ›" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 195 ,483 LABEL lbl3le ;
VALUE "”⁄—" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,128,192} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 106 ,483 LABEL lbl5lle ;
VALUE "«·ÊÕœ…" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {128,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 105 ,175 LABEL lbl6lle ;
VALUE "Â‰«" ;
WIDTH 41 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,160} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
@ 106 ,220 LABEL lbl7lle ;
VALUE "√œŒ· ﬁÌ„… «·ﬂ ·… »«·Ã—«„" ;
WIDTH 251 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {128,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 27 ,124 LABEL lbl4lle ;
VALUE " ÕÊÌ·«   «·ÿ«ﬁ… «·‰ÊÊÌ…" ;
WIDTH 397 ;
HEIGHT 62 ;
FONT "Tahoma" SIZE 22  ;
BACKCOLOR {128,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
@ 156 ,388 LABEL lbl11EE ;
VALUE "X" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 200 ,388 LABEL lbl12EE ;
VALUE "X" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,128,255}
@ 242 ,388 LABEL lbl13EE ;
VALUE "X" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 155 ,407 LABEL lbl14EE ;
VALUE "10" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 242 ,407 LABEL lbl15EE ;
VALUE "10" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 199 ,408 LABEL lbl16EE ;
VALUE "10" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,128,255}
@ 187 ,431 LABEL lbl17EE ;
VALUE "13" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Times New Roman" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,128,255}
@ 146 ,430 LABEL lbl18EE ;
VALUE "13" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Times New Roman" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 231 ,429 LABEL lbl19EE ;
VALUE "26" ;
WIDTH 29 ;
HEIGHT 20 ;
FONT "Times New Roman" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 36 ,13 LABEL lbl58lle ;
VALUE "Ã‹‹—«„" ;
WIDTH 90 ;
HEIGHT 44 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
END PAGE
PAGE "«·ÿ«ﬁ…/ Ê.ﬂ.–"
@ 25 ,1 IMAGE image1le2;
PICTURE "mrabn/t.jpg";
STRETCH ;
WIDTH 656 HEIGHT 375
@ 150 ,89 TEXTBOX text1j2;
HEIGHT 36 ;
WIDTH 292 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} ;
INPUTMASK ""
@ 196 ,88 TEXTBOX text2cal2;
HEIGHT 36 ;
WIDTH 292 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} ;
INPUTMASK ""
@ 238 ,88 TEXTBOX text3mev2;
HEIGHT 36 ;
WIDTH 292 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {117,0,234} ;
INPUTMASK ""
@ 103 ,89 TEXTBOX text4amu;
HEIGHT 36 ;
WIDTH 112 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 288 ,215 BUTTONEX btn1le2;
CAPTION " ÕÊÌ·";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/c.BMP";
ON CLICK nu2convertor()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 288 ,350 BUTTONEX btn2le2;
CAPTION "ÃœÌœ";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/n.BMP";
ON CLICK nu2clear()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 152 ,483 LABEL lbl1le2 ;
VALUE "ÃÊ·" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 238 ,483 LABEL lbl2lle2 ;
VALUE "„ « ›" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 195 ,483 LABEL lbl3le2 ;
VALUE "”⁄—" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,128,192} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 106 ,483 LABEL lbl5lle2 ;
VALUE "«·ÊÕœ…" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {128,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 105 ,205 LABEL lbl6lle2 ;
VALUE "Â‰«" ;
WIDTH 41 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,160} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
@ 105 ,247 LABEL lbl7lle2 ;
VALUE "√œŒ· ﬁÌ„… «·ﬂ ·… Ê.ﬂ.–" ;
WIDTH 231 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {128,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 27 ,124 LABEL lbl4lle2 ;
VALUE " ÕÊÌ·«   «·ÿ«ﬁ… «·‰ÊÊÌ…" ;
WIDTH 397 ;
HEIGHT 62 ;
FONT "Tahoma" SIZE 22  ;
BACKCOLOR {128,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,255,255}
@ 156 ,388 LABEL lbl11EE2 ;
VALUE "X" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 200 ,388 LABEL lbl12EE2 ;
VALUE "X" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,128,255}
@ 242 ,388 LABEL lbl13EE2 ;
VALUE "" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 155 ,407 LABEL lbl14EE2 ;
VALUE "10" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 242 ,407 LABEL lbl15EE2 ;
VALUE "" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 199 ,408 LABEL lbl16EE2 ;
VALUE "10" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,128,255}
@ 187 ,431 LABEL lbl17EE2 ;
VALUE "- 11" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Times New Roman" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,128,255}
@ 143 ,431 LABEL lbl18EE2 ;
VALUE "- 10" ;
WIDTH 34 ;
HEIGHT 23 ;
FONT "Times New Roman" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 230 ,429 LABEL lbl19EE2 ;
VALUE "" ;
WIDTH 29 ;
HEIGHT 20 ;
FONT "Times New Roman" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 30 ,5 LABEL lbl58lle2 ;
VALUE "Ê. ﬂ .–" ;
WIDTH 96 ;
HEIGHT 46 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
END PAGE
PAGE "«·÷€ÿ «·ÃÊÌ"
@ 25 ,0 IMAGE image1mep;
PICTURE "mrabn/t.jpg";
STRETCH ;
WIDTH 656 HEIGHT 375
@ 158 ,401 TEXTBOX text1pa;
HEIGHT 36 ;
WIDTH 192 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,128} ;
INPUTMASK ""
@ 93 ,209 TEXTBOX text2cm;
HEIGHT 36 ;
WIDTH 192 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255} ;
INPUTMASK ""
@ 158 ,19 TEXTBOX text3mm;
HEIGHT 36 ;
WIDTH 192 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,64} ;
INPUTMASK ""
@ 287 ,354 TEXTBOX text4m;
HEIGHT 36 ;
WIDTH 192 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {102,102,255} ;
INPUTMASK ""
@ 212 ,209 TEXTBOX text5nm;
HEIGHT 36 ;
WIDTH 192 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
@ 287 ,63 TEXTBOX text6bar;
HEIGHT 36 ;
WIDTH 192 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 350 ,268 BUTTONEX btn1pa;
CAPTION " ÕÊÌ·";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/c.BMP";
ON CLICK paconvertor()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,57 BUTTONEX btn3pa;
CAPTION "—”„  Ê÷ÌÕÌ";
FONTCOLOR {128,255,255};
BACKCOLOR {128,0,0};
PICTURE "back/con.BMP";
ON CLICK mypadr()  ;
WIDTH 134 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,398 BUTTONEX btn2pa;
CAPTION "ÃœÌœ";
FONTCOLOR {128,255,0};
BACKCOLOR {128,0,255};
PICTURE "mrabn/n.BMP";
ON CLICK paclear()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 28 ,173 LABEL lbl1pa ;
VALUE " ÕÊÌ·«  «·÷€ÿ" ;
WIDTH 258 ;
HEIGHT 52 ;
FONT "Tahoma" SIZE 22  ;
BACKCOLOR {128,0,128} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 289 ,19 LABEL lbl2pa ;
VALUE "Bar" ;
WIDTH 42 ;
HEIGHT 31 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 252 ,273 LABEL lbl3pa ;
VALUE "N/m2" ;
WIDTH 52 ;
HEIGHT 31 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 124 ,82 LABEL lbl4pa ;
VALUE "mm" ;
WIDTH 42 ;
HEIGHT 31 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 134 ,283 LABEL lbl5pa ;
VALUE "Cm" ;
WIDTH 42 ;
HEIGHT 31 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 124 ,504 LABEL lbl6pa ;
VALUE "Pa" ;
WIDTH 42 ;
HEIGHT 31 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 289 ,550 LABEL lbl7pa ;
VALUE "m" ;
WIDTH 42 ;
HEIGHT 31 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END PAGE
END TAB
DEFINE MAIN MENU of win1
Set MenuStyle EXTENDED
POPUP "File"
MENUITEM "Exit" Action win1exit()
END POPUP
POPUP "Guide"
MENUITEM "Symbol Guide" Action myguide()
END POPUP
POPUP "PWCT Logo"
MENUITEM "PWCT Logo" Action myon()
END POPUP
POPUP "About"
MENUITEM "Designer" Action myabout()
END POPUP
POPUP "Help"
MENUITEM "How Can I Use This Convertor" Action myhow()
END POPUP
END MENU
DEFINE TOOLBAR Toolbar1;
BUTTONSIZE 665 , 13 ;
FONT "Tahoma" ;
SIZE 12 ;
BOLD ;
TOOLTIP "«÷€ÿ Â‰« ·„⁄—›… «·—„Ê“ Ê«·«Œ ’«—« " ;
BOTTOM ;
BORDER 

BUTTON toolbarbtn1;
CAPTION "Click - - - - - - > Mr AbOeLsOuD Symbol Guide (For Convertor)" ;
ON CLICK myguide()  ;
TOOLTIP "" ;
SEPARATOR 

END TOOLBAR

DEFINE Context MENU OF win1
MENUITEM "Clear" Action myclear()
SEPARATOR
MENUITEM "Convert Guide" Action myguide()
SEPARATOR
MENUITEM "Explane Convertor" Action myhow()
SEPARATOR
MENUITEM "About Designer" Action myabout()
SEPARATOR
MENUITEM "PWCT Logo" Action myon()
SEPARATOR
MENUITEM "Close" Action win1exit()
END MENU
DEFINE NOTIFY MENU OF win1
MENUITEM "Clear" Action myclear()
SEPARATOR
MENUITEM "PWCT Logo" Action myon()
SEPARATOR
MENUITEM "Convert Guide" Action myguide()
SEPARATOR
MENUITEM "Explane Convertor" Action myhow()
SEPARATOR
MENUITEM "About Designer" Action myabout()
SEPARATOR
MENUITEM "Close" Action win1exit()
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc pconvertorclean
win1.text8.Value := 0
win1.text9.Value := 0
win1.text10.Value := 0
win1.text11.Value := 0
win1.text12.Value := 0
win1.text13.Value := 0
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/new.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc myon
if !iswindowdefined( win1intro )
DEFINE WINDOW win1intro ;
AT 10 ,10 ;
WIDTH 578 ;
HEIGHT 402 ;
ON INIT drawchart()  ;
ON MOUSEMOVE myonfo()  ;
ICON "PWCTICON" ;
TITLE "" ;
CHILD ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

win1intro.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "Win1intro", "RMChart.RMChartX" , 7 , 11 , 547 , 384)
oActiveX:Load()
END WINDOW

ACTIVATE WINDOW win1intro
EndIF

Return Nil
Proc drawchart
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
oactivex:OOLE:font := "Tahoma"
oactivex:OOLE:RMCstyle := 5
oactivex:OOLE:RMCUserWatermark := "PWCT"
oactivex:OOLE:addregion ( )
oactivex:OOLE:region(1):footer := "http://doublesvsoop.sourceforge.net/forum"
oactivex:OOLE:region(1):addcaption ( )
oactivex:OOLE:region(1):caption():titel := "PWCT Multi Convertor" + CHR(13) + CHR(10) + "Enjoy It"
oactivex:OOLE:region(1):caption():fontsize := 22
oactivex:OOLE:region(1):caption():bold := .t.
oactivex:OOLE:region(1) :addgridlessseries ( )
oactivex:OOLE:region(1):gridlessseries:SeriesStyle := 53
oactivex:OOLE:region(1):gridlessseries:Alignment := 0
oactivex:OOLE:region(1):gridlessseries:Explodemode := 0
oactivex:OOLE:region(1):gridlessseries:Lucent := .F.
oactivex:OOLE:region(1):gridlessseries:ValueLabelOn := 0
oactivex:OOLE:region(1):gridlessseries:HatchMode := 0
oactivex:OOLE:region(1):gridlessseries:StartAngle := 0
oactivex:OOLE:region(1):gridlessseries:DataString := "120*120*120"
oactivex:OOLE:draw ( .T. )
Return Nil
Proc myonfo
win1intro.Release ( )
Return Nil
Proc tconvertor
tc = VAL ( win1.text1.value )
tk = VAL ( win1.text2.value )
tf = VAL ( win1.text3.value )
IF tf = 0 .and. tk = 0 .and. tc < 0
stk := tc+273
stk = STR ( stk )
stk = ALLTRIM ( stk )
win1.text2.Value := stk
stf := 1.8*tc + 32
stf = STR ( stf )
stf = ALLTRIM ( stf )
win1.text3.Value := stf
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF tf = 0 .and. tk = 0 .and. tc > 0
stk := tc+273
stk = STR ( stk )
stk = ALLTRIM ( stk )
win1.text2.Value := stk
stf := 1.8*tc + 32
stf = STR ( stf )
stf = ALLTRIM ( stf )
win1.text3.Value := stf
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF tc = 0 .and. tf = 0 .and. tk < 0
MyOut := MSGSTOP("Â–« «·«œŒ«· €Ì— ’ÕÌÕ ·«‰Â ·« ÌÊÃœ ﬁÌ„… ﬂ·›‰ ”«·» ..„‰ ›÷·ﬂ √⁄œ «·„Õ«Ê·…","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc = 0 .and. tf = 0 .and. tk > 0
atc := tk-273
atc = STR ( atc )
atc = ALLTRIM ( atc )
win1.text1.Value := atc
atf := 1.8*tk-459.4
atf = STR ( atf )
atf = ALLTRIM ( atf )
win1.text3.Value := atf
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF tc = 0 .and. tk = 0 .and. tf < 0
tc := ((0.5556*tf)-17.7778)
tc = STR ( tc )
tc = ALLTRIM ( tc )
win1.text1.Value := tc
tk := ((0.5556*tf)+255.2222)
tk = STR ( tk )
tk = ALLTRIM ( tk )
win1.text2.Value := tk
tc = VAL ( win1.text1.value )
tk = VAL ( win1.text2.value )
tf = VAL ( win1.text3.value )
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF tc = 0 .and. tk = 0 .and. tf > 0
btc := 0.5556*tf-17.7778
btc = STR ( btc )
btc = ALLTRIM ( btc )
win1.text1.Value := btc
btk := 0.5556*tf+255.2222
btk = STR ( btk )
btk = ALLTRIM ( btk )
win1.text2.Value := btk
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF tc > 0 .and. tk > 0 .and. tf > 0
MyOut := MSGINFO("⁄–—«⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„ „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tf = 0 .and. tk = 0 .and. tc = 0
if !iswindowdefined( wino )
DEFINE WINDOW wino ;
AT 10 ,10 ;
WIDTH 557 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " ÕÊÌ·«  œ—Ã… «·’›—  .... ”·“ÌÊ”....›Â—‰ÂÌ .....ﬂ·›‰" ;
MODAL ;
BACKCOLOR {236,233,216} 

wino.Center ( )
@ 5 ,82 LABEL lbl1wo ;
VALUE " ÕÊÌ·«  «·’›—" ;
WIDTH 329 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 58 ,271 LABEL lbl2wo ;
VALUE "”·“ÌÊ”" ;
WIDTH 107 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 58 ,143 LABEL lbl3wo ;
VALUE "ﬂ·›‰" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 58 ,14 LABEL lbl4wo ;
VALUE "›Â—‰ÂÌ " ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 57 ,390 LABEL lbl5wo ;
VALUE "ÊÕœ«  «·ﬁÌ«”" ;
WIDTH 140 ;
HEIGHT 34 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {117,255,117} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 224 ,14 LABEL lbl6wo ;
VALUE "0" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 173 ,143 LABEL lbl7wo ;
VALUE "0" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 120 ,271 LABEL lbl8wo ;
VALUE "0" ;
WIDTH 107 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 120 ,143 LABEL lbl20wo ;
VALUE "273" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 120 ,14 LABEL lbl9wo ;
VALUE "32" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 173 ,271 LABEL lbl10wo ;
VALUE "-273" ;
WIDTH 107 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 173 ,14 LABEL lbl11wo ;
VALUE "-459.4" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 224 ,271 LABEL lbl12wo ;
VALUE "-17.7778" ;
WIDTH 107 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 224 ,143 LABEL lbl13wo ;
VALUE "255.2222" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 125 ,424 LABEL lbl14wo ;
VALUE "ﬁÌ„" ;
WIDTH 106 ;
HEIGHT 41 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 166 ,424 LABEL lbl21wo ;
VALUE "œ—Ã« " ;
WIDTH 106 ;
HEIGHT 41 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 207 ,424 LABEL lbl15wo ;
VALUE "«·Õ—«—…" ;
WIDTH 106 ;
HEIGHT 41 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 317 ,24 BUTTONEX btn1wo;
CAPTION "⁄Êœ…";
FONTCOLOR {64,0,128};
BACKCOLOR {0,255,0};
ON CLICK winoexit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 317 ,135 BUTTONEX btn2wo;
CAPTION "«· —„Ê„ —« ";
FONTCOLOR {128,0,255};
BACKCOLOR {225,113,0};
ON CLICK therm()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Tahoma" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW wino
EndIF

ENDIF
IF tc = 0 .and. tk > 0 .and. tf > 0
MyOut := MSGINFO("⁄–—«⁄“Ì“Ì «·ÿ«·»  ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc = 0 .and. tk < 0 .and. tf < 0
MyOut := MSGINFO("⁄–—«⁄“Ì“Ì «·ÿ«·»  ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc > 0 .and. tk = 0 .and. tf > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc > 0 .and. tk > 0 .and. tf = 0
MyOut := MSGINFO("⁄–—«⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc < 0 .and. tk = 0 .and. tf < 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc < 0 .and. tk < 0 .and. tf = 0
MyOut := MSGINFO("⁄–—«⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc < 0 .and. tk < 0 .and. tf < 0
MyOut := MSGINFO("⁄–—«⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„ „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc > 0 .and. tk < 0 .and. tf = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc > 0 .and. tk = 0 .and. tf < 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc = 0 .and. tk < 0 .and. tf > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
IF tc = 0 .and. tk > 0 .and. tf < 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
ENDIF
Return Nil
Proc tconvertorc
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/new.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc winoexit
wino.Release ( )
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
Return Nil
Proc myzero
if !iswindowdefined( winoo )
DEFINE WINDOW winoo ;
AT 10 ,10 ;
WIDTH 557 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " ÕÊÌ·«  œ—Ã… «·’›—  .... ”·“ÌÊ”....›Â—‰ÂÌ .....ﬂ·›‰" ;
MODAL ;
BACKCOLOR {236,233,216} 

winoo.Center ( )
@ 5 ,82 LABEL lbl1woo ;
VALUE " ÕÊÌ·«  «·’›—" ;
WIDTH 329 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 58 ,271 LABEL lbl2woo ;
VALUE "”·“ÌÊ”" ;
WIDTH 107 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 58 ,143 LABEL lbl3woo ;
VALUE "ﬂ·›‰" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 58 ,14 LABEL lbl4woo ;
VALUE "›Â—‰ÂÌ " ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 57 ,390 LABEL lbl5woo ;
VALUE "ÊÕœ«  «·ﬁÌ«”" ;
WIDTH 140 ;
HEIGHT 34 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {117,255,117} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 224 ,14 LABEL lbl6woo ;
VALUE "0" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 173 ,143 LABEL lbl7woo ;
VALUE "0" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 120 ,271 LABEL lbl8woo ;
VALUE "0" ;
WIDTH 107 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 120 ,143 LABEL lbl20woo ;
VALUE "273" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 120 ,14 LABEL lbl9woo ;
VALUE "32" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 173 ,271 LABEL lbl10woo ;
VALUE "-273" ;
WIDTH 107 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 173 ,14 LABEL lbl11woo ;
VALUE "-459.4" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 224 ,271 LABEL lbl12woo ;
VALUE "-17.7778" ;
WIDTH 107 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 224 ,143 LABEL lbl13woo ;
VALUE "255.2222" ;
WIDTH 100 ;
HEIGHT 32 ;
FONT "Tahoma" SIZE 14  ;
BOLD ;
BACKCOLOR {136,233,238} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 125 ,424 LABEL lbl14woo ;
VALUE "ﬁÌ„" ;
WIDTH 106 ;
HEIGHT 41 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 166 ,424 LABEL lbl21woo ;
VALUE "œ—Ã« " ;
WIDTH 106 ;
HEIGHT 41 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,255} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 207 ,424 LABEL lbl15woo ;
VALUE "«·Õ—«—…" ;
WIDTH 106 ;
HEIGHT 41 ;
FONT "Tahoma" SIZE 18  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 312 ,13 BUTTONEX btn1woo;
CAPTION "⁄Êœ…";
FONTCOLOR {64,0,128};
BACKCOLOR {0,255,0};
ON CLICK winooexit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 312 ,125 BUTTONEX btn2woo;
CAPTION "«·ﬁ«‰Ê‰ «·⁄«„ ·· —„Ê„ —« ";
FONTCOLOR {128,0,255};
BACKCOLOR {225,113,0};
ON CLICK therm()  ;
WIDTH 250 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winoo
EndIF

Return Nil
Proc winooexit
winoo.Release ( )
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
Return Nil
Proc lconvertor
lc = VAL ( win1.text1l.value )
lm = VAL ( win1.text2l.value )
lmm = VAL ( win1.text3l.value )
IF lmm = 0 .and. lm = 0 .and. lc > 0
slm := lc / 100
slm = STR ( slm )
slm = ALLTRIM ( slm )
win1.text2l.Value := slm
slmm := lc/10
slmm = STR ( slmm )
slmm = ALLTRIM ( slmm )
win1.text3l.Value := slmm
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF lc = 0 .and. lmm = 0 .and. lm > 0
alc := lm*100
alc = STR ( alc )
alc = ALLTRIM ( alc )
win1.text1l.Value := alc
almm := lm*1000
almm = STR ( almm )
almm = ALLTRIM ( almm )
win1.text3l.Value := almm
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF lc = 0 .and. lm = 0 .and. lmm > 0
elc := lmm/10
elc = STR ( elc )
elc = ALLTRIM ( elc )
win1.text1l.Value := elc
elm := lmm/1000
elm = STR ( elm )
elm = ALLTRIM ( elm )
win1.text2l.Value := elm
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF lmm = 0 .and. lm = 0 .and. lc = 0
MyOut := MSGINFO("«œŒ«· €Ì— ’ÕÌÕ ..................„‰ ›÷·ﬂ √œŒ· «—ﬁ«„","Mr AbOeLsOuD Information")
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
ENDIF
IF lmm = 0 .and. lm > 0 .and. lc > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
ENDIF
IF lmm > 0 .and. lm = 0 .and. lc > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
ENDIF
IF lmm > 0 .and. lm > 0 .and. lc = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
ENDIF
IF lmm > 0 .and. lm > 0 .and. lc > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
ENDIF
IF lmm = 0 .and. lm = 0 .and. lc < 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ „”«›… ﬁÌ„ Â« ”«·»…","Mr AbOeLsOuD Information")
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
ENDIF
IF lmm < 0 .and. lm = 0 .and. lc = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ „”«›… ﬁÌ„ Â« ”«·»…","Mr AbOeLsOuD Information")
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
ENDIF
IF lmm = 0 .and. lm < 0 .and. lc = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ „”«›… ﬁÌ„ Â« ”«·»…","Mr AbOeLsOuD Information")
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
ENDIF
Return Nil
Proc lclear
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/new.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc mconvertor
mg = VAL ( win1.text1m.value )
mk = VAL ( win1.text2m.value )
mn = VAL ( win1.text3m.value )
IF mk = 0 .and. mn = 0 .and. mg > 0
smk := mg / 1000
smk = STR ( smk )
smk = ALLTRIM ( smk )
win1.text2m.Value := smk
smn := mg*0.0098
smn = STR ( smn )
smn = ALLTRIM ( smn )
win1.text3m.Value := smn
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF mk = 0 .and. mn > 0 .and. mg = 0
emk := mn / 9.8
emk = STR ( emk )
emk = ALLTRIM ( emk )
win1.text2m.Value := emk
emg := mn*102.0408
emg = STR ( emg )
emg = ALLTRIM ( emg )
win1.text1m.Value := emg
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF mk > 0 .and. mn = 0 .and. mg = 0
rmg := mk *1000
rmg = STR ( rmg )
rmg = ALLTRIM ( rmg )
win1.text1m.Value := rmg
rmn := mk*9.8
rmn = STR ( rmn )
rmn = ALLTRIM ( rmn )
win1.text3m.Value := rmn
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF mg = 0 .and. mk = 0 .and. mn = 0
MyOut := MSGINFO("«œŒ«· €Ì— ’ÕÌÕ ..................„‰ ›÷·ﬂ √œŒ· «—ﬁ«„","Mr AbOeLsOuD Information")
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
ENDIF
IF mg = 0 .and. mk > 0 .and. mn > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
ENDIF
IF mg > 0 .and. mk = 0 .and. mn > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
ENDIF
IF mg > 0 .and. mk > 0 .and. mn = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
ENDIF
IF mg > 0 .and. mk > 0 .and. mn > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
ENDIF
IF mg = 0 .and. mk = 0 .and. mn < 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ Ê“‰ ﬁÌ„ Â ”«·»…","Mr AbOeLsOuD Information")
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
ENDIF
IF mg < 0 .and. mk = 0 .and. mn = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ ﬂ ·… Ã—«„Ì… ”«·»…","Mr AbOeLsOuD Information")
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
ENDIF
IF mg = 0 .and. mk < 0 .and. mn = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ ﬂ ·… ﬂÌ·ÊÃ—«„Ì… ”«·»…","Mr AbOeLsOuD Information")
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
ENDIF
Return Nil
Proc mclear
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/new.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc meconvertor
me = VAL ( win1.text1me.value )
we = VAL ( win1.text2we.value )
mo = VAL ( win1.text3mo.value )
wo = VAL ( win1.text4wo.value )
IF me = 0 .and. we = 0 .and. mo = 0 .and. wo > 0
smo := wo / 1.6333
smo = STR ( smo )
smo = ALLTRIM ( smo )
win1.text3mo.Value := smo
sme := wo/1.6333
sme = STR ( sme )
sme = ALLTRIM ( sme )
win1.text1me.Value := sme
swe := wo*6
swe = STR ( swe )
swe = ALLTRIM ( swe )
win1.text2we.Value := swe
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF me = 0 .and. we > 0 .and. mo = 0 .and. wo = 0
rmo := we/9.8
rmo = STR ( rmo )
rmo = ALLTRIM ( rmo )
win1.text3mo.Value := rmo
rme := we/9.8
rme = STR ( rme )
rme = ALLTRIM ( rme )
win1.text1me.Value := rme
rwo := we/6
rwo = STR ( rwo )
rwo = ALLTRIM ( rwo )
win1.text4wo.Value := rwo
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF me > 0 .and. we = 0 .and. mo = 0 .and. wo = 0
dmo := me*1
dmo = STR ( dmo )
dmo = ALLTRIM ( dmo )
win1.text3mo.Value := dmo
dwe := me*9.8
dwe = STR ( dwe )
dwe = ALLTRIM ( dwe )
win1.text2we.Value := dwe
dwo := me*1.6333
dwo = STR ( dwo )
dwo = ALLTRIM ( dwo )
win1.text4wo.Value := dwo
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF me = 0 .and. we = 0 .and. mo > 0 .and. wo = 0
ame := mo*1
ame = STR ( ame )
ame = ALLTRIM ( ame )
win1.text1me.Value := ame
awe := mo*9.8
awe = STR ( awe )
awe = ALLTRIM ( awe )
win1.text2we.Value := awe
awo := mo*1.6333
awo = STR ( awo )
awo = ALLTRIM ( awo )
win1.text4wo.Value := awo
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF me = 0 .and. we = 0 .and. mo = 0 .and. wo = 0
MyOut := MSGINFO("«œŒ«· €Ì— ’ÕÌÕ ..................„‰ ›÷·ﬂ √œŒ· «—ﬁ«„","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me > 0 .and. we > 0 .and. mo = 0 .and. wo = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me > 0 .and. we = 0 .and. mo > 0 .and. wo = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me > 0 .and. we = 0 .and. mo = 0 .and. wo > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me = 0 .and. we > 0 .and. mo > 0 .and. wo = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me = 0 .and. we > 0 .and. mo = 0 .and. wo > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me = 0 .and. we = 0 .and. mo > 0 .and. wo > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me = 0 .and. we = 0 .and. mo < 0 .and. wo = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ”«·»… ›Ì Œ«‰… «·ﬂ ·","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me < 0 .and. we = 0 .and. mo = 0 .and. wo = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ”«·»… ›Ì Œ«‰… «·ﬂ ·","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me < 0 .and. we = 0 .and. mo < 0 .and. wo = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ”«·»… ›Ì Œ«‰… «·ﬂ ·","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me > 0 .and. we > 0 .and. mo = 0 .and. wo > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me = 0 .and. we > 0 .and. mo > 0 .and. wo > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me > 0 .and. we > 0 .and. mo > 0 .and. wo = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„ „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
IF me > 0 .and. we > 0 .and. mo > 0 .and. wo > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· √—»⁄ ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ","Mr AbOeLsOuD Information")
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
ENDIF
Return Nil
Proc meclear
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/new.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc paconvertor
pa = VAL ( win1.text1pa.value )
cm = VAL ( win1.text2cm.value )
mm = VAL ( win1.text3mm.value )
m = VAL ( win1.text4m.value )
nm = VAL ( win1.text5nm.value )
bar = VAL ( win1.text6bar.value )
IF pa > 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0
scm := pa*76
scm = STR ( scm )
scm = ALLTRIM ( scm )
win1.text2cm.Value := scm
smm := pa*760
smm = STR ( smm )
smm = ALLTRIM ( smm )
win1.text3mm.Value := smm
sm := pa*0.76
sm = STR ( sm )
sm = ALLTRIM ( sm )
win1.text4m.Value := sm
snm := pa*101300
snm = STR ( snm )
snm = ALLTRIM ( snm )
win1.text5nm.Value := snm
sbar := pa*1.013
sbar = STR ( sbar )
sbar = ALLTRIM ( sbar )
win1.text6bar.Value := sbar
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF pa = 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0
rpa := cm/76
rpa = STR ( rpa )
rpa = ALLTRIM ( rpa )
win1.text1pa.Value := rpa
rmm := cm*10
rmm = STR ( rmm )
rmm = ALLTRIM ( rmm )
win1.text3mm.Value := rmm
rm := cm/100
rm = STR ( rm )
rm = ALLTRIM ( rm )
win1.text4m.Value := rm
rnm := cm*1332.8
rnm = STR ( rnm )
rnm = ALLTRIM ( rnm )
win1.text5nm.Value := rnm
rbar := cm*0.013328
rbar = STR ( rbar )
rbar = ALLTRIM ( rbar )
win1.text6bar.Value := rbar
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF pa = 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar = 0
cpa := mm/760
cpa = STR ( cpa )
cpa = ALLTRIM ( cpa )
win1.text1pa.Value := cpa
ccm := mm/10
ccm = STR ( ccm )
ccm = ALLTRIM ( ccm )
win1.text2cm.Value := ccm
cmc := mm/1000
cmc = STR ( cmc )
cmc = ALLTRIM ( cmc )
win1.text4m.Value := cmc
cnm := mm*133.28
cnm = STR ( cnm )
cnm = ALLTRIM ( cnm )
win1.text5nm.Value := cnm
cbar := mm*0.0013328
cbar = STR ( cbar )
cbar = ALLTRIM ( cbar )
win1.text6bar.Value := cbar
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar = 0
epa := m/0.76
epa = STR ( epa )
epa = ALLTRIM ( epa )
win1.text1pa.Value := epa
ecm := m*100
ecm = STR ( ecm )
ecm = ALLTRIM ( ecm )
win1.text2cm.Value := ecm
emm := m*1000
emm = STR ( emm )
emm = ALLTRIM ( emm )
win1.text3mm.Value := emm
enm := m*133280
enm = STR ( enm )
enm = ALLTRIM ( enm )
win1.text5nm.Value := enm
ebar := m*1.3328
ebar = STR ( ebar )
ebar = ALLTRIM ( ebar )
win1.text6bar.Value := ebar
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar = 0
wpa := nm*0.000009872370001
wpa = STR ( wpa )
wpa = ALLTRIM ( wpa )
win1.text1pa.Value := wpa
wcm := nm*0.0007503001201
wcm = STR ( wcm )
wcm = ALLTRIM ( wcm )
win1.text2cm.Value := wcm
wmm := nm*0.007503001201
wmm = STR ( wmm )
wmm = ALLTRIM ( wmm )
win1.text3mm.Value := wmm
wm := nm*0.000007503001201
wm = STR ( wm )
wm = ALLTRIM ( wm )
win1.text4m.Value := wm
wbar := nm*0.00001
wbar = STR ( wbar )
wbar = ALLTRIM ( wbar )
win1.text6bar.Value := wbar
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar > 0
hpa := bar/1.012928
hpa = STR ( hpa )
hpa = ALLTRIM ( hpa )
win1.text1pa.Value := hpa
hcm := bar*75.03001201
hcm = STR ( hcm )
hcm = ALLTRIM ( hcm )
win1.text2cm.Value := hcm
hmm := bar*750.3001201
hmm = STR ( hmm )
hmm = ALLTRIM ( hmm )
win1.text3mm.Value := hmm
hm := bar*0.7503001201
hm = STR ( hm )
hm = ALLTRIM ( hm )
win1.text4m.Value := hm
hnm := bar*100000
hnm = STR ( hnm )
hnm = ALLTRIM ( hnm )
win1.text5nm.Value := hnm
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm > 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm > 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm > 0 .and. m > 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar = 0
MyOut := MSGBOX("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm > 0 .and. m > 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm = 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm > 0 .and. m = 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm = 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa > 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa < 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm < 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm < 0 .and. m = 0 .and. nm = 0 .and. bar = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m < 0 .and. nm = 0 .and. bar = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm < 0 .and. bar = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
IF pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar < 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
ENDIF
Return Nil
Proc paclear
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/new.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc mypadr
if !iswindowdefined( pa )
DEFINE WINDOW pa ;
AT 10 ,10 ;
WIDTH 689 ;
HEIGHT 524 ;
ICON "PWCTICON" ;
TITLE "—”„  ŒÿÌÿÌ · ÕÊÌ·«  «·÷€ÿ «·ÃÊÌ" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {89,172,255} 

pa.Center ( )
@ 452 ,3 BUTTONEX btn1pa;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,255,128};
BACKCOLOR {255,0,128};
ON CLICK mypachartexit()  ;
WIDTH 85 HEIGHT 30 ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 3 ,3 IMAGE image1paaa;
PICTURE "mrabn/pa/pa.jpg";
STRETCH ;
WIDTH 673 HEIGHT 438
END WINDOW

ACTIVATE WINDOW pa
EndIF

Return Nil
Proc nuconvertor
jul = VAL ( win1.text1j.value )
cal = VAL ( win1.text2cal.value )
mev = VAL ( win1.text3mev.value )
grm = VAL ( win1.text4grm.value )
IF jul = 0 .and. cal = 0 .and. mev = 0 .and. grm > 0
sjul := grm * 9
sjul = STR ( sjul )
sjul = ALLTRIM ( sjul )
win1.text1j.Value := sjul
scal := grm * 2.15
scal = STR ( scal )
scal = ALLTRIM ( scal )
win1.text2cal.Value := scal
smev := grm *5.6
smev = STR ( smev )
smev = ALLTRIM ( smev )
win1.text3mev.Value := smev
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF jul = 0 .and. cal = 0 .and. mev = 0 .and. grm < 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ ﬂ ·… ﬁÌ„ Â« ”«·»…","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul > 0 .and. cal = 0 .and. mev = 0 .and. grm = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul = 0 .and. cal > 0 .and. mev = 0 .and. grm = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·”⁄— ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul = 0 .and. cal = 0 .and. mev > 0 .and. grm = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul > 0 .and. cal > 0 .and. mev = 0 .and. grm = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·”⁄— „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul > 0 .and. cal = 0 .and. mev > 0 .and. grm = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul = 0 .and. cal > 0 .and. mev > 0 .and. grm = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·”⁄— Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul > 0 .and. cal > 0 .and. mev > 0 .and. grm = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·”⁄— Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul > 0 .and. cal > 0 .and. mev > 0 .and. grm > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ›Ì Ã„Ì⁄ «·Œ«‰«  ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul = 0 .and. cal = 0 .and. mev > 0 .and. grm > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul = 0 .and. cal > 0 .and. mev = 0 .and. grm > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul > 0 .and. cal = 0 .and. mev = 0 .and. grm > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul > 0 .and. cal > 0 .and. mev = 0 .and. grm > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul = 0 .and. cal > 0 .and. mev > 0 .and. grm > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
IF jul = 0 .and. cal = 0 .and. mev = 0 .and. grm = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
ENDIF
Return Nil
Proc nuclear
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/new.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc nu2convertor
jul2 = VAL ( win1.text1j2.value )
cal2 = VAL ( win1.text2cal2.value )
mev2 = VAL ( win1.text3mev2.value )
amu = VAL ( win1.text4amu.value )
IF jul2 = 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu > 0
sjul2 := amu * 1.494
sjul2 = STR ( sjul2 )
sjul2 = ALLTRIM ( sjul2 )
win1.text1j2.Value := sjul2
scal2 := amu * 3.5742
scal2 = STR ( scal2 )
scal2 = ALLTRIM ( scal2 )
win1.text2cal2.Value := scal2
smev2 := amu *931
smev2 = STR ( smev2 )
smev2 = ALLTRIM ( smev2 )
win1.text3mev2.Value := smev2
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/intro.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
ENDIF
IF jul2 = 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu < 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ ﬂ ·… ﬁÌ„ Â« ”«·»…","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 > 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 = 0 .and. cal2 > 0 .and. mev2 = 0 .and. amu = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·”⁄— ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 = 0 .and. cal2 = 0 .and. mev2 > 0 .and. amu = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 > 0 .and. cal2 > 0 .and. mev2 = 0 .and. amu = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·”⁄— „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 > 0 .and. cal2 = 0 .and. mev2 > 0 .and. amu = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 = 0 .and. cal2 > 0 .and. mev2 > 0 .and. amu = 0
MyOut := MSGSTOP("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·”⁄— Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 > 0 .and. cal2 > 0 .and. mev2 > 0 .and. amu = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·”⁄— Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 > 0 .and. cal2 > 0 .and. mev2 > 0 .and. amu > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ›Ì Ã„Ì⁄ «·Œ«‰«  ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 = 0 .and. cal2 = 0 .and. mev2 > 0 .and. amu > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 = 0 .and. cal2 > 0 .and. mev2 = 0 .and. amu > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 > 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 > 0 .and. cal2 > 0 .and. mev2 = 0 .and. amu > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 = 0 .and. cal2 > 0 .and. mev2 > 0 .and. amu > 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
IF jul2 = 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu = 0
MyOut := MSGINFO("⁄–—« ⁄“Ì“Ì «·ÿ«·» ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ ·Ì „  ÕÊÌ·Â«","Mr AbOeLsOuD Information")
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
ENDIF
Return Nil
Proc nu2clear
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/new.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc therm
if !iswindowdefined( therm )
DEFINE WINDOW therm ;
AT 10 ,10 ;
WIDTH 532 ;
HEIGHT 463 ;
ICON "PWCTICON" ;
TITLE "«·ﬁ«‰Ê‰ «·⁄«„ ·· —„Ê„ —« " ;
MODAL ;
BACKCOLOR {233,233,233} 

therm.Center ( )
@ 5 ,82 LABEL lbl1therm ;
VALUE "„ﬁ«ÌÌ” œ—Ã… «·Õ—«—…" ;
WIDTH 351 ;
HEIGHT 36 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,255,255}
@ 292 ,80 LABEL lbl2therm ;
VALUE "«·ﬁ«‰Ê‰ «·⁄«„ ·· —„Ê„ —« " ;
WIDTH 342 ;
HEIGHT 37 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,160} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
@ 47 ,332 LABEL lbl4therm ;
VALUE "”·“ÌÊ”" ;
WIDTH 105 ;
HEIGHT 36 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,0,128} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 47 ,74 LABEL lbl5therm ;
VALUE "›Â—‰ÂÌ " ;
WIDTH 105 ;
HEIGHT 36 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 47 ,202 LABEL lbl6therm ;
VALUE "ﬂ·›‰" ;
WIDTH 105 ;
HEIGHT 36 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 254 ,369 LABEL lbl7therm ;
VALUE "0" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 182 ,698 LABEL lbl8therm ;
VALUE "t" ;
WIDTH 20 ;
HEIGHT 16 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 102 ,364 LABEL lbl9therm ;
VALUE "100" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 253 ,113 LABEL lbl10therm ;
VALUE "32" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 103 ,113 LABEL lbl11therm ;
VALUE "212" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 130 ,585 LABEL lbl12therm ;
VALUE "" ;
WIDTH 10 ;
HEIGHT 9 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 254 ,236 LABEL lbl13therm ;
VALUE "273" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 79 ,582 LABEL lbl14therm ;
VALUE "" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 103 ,234 LABEL lbl15therm ;
VALUE "373" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 180 ,73 LABEL lbl16therm ;
VALUE "----" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 101 ,75 LABEL lbl17therm ;
VALUE "----" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 101 ,196 LABEL lbl18therm ;
VALUE "----" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 180 ,197 LABEL lbl19therm ;
VALUE "----" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 101 ,326 LABEL lbl20therm ;
VALUE "----" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 253 ,195 LABEL lbl21therm ;
VALUE "----" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 180 ,328 LABEL lbl22therm ;
VALUE "----" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 253 ,327 LABEL lbl23therm ;
VALUE "----" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 253 ,73 LABEL lbl24therm ;
VALUE "----" ;
WIDTH 100 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 76 ,109 LABEL lbl25therm ;
VALUE "|" ;
WIDTH 37 ;
HEIGHT 157 ;
FONT "Tahoma" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,128,0}
@ 76 ,363 LABEL lbl26therm ;
VALUE "|" ;
WIDTH 37 ;
HEIGHT 157 ;
FONT "Tahoma" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,128}
@ 164 ,363 LABEL lbl27therm ;
VALUE "|" ;
WIDTH 37 ;
HEIGHT 157 ;
FONT "Tahoma" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,0,128}
@ 76 ,231 LABEL lbl28therm ;
VALUE "|" ;
WIDTH 37 ;
HEIGHT 157 ;
FONT "Tahoma" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 164 ,231 LABEL lbl29therm ;
VALUE "|" ;
WIDTH 37 ;
HEIGHT 157 ;
FONT "Tahoma" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 165 ,109 LABEL lbl30therm ;
VALUE "|" ;
WIDTH 37 ;
HEIGHT 157 ;
FONT "Tahoma" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,128,0}
@ 357 ,80 LABEL lbl31therm ;
VALUE "=  -------" ;
WIDTH 211 ;
HEIGHT 53 ;
FONT "Symbol" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 327 ,180 LABEL lbl32therm ;
VALUE "c" ;
WIDTH 22 ;
HEIGHT 40 ;
FONT "Symbol" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 372 ,180 LABEL lbl33therm ;
VALUE "c" ;
WIDTH 27 ;
HEIGHT 47 ;
FONT "Symbol" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 373 ,259 LABEL lbl34therm ;
VALUE "c" ;
WIDTH 32 ;
HEIGHT 43 ;
FONT "Symbol" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 328 ,259 LABEL lbl35therm ;
VALUE "c" ;
WIDTH 23 ;
HEIGHT 40 ;
FONT "Symbol" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 338 ,228 LABEL lbl36therm ;
VALUE "-" ;
WIDTH 18 ;
HEIGHT 30 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 382 ,228 LABEL lbl37therm ;
VALUE "-" ;
WIDTH 17 ;
HEIGHT 29 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 357 ,123 LABEL lbl38therm ;
VALUE "t" ;
WIDTH 23 ;
HEIGHT 35 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 391 ,277 LABEL lbl39therm ;
VALUE "0" ;
WIDTH 21 ;
HEIGHT 28 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 390 ,192 LABEL lbl40therm ;
VALUE "100" ;
WIDTH 37 ;
HEIGHT 25 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 349 ,273 LABEL lbl41therm ;
VALUE "0" ;
WIDTH 18 ;
HEIGHT 28 ;
FONT "Symbol" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 349 ,197 LABEL lbl42therm ;
VALUE "t" ;
WIDTH 18 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 179 ,397 LABEL lbl43therm ;
VALUE "t" ;
WIDTH 26 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,0,128} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
@ 179 ,145 LABEL lbl44therm ;
VALUE "f" ;
WIDTH 26 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 179 ,270 LABEL lbl45therm ;
VALUE "T" ;
WIDTH 26 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,128}
@ 361 ,335 BUTTONEX btn1them;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
BACKCOLOR {255,255,0};
ON CLICK thermexit()  ;
WIDTH 85 HEIGHT 36 ;
FONT "Tahoma" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW therm
EndIF

Return Nil
Proc thermexit
therm.Release ( )
Return Nil
Proc mypachartexit
CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
pa.Release ( )
Return Nil
Proc myabout
if !iswindowdefined( win1about )
DEFINE WINDOW win1about ;
AT 10 ,10 ;
WIDTH 646 ;
HEIGHT 496 ;
ICON "PWCTICON" ;
TITLE "„⁄·Ê„‹‹‹‹‹‹‹‹‹‹‹‹«  ⁄‰ «·„‹‹‹‹‹‹‹‹‹‹‹»—„Ã" ;
MODAL ;
CURSOR "mrabn/about.ani" ;
BACKCOLOR {236,233,216} 

win1about.Center ( )
DEFINE TAB Tab1about;
AT 6 ,3;
WIDTH 629;
HEIGHT 445;
FONT "Tahoma" SIZE 9 ;
BOLD ;
FLAT ;
TOOLTIP ""
PAGE "„⁄·Ê„«  ⁄‰ «·„»—„Ã"
@ 27 ,3 IMAGE imagabn5n;
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
@ 32 ,205 LABEL lbl10about ;
VALUE "»—„Ã… Ê ’„Ì„ Ê ‰›Ì–" ;
WIDTH 374 ;
HEIGHT 53 ;
FONT "Tahoma" SIZE 20  ;
BOLD ;
BACKCOLOR {0,0,0} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
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
@ 31 ,580 TEXTBOX text1abxx;
HEIGHT 1 ;
WIDTH 1 ;
VALUE "" ;
READONLY ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255} ;
INPUTMASK ""
@ 97 ,227 TEXTBOX text1ab;
HEIGHT 39 ;
WIDTH 230 ;
VALUE "√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
READONLY ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255} ;
INPUTMASK ""
@ 212 ,227 TEXTBOX text2ab;
HEIGHT 39 ;
WIDTH 230 ;
VALUE "„’— - «·‘—ﬁÌ… - «·“ﬁ«“Ìﬁ" ;
READONLY ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,64} ;
INPUTMASK ""
@ 384 ,227 TEXTBOX text3ab;
HEIGHT 39 ;
WIDTH 230 ;
VALUE "PWCT ⁄÷Ê ›—Ìﬁ  ﬁ‰Ì…" ;
READONLY ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 154 ,227 TEXTBOX text4ab;
HEIGHT 39 ;
WIDTH 230 ;
VALUE "Physics Teacher" ;
READONLY ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0} ;
INPUTMASK ""
@ 269 ,227 TEXTBOX text5ab;
HEIGHT 39 ;
WIDTH 230 ;
VALUE "(055)/ 2165533" ;
READONLY ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
INPUTMASK ""
@ 326 ,227 TEXTBOX text6ab;
HEIGHT 39 ;
WIDTH 230 ;
VALUE "0105234960" ;
READONLY ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,64,64} ;
INPUTMASK ""
END PAGE
END TAB
END WINDOW

ACTIVATE WINDOW win1about
EndIF

Return Nil
Proc win1exit
win1.Release ( )
Return Nil
Proc myhow
Execute File "mrabn\explane\how.pdf" MAXIMIZE
Return Nil
Proc myguide
if !iswindowdefined( win1g )
DEFINE WINDOW win1g ;
AT 10 ,10 ;
WIDTH 675 ;
HEIGHT 489 ;
ON INIT myong()  ;
ICON "PWCTICON" ;
TITLE "√Â„ «·—„Ê“ Ê«·„’ÿ‹·‹Õ«  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
CURSOR "mrabn/about.ani" ;
BACKCOLOR {236,233,216} 

win1g.Center ( )
DEFINE TAB Tab1g;
AT 11 ,3;
WIDTH 663;
HEIGHT 415;
FONT "Tahoma" SIZE 9 ;
BOLD ;
FLAT ;
TOOLTIP ""
PAGE "œ—Ã… «·Õ—«—…"
@ 25 ,1 IMAGE image1lg1;
PICTURE "mrabn/music/g1.jpg";
STRETCH ;
WIDTH 658 HEIGHT 385
@ 166 ,588 LABEL lbl1g ;
VALUE "t" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 239 ,588 LABEL lbl2g ;
VALUE "f" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 307 ,588 LABEL lbl3g ;
VALUE "T" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 166 ,179 LABEL lbl4g ;
VALUE "”·“ÌÊ” √Ê „∆ÊÌ" ;
WIDTH 150 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 239 ,179 LABEL lbl5g ;
VALUE "›Â—‰ÂÌ " ;
WIDTH 150 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 307 ,179 LABEL lbl6g ;
VALUE "ﬂ·›‰" ;
WIDTH 150 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 307 ,333 LABEL lbl7g ;
VALUE " —„“ «·Ì œ—Ã… «·Õ—«—… ⁄·Ì  œ—ÌÃ" ;
WIDTH 250 ;
HEIGHT 40 ;
FONT "Times New Roman" SIZE 16  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 166 ,333 LABEL lbl8g ;
VALUE " —„“ «·Ì œ—Ã… «·Õ—«—… ⁄·Ì  œ—ÌÃ" ;
WIDTH 250 ;
HEIGHT 40 ;
FONT "Times New Roman" SIZE 16  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 239 ,333 LABEL lbl9g ;
VALUE " —„“ «·Ì œ—Ã… «·Õ—«—… ⁄·Ì  œ—ÌÃ" ;
WIDTH 250 ;
HEIGHT 40 ;
FONT "Times New Roman" SIZE 16  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 307 ,88 LABEL lbl10g ;
VALUE "ÊÕœ Â«" ;
WIDTH 80 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 239 ,88 LABEL lbl11g ;
VALUE "ÊÕœ Â«" ;
WIDTH 80 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 166 ,88 LABEL lbl13g ;
VALUE "ÊÕœ Â«" ;
WIDTH 80 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 14  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 166 ,35 LABEL lbl14g ;
VALUE "C" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 239 ,35 LABEL lbl15g ;
VALUE "F" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 307 ,35 LABEL lbl16g ;
VALUE "K" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 305 ,36 LABEL lbl17g ;
VALUE "0" ;
WIDTH 20 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 165 ,35 LABEL lbl18g ;
VALUE "0" ;
WIDTH 20 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 239 ,36 LABEL lbl19g ;
VALUE "0" ;
WIDTH 20 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 12  ;
BACKCOLOR {255,0,0} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 81 ,332 LABEL lbl20g ;
VALUE "«·ﬂ„‹‹‹‹‹‹Ì… «·›‹‹‹‹‹‹‹‹‹‹‹‹‹‹Ì“Ì«∆‹‹‹Ì…" ;
WIDTH 296 ;
HEIGHT 45 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,0,210} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 81 ,179 LABEL lbl21g ;
VALUE "«·„ﬁ‹‹‹‹‹‹‹‹‹‹Ì«”" ;
WIDTH 150 ;
HEIGHT 45 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,0,210} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 81 ,35 LABEL lbl22g ;
VALUE "«·ÊÕœ… Ê«·—„“" ;
WIDTH 134 ;
HEIGHT 45 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,0,210} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
END PAGE
PAGE "«·„”«›« /«·ﬂ ·/«·√Ê“«‰"
@ 25 ,1 IMAGE image1lg2;
PICTURE "mrabn/music/g2.jpg";
STRETCH ;
WIDTH 658 HEIGHT 385
@ 102 ,534 LABEL lbl1gl ;
VALUE "Cm" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 144 ,534 LABEL lbl2gl ;
VALUE "m" ;
WIDTH 40 ;
HEIGHT 36 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 315 ,534 LABEL lbl3gl ;
VALUE "Kg" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,160} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 357 ,12 LABEL lbl4gl ;
VALUE "‰ÌÊ ‰" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 186 ,134 LABEL lbl5gl ;
VALUE "ÊÕœ… ﬁÌ«” «·ÿÊ· ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 380 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 186 ,534 LABEL lbl6gl ;
VALUE "mm" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 271 ,534 LABEL lb7gl ;
VALUE "gm" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {157,157,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 228 ,534 LABEL lbl8gl ;
VALUE "Km" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 271 ,134 LABEL lbl10gl ;
VALUE "ÊÕœ… ﬁÌ«” «·ﬂ ·… ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 380 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {157,157,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 228 ,134 LABEL lbl9gl ;
VALUE "ÊÕœ… ﬁÌ«” «·ÿÊ· ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 380 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 357 ,534 LABEL lbl11gl ;
VALUE "N" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 357 ,134 LABEL lbl12gl ;
VALUE "ÊÕœ… ﬁÌ«” «·Ê“‰ ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 380 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 59 ,12 LABEL lbl13gl ;
VALUE "«·ÊÕ‹‹‹œ…" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 102 ,134 LABEL lbl14gl ;
VALUE "ÊÕœ… ﬁÌ«” «·ÿÊ· ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 380 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 59 ,134 LABEL lbl15gl ;
VALUE "«·—„‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹“" ;
WIDTH 440 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 186 ,12 LABEL lbl16gl ;
VALUE "„··Ì„ —" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 144 ,12 LABEL lbl17gl ;
VALUE "„‹‹‹ —" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 102 ,12 LABEL lbl18gl ;
VALUE "”‰ Ì„ —" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 315 ,12 LABEL lbl19gl ;
VALUE "ﬂÌ·Ê Ã—«„" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,160} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 499 ,174 LABEL lbl20gl ;
VALUE "T" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 271 ,12 LABEL lbl21gl ;
VALUE "Ã—«„" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {157,157,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 228 ,12 LABEL lbl22gl ;
VALUE "ﬂÌ·Ê „ —" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 315 ,134 LABEL lbl23gl ;
VALUE "ÊÕœ… ﬁÌ«” «·ﬂ ·… ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 380 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,0,160} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 144 ,134 LABEL lbl24gl ;
VALUE "ÊÕœ… ﬁÌ«” «·ÿÊ· ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 380 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END PAGE
PAGE "«·ÿ«ﬁ… «·‰ÊÊÌ…"
@ 25 ,1 IMAGE image1lg2e;
PICTURE "mrabn/music/g3.jpg";
STRETCH ;
WIDTH 658 HEIGHT 385
@ 112 ,534 LABEL lbl1gle ;
VALUE "Cal" ;
WIDTH 60 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 164 ,534 LABEL lbl2gle ;
VALUE "Jule" ;
WIDTH 60 ;
HEIGHT 36 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 339 ,62 LABEL lbl4gle ;
VALUE "ÊÕœ… ﬂ · –—Ì…" ;
WIDTH 160 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,128,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 216 ,134 LABEL lbl5gle ;
VALUE "ÊÕœ… ﬁÌ«” «·ÿ«ﬁ… ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 390 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 216 ,534 LABEL lbl6gle ;
VALUE "Mev" ;
WIDTH 60 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 268 ,534 LABEL lbl8gle ;
VALUE "amu" ;
WIDTH 60 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 268 ,134 LABEL lbl9gle ;
VALUE "ÊÕœ… ﬁÌ«” «·ﬂ · «·–—Ì… ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 390 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 339 ,441 LABEL lbl11gle ;
VALUE "„·ÕÊŸ…" ;
WIDTH 80 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,202,202} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 339 ,221 LABEL lbl12gle ;
VALUE "Ê.ﬂ.– «Œ ’«— ·ﬂ·„…" ;
WIDTH 220 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 59 ,12 LABEL lbl13gle ;
VALUE "«·ÊÕ‹‹‹œ…" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 112 ,134 LABEL lbl14gle ;
VALUE "ÊÕœ… ﬁÌ«” «·ÿ«ﬁ… ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 390 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 59 ,134 LABEL lbl15gle ;
VALUE "«·—„‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹“" ;
WIDTH 460 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 216 ,12 LABEL lbl16gle ;
VALUE "„.«.›" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 164 ,12 LABEL lbl17gle ;
VALUE "ÃÊ·" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 112 ,12 LABEL lbl18gle ;
VALUE "”⁄—" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 268 ,12 LABEL lbl22gle ;
VALUE "Ê.ﬂ.–" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 164 ,134 LABEL lbl24gle ;
VALUE "ÊÕœ… ﬁÌ«” «·ÿ«ﬁ… ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 390 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END PAGE
PAGE "«·÷€ÿ «·ÃÊÌ"
@ 25 ,1 IMAGE image1lg2p;
PICTURE "mrabn/music/g4.jpg";
STRETCH ;
WIDTH 658 HEIGHT 385
@ 107 ,83 LABEL lbl1glp ;
VALUE "»«”ﬂ«·" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 149 ,83 LABEL lbl2glp ;
VALUE "----" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 320 ,83 LABEL lbl3glp ;
VALUE " Ê—" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,160} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 361 ,419 LABEL lbl4glp ;
VALUE "ÃÊ· /„3" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,128} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 580 ,198 LABEL lbl5glp ;
VALUE "ÊÕœ… ﬁÌ«” «·ÿÊ· ÊÂÌ «Œ ’«— ··ÊÕœ…" ;
WIDTH 9 ;
HEIGHT 16 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 191 ,83 LABEL lbl6glp ;
VALUE "----" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 276 ,83 LABEL lb7glp ;
VALUE "----" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {157,157,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 233 ,83 LABEL lbl8glp ;
VALUE "----" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 276 ,249 LABEL lbl10glp ;
VALUE "m/Hg" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {157,157,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 233 ,249 LABEL lbl9glp ;
VALUE "Cm/Hg" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 362 ,83 LABEL lbl11glp ;
VALUE "ﬂÃ„ „ À" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,128} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 362 ,249 LABEL lbl12glp ;
VALUE "J/m3" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {255,0,128} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 64 ,419 LABEL lbl13glp ;
VALUE "«·ÊÕ‹‹‹œ…" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 107 ,249 LABEL lbl14glp ;
VALUE "N /m2" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 64 ,250 LABEL lbl15glp ;
VALUE "«·—„‹‹‹‹‹‹‹‹‹“" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 190 ,419 LABEL lbl16glp ;
VALUE "÷‹ Ã‹" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 148 ,419 LABEL lbl17glp ;
VALUE "»«—" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 106 ,419 LABEL lbl18glp ;
VALUE "‰ÌÊ ‰ /„2" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {255,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 319 ,419 LABEL lbl19glp ;
VALUE "„„/“" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,0,160} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 191 ,249 LABEL lbl20glp ;
VALUE "Pa" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {0,128,64} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 275 ,419 LABEL lbl21glp ;
VALUE "„/“" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {157,157,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 232 ,419 LABEL lbl22glp ;
VALUE "”„/“" ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {128,0,255} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 320 ,249 LABEL lbl23glp ;
VALUE "mm/Hg" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,0,160} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 149 ,249 LABEL lbl24glp ;
VALUE "Bar" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {255,128,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 64 ,83 LABEL lbl25glp ;
VALUE "ÊÕœ… „ﬂ«›∆…" ;
WIDTH 120 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 16  ;
BACKCOLOR {0,0,0} ;
BORDER ;
CLIENTEDGE ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 362 ,101 LABEL lbl26glp ;
VALUE "1-" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 12  ;
BACKCOLOR {255,128,0} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 360 ,81 LABEL lbl27glp ;
VALUE "2-" ;
WIDTH 40 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 12  ;
BACKCOLOR {0,0,0} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
END PAGE
END TAB
DEFINE TOOLBAR Toolbar1g;
BUTTONSIZE 665 , 13 ;
FONT "Tahoma" ;
SIZE 12 ;
BOLD ;
TOOLTIP "«÷€ÿ Â‰« ··⁄Êœ…" ;
BOTTOM ;
BORDER 

BUTTON toolbarbtn1g;
CAPTION "Go Back" ;
ON CLICK win1gexit()  ;
TOOLTIP "" ;
SEPARATOR 

END TOOLBAR

DEFINE Context MENU OF win1g
MENUITEM "Back" Action win1gexit()
SEPARATOR
MENUITEM "Explane Convertor" Action myhow()
SEPARATOR
MENUITEM "About Designer" Action myabout()
SEPARATOR
MENUITEM "PWCT Logo" Action myon()
SEPARATOR
MENUITEM "Close" Action win1gexit()
END MENU
END WINDOW

ACTIVATE WINDOW win1g
EndIF

Return Nil
Proc win1gexit
win1g.Release ( )
Return Nil
Proc myong
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/guide.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc myclear
win1.text1.Value := 0
win1.text2.Value := 0
win1.text3.Value := 0
win1.text1l.Value := 0
win1.text2l.Value := 0
win1.text3l.Value := 0
win1.text1m.Value := 0
win1.text2m.Value := 0
win1.text3m.Value := 0
win1.text1me.Value := 0
win1.text2we.Value := 0
win1.text3mo.Value := 0
win1.text4wo.Value := 0
win1.text1pa.Value := 0
win1.text2cm.Value := 0
win1.text3mm.Value := 0
win1.text4m.Value := 0
win1.text5nm.Value := 0
win1.text6bar.Value := 0
win1.text1j.Value := 0
win1.text2cal.Value := 0
win1.text3mev.Value := 0
win1.text4grm.Value := 0
win1.text1j2.Value := 0
win1.text2cal2.Value := 0
win1.text3mev2.Value := 0
win1.text4amu.Value := 0
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'open "mrabn/music/new.mp3" type mpegvideo alias MediaFile',nil,0,0)
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil


End Of Resistance

INIT PROCEDURE Init_PWCTMULTICONVERTOR_V1
START DOUBLES
Return
*-------------------------------------------------------------------*
