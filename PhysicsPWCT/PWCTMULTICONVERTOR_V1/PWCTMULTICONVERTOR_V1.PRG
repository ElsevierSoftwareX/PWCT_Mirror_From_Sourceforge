*---------------------------------------------------------------------------*
* Time : 08:39:45    Date : 03/28/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.9 (Art) [2006-2013]  
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


Resistance R_PWCTMULTICONVERTOR_V1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PWCTMULTICONVERTOR_V1_18smart1() code
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
ON PAINT drawchart()  ;
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
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Number of Decimal Numbers (See One Line of code - Step Details - Result)",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,17)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",19,22)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'œ—Ã… «·Õ—«—…' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",89,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",98,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4www )",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",107,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5ww )",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",117,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6ww )",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",127,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7ww )",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",137,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",145,149)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",151,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn44 )",156,160)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",162,166)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '«·„”«›« ' )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1l )",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",171,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1l  )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",174,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2l  )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",182,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3l  )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",190,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1l )",197,201)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",203,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2l )",208,212)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",214,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1l )",219,220)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",221,228)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2ll )",229,230)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",231,238)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3l )",239,240)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",241,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5ll )",249,250)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",251,258)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6ll )",259,260)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",261,268)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7ll )",269,270)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",271,278)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4ll )",279,280)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",281,288)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '«·ﬂ ·…' )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1m )",291,292)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",293,294)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1m  )",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",296,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2m  )",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",304,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3m  )",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",312,318)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1m )",319,323)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",325,329)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2m )",330,334)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",336,340)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1m )",341,342)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",343,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2lm )",351,352)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",353,360)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3m )",361,362)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",363,370)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4lm )",371,372)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",373,380)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5m )",381,382)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",383,390)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6m )",391,392)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",393,400)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7lm )",401,402)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",403,410)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Ê“‰ «·Ã”„' )",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1me )",413,414)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",415,416)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1me  )",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",418,424)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2we  )",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",426,432)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3mo  )",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",434,440)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4wo  )",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",442,448)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1me )",449,453)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",454,454)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",455,459)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2me )",460,464)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",466,470)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1me )",471,472)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",473,480)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2lme )",481,482)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",483,490)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3me )",491,492)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",493,500)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4lme )",501,502)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",503,510)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5me )",511,512)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",513,520)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6me )",521,522)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",523,530)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7lme )",531,532)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",533,540)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8lme )",541,542)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",543,550)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9lme )",551,552)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",553,560)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10lme )",561,562)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",563,570)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11lme )",571,572)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",573,580)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12lme )",581,582)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",583,590)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14lme )",591,592)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",593,600)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15lme )",601,602)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",603,610)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",611,611)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '«·ÿ«ﬁ…/ Ã‹‹‹‹—«„' )",612,612)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1le )",613,614)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",615,616)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1j  )",617,617)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",618,624)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2cal  )",625,625)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",626,632)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3mev  )",633,633)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",634,640)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4grm  )",641,641)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",642,648)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1le )",649,653)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",654,654)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",655,659)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2le )",660,664)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",665,665)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",666,670)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1le )",671,672)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",673,680)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2lle )",681,682)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",683,690)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3le )",691,692)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",693,700)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5lle )",701,702)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",703,710)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6lle )",711,712)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",713,720)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7lle )",721,722)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",723,730)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4lle )",731,732)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",733,740)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11EE )",741,742)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",743,749)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12EE )",750,751)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",752,758)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13EE )",759,760)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",761,767)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14EE )",768,769)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",770,776)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15EE )",777,778)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",779,785)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16EE )",786,787)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",788,794)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17EE )",795,796)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",797,803)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18EE )",804,805)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",806,812)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19EE )",813,814)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",815,821)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl58lle )",822,823)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",824,831)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",832,832)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '«·ÿ«ﬁ…/ Ê.ﬂ.–' )",833,833)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1le2 )",834,835)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",836,837)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1j2  )",838,838)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",839,845)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2cal2  )",846,846)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",847,853)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3mev2  )",854,854)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",855,861)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4amu  )",862,862)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",863,869)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1le2 )",870,874)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",875,875)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",876,880)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2le2 )",881,885)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",886,886)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",887,891)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1le2 )",892,893)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",894,901)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2lle2 )",902,903)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",904,911)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3le2 )",912,913)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",914,921)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5lle2 )",922,923)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",924,931)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6lle2 )",932,933)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",934,941)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7lle2 )",942,943)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",944,951)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4lle2 )",952,953)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",954,961)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11EE2 )",962,963)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",964,970)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12EE2 )",971,972)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",973,979)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13EE2 )",980,981)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",982,988)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14EE2 )",989,990)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",991,997)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15EE2 )",998,999)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1000,1006)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16EE2 )",1007,1008)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1009,1015)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17EE2 )",1016,1017)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1018,1024)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18EE2 )",1025,1026)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1027,1033)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19EE2 )",1034,1035)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1036,1042)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl58lle2 )",1043,1044)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1045,1052)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",1053,1053)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '«·÷€ÿ «·ÃÊÌ' )",1054,1054)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1mep )",1055,1056)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",1057,1058)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1pa  )",1059,1059)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1060,1066)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2cm  )",1067,1067)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1068,1074)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3mm  )",1075,1075)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1076,1082)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4m  )",1083,1083)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1084,1090)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5nm  )",1091,1091)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1092,1098)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6bar  )",1099,1099)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1100,1106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1pa )",1107,1111)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",1112,1112)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1113,1117)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3pa )",1118,1122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",1123,1123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1124,1128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2pa )",1129,1133)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",1134,1134)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1135,1139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1pa )",1140,1141)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1142,1149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2pa )",1150,1151)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1152,1159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3pa )",1160,1161)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1162,1169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4pa )",1170,1171)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1172,1179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5pa )",1180,1181)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1182,1189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6pa )",1190,1191)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1192,1199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7pa )",1200,1201)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1202,1209)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",1210,1210)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",1211,1211)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",1212,1212)
SS_ESASTEP("Circuits\Main\Main\Main","Set Menu Style EXTENDED",1213,1213)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",1214,1214)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",1215,1215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",1216,1216)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Guide'",1217,1217)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Symbol Guide' )",1218,1218)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",1219,1219)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'PWCT Logo'",1220,1220)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PWCT Logo' )",1221,1221)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",1222,1222)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'About'",1223,1223)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Designer' )",1224,1224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",1225,1225)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help'",1226,1226)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'How Can I Use This Convertor' )",1227,1227)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",1228,1228)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",1229,1229)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Toolbar ( Toolbar1 )",1230,1230)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",1231,1238)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarbtn1 )",1239,1240)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",1241,1241)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",1242,1244)
SS_ESASTEP("Circuits\Main\Main\Main","End Toolbar",1245,1246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Context Menu Of Parent Window : win1",1247,1247)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Clear' )      SEPARATOR",1248,1249)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Convert Guide' )      SEPARATOR",1250,1251)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Explane Convertor' )      SEPARATOR",1252,1253)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About Designer' )      SEPARATOR",1254,1255)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PWCT Logo' )      SEPARATOR",1256,1257)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",1258,1258)
SS_ESASTEP("Circuits\Main\Main\Main","End of menu",1259,1259)
SS_ESASTEP("Circuits\Main\Main\Main","Define Notify Menu Of Parent Window : win1",1260,1260)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Clear' )      SEPARATOR",1261,1262)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PWCT Logo' )      SEPARATOR",1263,1264)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Convert Guide' )      SEPARATOR",1265,1266)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Explane Convertor' )      SEPARATOR",1267,1268)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About Designer' )      SEPARATOR",1269,1270)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",1271,1271)
SS_ESASTEP("Circuits\Main\Main\Main","End of menu",1272,1272)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1273,1274)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1275,1277)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pconvertorclean",1278,1278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text8.Value := 0",1279,1279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text9.Value := 0",1280,1280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text10.Value := 0",1281,1281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text11.Value := 0",1282,1282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text12.Value := 0",1283,1283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text13.Value := 0",1284,1284)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1285,1285)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/new.mp3' type mpegvideo alias MediaFile',nil,0,0",1286,1286)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1287,1287)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1288,1288)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myon",1289,1289)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1intro )",1290,1294)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON PAINT",1295,1295)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEMOVE",1296,1296)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1297,1303)
SS_ESASTEP("Circuits\Main\Main\Main","win1intro.Center ( )",1304,1304)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",1305,1307)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1308,1309)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1310,1312)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1313,1313)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure drawchart",1314,1314)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1315,1315)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",1316,1316)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1317,1317)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.font := 'Tahoma'",1318,1318)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.RMCstyle := 5",1319,1319)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.RMCUserWatermark := 'PWCT'",1320,1320)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.addregion ( )",1321,1321)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):footer := 'http://doublesvsoop.sourceforge.net/forum'",1322,1322)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):addcaption ( )",1323,1323)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):caption():titel := 'PWCT Multi Convertor' + CHR(13) + CHR(10) + 'Enjoy It'",1324,1324)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):caption():fontsize := 22",1325,1325)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):caption():bold := .t.",1326,1326)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1) :addgridlessseries ( )",1327,1327)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:SeriesStyle := 53",1328,1328)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:Alignment := 0",1329,1329)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:Explodemode := 0",1330,1330)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:Lucent := .F.",1331,1331)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:ValueLabelOn := 0",1332,1332)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:HatchMode := 0",1333,1333)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:StartAngle := 0",1334,1334)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:DataString := '120*120*120'",1335,1335)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.draw ( .T. )",1336,1336)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1337,1337)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myonfo",1338,1338)
SS_ESASTEP("Circuits\Main\Main\Main","win1intro.Release ( )",1339,1339)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1340,1340)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure tconvertor",1341,1341)
SS_ESASTEP("Circuits\Main\Main\Main","tc = CONVERT win1.text1.value TO Numeric",1342,1342)
SS_ESASTEP("Circuits\Main\Main\Main","tk = CONVERT win1.text2.value TO Numeric",1343,1343)
SS_ESASTEP("Circuits\Main\Main\Main","tf = CONVERT win1.text3.value TO Numeric",1344,1344)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tf = 0 .and. tk = 0 .and. tc < 0 )",1345,1345)
SS_ESASTEP("Circuits\Main\Main\Main","stk = tc+273",1346,1346)
SS_ESASTEP("Circuits\Main\Main\Main","stk = CONVERT stk TO STRING",1347,1347)
SS_ESASTEP("Circuits\Main\Main\Main","stk = All Trim stk",1348,1348)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := stk",1349,1349)
SS_ESASTEP("Circuits\Main\Main\Main","stf = 1.8*tc + 32",1350,1350)
SS_ESASTEP("Circuits\Main\Main\Main","stf = CONVERT stf TO STRING",1351,1351)
SS_ESASTEP("Circuits\Main\Main\Main","stf = All Trim stf",1352,1352)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := stf",1353,1353)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1354,1354)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",1355,1355)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1356,1356)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1357,1357)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tf = 0 .and. tk = 0 .and. tc > 0 )",1358,1358)
SS_ESASTEP("Circuits\Main\Main\Main","stk = tc+273",1359,1359)
SS_ESASTEP("Circuits\Main\Main\Main","stk = CONVERT stk TO STRING",1360,1360)
SS_ESASTEP("Circuits\Main\Main\Main","stk = All Trim stk",1361,1361)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := stk",1362,1362)
SS_ESASTEP("Circuits\Main\Main\Main","stf = 1.8*tc + 32",1363,1363)
SS_ESASTEP("Circuits\Main\Main\Main","stf = CONVERT stf TO STRING",1364,1364)
SS_ESASTEP("Circuits\Main\Main\Main","stf = All Trim stf",1365,1365)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := stf",1366,1366)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1367,1367)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",1368,1368)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1369,1369)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1370,1370)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc = 0 .and. tf = 0 .and. tk < 0 )",1371,1371)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â–« «·«œŒ«· €Ì— ’ÕÌÕ ·«‰Â ·« ÌÊÃœ ﬁÌ„… ﬂ·›‰ ”«·» ..„‰ ›÷·ﬂ √⁄œ «·„Õ«Ê·…' Title 'Mr AbOeLsOuD Information' Type: Message Stop",1372,1372)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1373,1373)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1374,1374)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1375,1375)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1376,1376)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc = 0 .and. tf = 0 .and. tk > 0 )",1377,1377)
SS_ESASTEP("Circuits\Main\Main\Main","atc = tk-273",1378,1378)
SS_ESASTEP("Circuits\Main\Main\Main","atc = CONVERT atc TO STRING",1379,1379)
SS_ESASTEP("Circuits\Main\Main\Main","atc = All Trim atc",1380,1380)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := atc",1381,1381)
SS_ESASTEP("Circuits\Main\Main\Main","atf = 1.8*tk-459.4",1382,1382)
SS_ESASTEP("Circuits\Main\Main\Main","atf = CONVERT atf TO STRING",1383,1383)
SS_ESASTEP("Circuits\Main\Main\Main","atf = All Trim atf",1384,1384)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := atf",1385,1385)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1386,1386)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",1387,1387)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1388,1388)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1389,1389)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc = 0 .and. tk = 0 .and. tf < 0 )",1390,1390)
SS_ESASTEP("Circuits\Main\Main\Main","tc = ((0.5556*tf)-17.7778)",1391,1391)
SS_ESASTEP("Circuits\Main\Main\Main","tc = CONVERT tc TO STRING",1392,1392)
SS_ESASTEP("Circuits\Main\Main\Main","tc = All Trim tc",1393,1393)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := tc",1394,1394)
SS_ESASTEP("Circuits\Main\Main\Main","tk = ((0.5556*tf)+255.2222)",1395,1395)
SS_ESASTEP("Circuits\Main\Main\Main","tk = CONVERT tk TO STRING",1396,1396)
SS_ESASTEP("Circuits\Main\Main\Main","tk = All Trim tk",1397,1397)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := tk",1398,1398)
SS_ESASTEP("Circuits\Main\Main\Main","tc = CONVERT win1.text1.value TO Numeric",1399,1399)
SS_ESASTEP("Circuits\Main\Main\Main","tk = CONVERT win1.text2.value TO Numeric",1400,1400)
SS_ESASTEP("Circuits\Main\Main\Main","tf = CONVERT win1.text3.value TO Numeric",1401,1401)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1402,1402)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",1403,1403)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1404,1404)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1405,1405)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc = 0 .and. tk = 0 .and. tf > 0 )",1406,1406)
SS_ESASTEP("Circuits\Main\Main\Main","btc = 0.5556*tf-17.7778",1407,1407)
SS_ESASTEP("Circuits\Main\Main\Main","btc = CONVERT btc TO STRING",1408,1408)
SS_ESASTEP("Circuits\Main\Main\Main","btc = All Trim btc",1409,1409)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := btc",1410,1410)
SS_ESASTEP("Circuits\Main\Main\Main","btk = 0.5556*tf+255.2222",1411,1411)
SS_ESASTEP("Circuits\Main\Main\Main","btk = CONVERT btk TO STRING",1412,1412)
SS_ESASTEP("Circuits\Main\Main\Main","btk = All Trim btk",1413,1413)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := btk",1414,1414)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",1415,1415)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1416,1416)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1417,1417)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc > 0 .and. tk > 0 .and. tf > 0 )",1418,1418)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—«⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„ „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1419,1419)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1420,1420)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1421,1421)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1422,1422)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1423,1423)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tf = 0 .and. tk = 0 .and. tc = 0 )",1424,1424)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( wino )",1425,1429)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1430,1434)
SS_ESASTEP("Circuits\Main\Main\Main","wino.Center ( )",1435,1435)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1wo )",1436,1437)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1438,1446)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2wo )",1447,1448)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1449,1457)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3wo )",1458,1459)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1460,1468)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4wo )",1469,1470)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1471,1479)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5wo )",1480,1481)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1482,1490)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6wo )",1491,1492)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1493,1500)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7wo )",1501,1502)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1503,1510)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8wo )",1511,1512)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1513,1520)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20wo )",1521,1522)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1523,1530)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9wo )",1531,1532)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1533,1540)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10wo )",1541,1542)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1543,1550)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11wo )",1551,1552)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1553,1560)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12wo )",1561,1562)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1563,1570)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13wo )",1571,1572)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1573,1580)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14wo )",1581,1582)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1583,1590)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21wo )",1591,1592)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1593,1600)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15wo )",1601,1602)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1603,1610)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1wo )",1611,1614)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",1615,1615)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1616,1620)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2wo )",1621,1624)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",1625,1625)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1626,1630)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1631,1632)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1633,1635)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1636,1636)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc = 0 .and. tk > 0 .and. tf > 0 )",1637,1637)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—«⁄“Ì“Ì «·ÿ«·»  ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1638,1638)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1639,1639)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1640,1640)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1641,1641)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1642,1642)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc = 0 .and. tk < 0 .and. tf < 0 )",1643,1643)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—«⁄“Ì“Ì «·ÿ«·»  ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1644,1644)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1645,1645)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1646,1646)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1647,1647)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1648,1648)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc > 0 .and. tk = 0 .and. tf > 0 )",1649,1649)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1650,1650)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1651,1651)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1652,1652)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1653,1653)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1654,1654)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc > 0 .and. tk > 0 .and. tf = 0 )",1655,1655)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—«⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1656,1656)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1657,1657)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1658,1658)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1659,1659)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1660,1660)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc < 0 .and. tk = 0 .and. tf < 0 )",1661,1661)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1662,1662)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1663,1663)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1664,1664)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1665,1665)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1666,1666)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc < 0 .and. tk < 0 .and. tf = 0 )",1667,1667)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—«⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1668,1668)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1669,1669)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1670,1670)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1671,1671)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1672,1672)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc < 0 .and. tk < 0 .and. tf < 0 )",1673,1673)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—«⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„ „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1674,1674)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1675,1675)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1676,1676)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1677,1677)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1678,1678)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc > 0 .and. tk < 0 .and. tf = 0 )",1679,1679)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1680,1680)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1681,1681)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1682,1682)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1683,1683)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1684,1684)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc > 0 .and. tk = 0 .and. tf < 0 )",1685,1685)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Inform",1686,1686)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1687,1687)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1688,1688)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1689,1689)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1690,1690)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc = 0 .and. tk < 0 .and. tf > 0 )",1691,1691)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Inform",1692,1692)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1693,1693)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1694,1694)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1695,1695)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1696,1696)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( tc = 0 .and. tk > 0 .and. tf < 0 )",1697,1697)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Inform",1698,1698)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1699,1699)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1700,1700)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1701,1701)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1702,1702)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1703,1703)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure tconvertorc",1704,1704)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1705,1705)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1706,1706)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1707,1707)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1708,1708)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/new.mp3' typ",1709,1709)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1710,1710)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1711,1711)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure winoexit",1712,1712)
SS_ESASTEP("Circuits\Main\Main\Main","wino.Release ( )",1713,1713)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1714,1714)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1715,1715)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1716,1716)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1717,1717)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myzero",1718,1718)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( winoo )",1719,1723)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1724,1728)
SS_ESASTEP("Circuits\Main\Main\Main","winoo.Center ( )",1729,1729)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1woo )",1730,1731)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1732,1740)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2woo )",1741,1742)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1743,1751)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3woo )",1752,1753)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1754,1762)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4woo )",1763,1764)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1765,1773)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5woo )",1774,1775)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1776,1784)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6woo )",1785,1786)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1787,1794)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7woo )",1795,1796)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1797,1804)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8woo )",1805,1806)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1807,1814)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20woo )",1815,1816)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1817,1824)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9woo )",1825,1826)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1827,1834)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10woo )",1835,1836)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1837,1844)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11woo )",1845,1846)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1847,1854)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12woo )",1855,1856)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1857,1864)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13woo )",1865,1866)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1867,1874)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14woo )",1875,1876)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1877,1884)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21woo )",1885,1886)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1887,1894)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15woo )",1895,1896)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1897,1904)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1woo )",1905,1908)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",1909,1909)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1910,1914)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2woo )",1915,1918)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",1919,1919)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1920,1924)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1925,1926)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1927,1929)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1930,1930)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure winooexit",1931,1931)
SS_ESASTEP("Circuits\Main\Main\Main","winoo.Release ( )",1932,1932)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",1933,1933)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",1934,1934)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",1935,1935)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1936,1936)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lconvertor",1937,1937)
SS_ESASTEP("Circuits\Main\Main\Main","lc = CONVERT win1.text1l.value TO Numeric",1938,1938)
SS_ESASTEP("Circuits\Main\Main\Main","lm = CONVERT win1.text2l.value TO Numeric",1939,1939)
SS_ESASTEP("Circuits\Main\Main\Main","lmm = CONVERT win1.text3l.value TO Numeric",1940,1940)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lmm = 0 .and. lm = 0 .and. lc > 0 )",1941,1941)
SS_ESASTEP("Circuits\Main\Main\Main","slm = lc / 100",1942,1942)
SS_ESASTEP("Circuits\Main\Main\Main","slm = CONVERT slm TO STRING",1943,1943)
SS_ESASTEP("Circuits\Main\Main\Main","slm = All Trim slm",1944,1944)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := slm",1945,1945)
SS_ESASTEP("Circuits\Main\Main\Main","slmm = lc/10",1946,1946)
SS_ESASTEP("Circuits\Main\Main\Main","slmm = CONVERT slmm TO STRING",1947,1947)
SS_ESASTEP("Circuits\Main\Main\Main","slmm = All Trim slmm",1948,1948)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := slmm",1949,1949)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1950,1950)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",1951,1951)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1952,1952)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1953,1953)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lc = 0 .and. lmm = 0 .and. lm > 0 )",1954,1954)
SS_ESASTEP("Circuits\Main\Main\Main","alc = lm*100",1955,1955)
SS_ESASTEP("Circuits\Main\Main\Main","alc = CONVERT alc TO STRING",1956,1956)
SS_ESASTEP("Circuits\Main\Main\Main","alc = All Trim alc",1957,1957)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := alc",1958,1958)
SS_ESASTEP("Circuits\Main\Main\Main","almm = lm*1000",1959,1959)
SS_ESASTEP("Circuits\Main\Main\Main","almm = CONVERT almm TO STRING",1960,1960)
SS_ESASTEP("Circuits\Main\Main\Main","almm = All Trim almm",1961,1961)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := almm",1962,1962)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1963,1963)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",1964,1964)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1965,1965)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1966,1966)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lc = 0 .and. lm = 0 .and. lmm > 0 )",1967,1967)
SS_ESASTEP("Circuits\Main\Main\Main","elc = lmm/10",1968,1968)
SS_ESASTEP("Circuits\Main\Main\Main","elc = CONVERT elc TO STRING",1969,1969)
SS_ESASTEP("Circuits\Main\Main\Main","elc = All Trim elc",1970,1970)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := elc",1971,1971)
SS_ESASTEP("Circuits\Main\Main\Main","elm = lmm/1000",1972,1972)
SS_ESASTEP("Circuits\Main\Main\Main","elm = CONVERT elm TO STRING",1973,1973)
SS_ESASTEP("Circuits\Main\Main\Main","elm = All Trim elm",1974,1974)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := elm",1975,1975)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",1976,1976)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",1977,1977)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",1978,1978)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1979,1979)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lmm = 0 .and. lm = 0 .and. lc = 0 )",1980,1980)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«œŒ«· €Ì— ’ÕÌÕ ..................„‰ ›÷·ﬂ √œŒ· «—ﬁ«„' Title 'Mr AbOeLsOuD Information' Type: Message Info",1981,1981)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",1982,1982)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",1983,1983)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",1984,1984)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1985,1985)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lmm = 0 .and. lm > 0 .and. lc > 0 )",1986,1986)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1987,1987)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",1988,1988)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",1989,1989)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",1990,1990)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1991,1991)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lmm > 0 .and. lm = 0 .and. lc > 0 )",1992,1992)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1993,1993)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",1994,1994)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",1995,1995)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",1996,1996)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1997,1997)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lmm > 0 .and. lm > 0 .and. lc = 0 )",1998,1998)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",1999,1999)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",2000,2000)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",2001,2001)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",2002,2002)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2003,2003)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lmm > 0 .and. lm > 0 .and. lc > 0 )",2004,2004)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2005,2005)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",2006,2006)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",2007,2007)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",2008,2008)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2009,2009)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lmm = 0 .and. lm = 0 .and. lc < 0 )",2010,2010)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ „”«›… ﬁÌ„ Â« ”«·»…' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2011,2011)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",2012,2012)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",2013,2013)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",2014,2014)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2015,2015)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lmm < 0 .and. lm = 0 .and. lc = 0 )",2016,2016)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ „”«›… ﬁÌ„ Â« ”«·»…' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2017,2017)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",2018,2018)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",2019,2019)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",2020,2020)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2021,2021)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lmm = 0 .and. lm < 0 .and. lc = 0 )",2022,2022)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ „”«›… ﬁÌ„ Â« ”«·»…' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2023,2023)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",2024,2024)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",2025,2025)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",2026,2026)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2027,2027)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",2028,2028)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lclear",2029,2029)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",2030,2030)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",2031,2031)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",2032,2032)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2033,2033)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/new.mp3' typ",2034,2034)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2035,2035)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",2036,2036)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mconvertor",2037,2037)
SS_ESASTEP("Circuits\Main\Main\Main","mg = CONVERT win1.text1m.value TO Numeric",2038,2038)
SS_ESASTEP("Circuits\Main\Main\Main","mk = CONVERT win1.text2m.value TO Numeric",2039,2039)
SS_ESASTEP("Circuits\Main\Main\Main","mn = CONVERT win1.text3m.value TO Numeric",2040,2040)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mk = 0 .and. mn = 0 .and. mg > 0 )",2041,2041)
SS_ESASTEP("Circuits\Main\Main\Main","smk = mg / 1000",2042,2042)
SS_ESASTEP("Circuits\Main\Main\Main","smk = CONVERT smk TO STRING",2043,2043)
SS_ESASTEP("Circuits\Main\Main\Main","smk = All Trim smk",2044,2044)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := smk",2045,2045)
SS_ESASTEP("Circuits\Main\Main\Main","smn = mg*0.0098",2046,2046)
SS_ESASTEP("Circuits\Main\Main\Main","smn = CONVERT smn TO STRING",2047,2047)
SS_ESASTEP("Circuits\Main\Main\Main","smn = All Trim smn",2048,2048)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := smn",2049,2049)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2050,2050)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2051,2051)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2052,2052)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2053,2053)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mk = 0 .and. mn > 0 .and. mg = 0 )",2054,2054)
SS_ESASTEP("Circuits\Main\Main\Main","emk = mn / 9.8",2055,2055)
SS_ESASTEP("Circuits\Main\Main\Main","emk = CONVERT emk TO STRING",2056,2056)
SS_ESASTEP("Circuits\Main\Main\Main","emk = All Trim emk",2057,2057)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := emk",2058,2058)
SS_ESASTEP("Circuits\Main\Main\Main","emg = mn*102.0408",2059,2059)
SS_ESASTEP("Circuits\Main\Main\Main","emg = CONVERT emg TO STRING",2060,2060)
SS_ESASTEP("Circuits\Main\Main\Main","emg = All Trim emg",2061,2061)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := emg",2062,2062)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2063,2063)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2064,2064)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2065,2065)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2066,2066)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mk > 0 .and. mn = 0 .and. mg = 0 )",2067,2067)
SS_ESASTEP("Circuits\Main\Main\Main","rmg = mk *1000",2068,2068)
SS_ESASTEP("Circuits\Main\Main\Main","rmg = CONVERT rmg TO STRING",2069,2069)
SS_ESASTEP("Circuits\Main\Main\Main","rmg = All Trim rmg",2070,2070)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := rmg",2071,2071)
SS_ESASTEP("Circuits\Main\Main\Main","rmn = mk*9.8",2072,2072)
SS_ESASTEP("Circuits\Main\Main\Main","rmn = CONVERT rmn TO STRING",2073,2073)
SS_ESASTEP("Circuits\Main\Main\Main","rmn = All Trim rmn",2074,2074)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := rmn",2075,2075)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2076,2076)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2077,2077)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2078,2078)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2079,2079)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mg = 0 .and. mk = 0 .and. mn = 0 )",2080,2080)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«œŒ«· €Ì— ’ÕÌÕ ..................„‰ ›÷·ﬂ √œŒ· «—ﬁ«„' Title 'Mr AbOeLsOuD Information' Type: Message Info",2081,2081)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",2082,2082)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",2083,2083)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",2084,2084)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2085,2085)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mg = 0 .and. mk > 0 .and. mn > 0 )",2086,2086)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2087,2087)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",2088,2088)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",2089,2089)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",2090,2090)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2091,2091)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mg > 0 .and. mk = 0 .and. mn > 0 )",2092,2092)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2093,2093)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",2094,2094)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",2095,2095)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",2096,2096)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2097,2097)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mg > 0 .and. mk > 0 .and. mn = 0 )",2098,2098)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2099,2099)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",2100,2100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",2101,2101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",2102,2102)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2103,2103)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mg > 0 .and. mk > 0 .and. mn > 0 )",2104,2104)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2105,2105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",2106,2106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",2107,2107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",2108,2108)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2109,2109)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mg = 0 .and. mk = 0 .and. mn < 0 )",2110,2110)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ Ê“‰ ﬁÌ„ Â ”«·»…' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2111,2111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",2112,2112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",2113,2113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",2114,2114)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2115,2115)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mg < 0 .and. mk = 0 .and. mn = 0 )",2116,2116)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ ﬂ ·… Ã—«„Ì… ”«·»…' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2117,2117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",2118,2118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",2119,2119)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",2120,2120)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2121,2121)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mg = 0 .and. mk < 0 .and. mn = 0 )",2122,2122)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ ﬂ ·… ﬂÌ·ÊÃ—«„Ì… ”«·»…' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2123,2123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",2124,2124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",2125,2125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",2126,2126)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2127,2127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",2128,2128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mclear",2129,2129)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",2130,2130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",2131,2131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",2132,2132)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2133,2133)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/new.mp3' typ",2134,2134)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2135,2135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",2136,2136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure meconvertor",2137,2137)
SS_ESASTEP("Circuits\Main\Main\Main","me = CONVERT win1.text1me.value TO Numeric",2138,2138)
SS_ESASTEP("Circuits\Main\Main\Main","we = CONVERT win1.text2we.value TO Numeric",2139,2139)
SS_ESASTEP("Circuits\Main\Main\Main","mo = CONVERT win1.text3mo.value TO Numeric",2140,2140)
SS_ESASTEP("Circuits\Main\Main\Main","wo = CONVERT win1.text4wo.value TO Numeric",2141,2141)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me = 0 .and. we = 0 .and. mo = 0 .and. wo > 0 )",2142,2142)
SS_ESASTEP("Circuits\Main\Main\Main","smo = wo / 1.6333",2143,2143)
SS_ESASTEP("Circuits\Main\Main\Main","smo = CONVERT smo TO STRING",2144,2144)
SS_ESASTEP("Circuits\Main\Main\Main","smo = All Trim smo",2145,2145)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := smo",2146,2146)
SS_ESASTEP("Circuits\Main\Main\Main","sme = wo/1.6333",2147,2147)
SS_ESASTEP("Circuits\Main\Main\Main","sme = CONVERT sme TO STRING",2148,2148)
SS_ESASTEP("Circuits\Main\Main\Main","sme = All Trim sme",2149,2149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := sme",2150,2150)
SS_ESASTEP("Circuits\Main\Main\Main","swe = wo*6",2151,2151)
SS_ESASTEP("Circuits\Main\Main\Main","swe = CONVERT swe TO STRING",2152,2152)
SS_ESASTEP("Circuits\Main\Main\Main","swe = All Trim swe",2153,2153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := swe",2154,2154)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2155,2155)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2156,2156)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2157,2157)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2158,2158)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me = 0 .and. we > 0 .and. mo = 0 .and. wo = 0 )",2159,2159)
SS_ESASTEP("Circuits\Main\Main\Main","rmo = we/9.8",2160,2160)
SS_ESASTEP("Circuits\Main\Main\Main","rmo = CONVERT rmo TO STRING",2161,2161)
SS_ESASTEP("Circuits\Main\Main\Main","rmo = All Trim rmo",2162,2162)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := rmo",2163,2163)
SS_ESASTEP("Circuits\Main\Main\Main","rme = we/9.8",2164,2164)
SS_ESASTEP("Circuits\Main\Main\Main","rme = CONVERT rme TO STRING",2165,2165)
SS_ESASTEP("Circuits\Main\Main\Main","rme = All Trim rme",2166,2166)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := rme",2167,2167)
SS_ESASTEP("Circuits\Main\Main\Main","rwo = we/6",2168,2168)
SS_ESASTEP("Circuits\Main\Main\Main","rwo = CONVERT rwo TO STRING",2169,2169)
SS_ESASTEP("Circuits\Main\Main\Main","rwo = All Trim rwo",2170,2170)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := rwo",2171,2171)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2172,2172)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2173,2173)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2174,2174)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2175,2175)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me > 0 .and. we = 0 .and. mo = 0 .and. wo = 0 )",2176,2176)
SS_ESASTEP("Circuits\Main\Main\Main","dmo = me*1",2177,2177)
SS_ESASTEP("Circuits\Main\Main\Main","dmo = CONVERT dmo TO STRING",2178,2178)
SS_ESASTEP("Circuits\Main\Main\Main","dmo = All Trim dmo",2179,2179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := dmo",2180,2180)
SS_ESASTEP("Circuits\Main\Main\Main","dwe = me*9.8",2181,2181)
SS_ESASTEP("Circuits\Main\Main\Main","dwe = CONVERT dwe TO STRING",2182,2182)
SS_ESASTEP("Circuits\Main\Main\Main","dwe = All Trim dwe",2183,2183)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := dwe",2184,2184)
SS_ESASTEP("Circuits\Main\Main\Main","dwo = me*1.6333",2185,2185)
SS_ESASTEP("Circuits\Main\Main\Main","dwo = CONVERT dwo TO STRING",2186,2186)
SS_ESASTEP("Circuits\Main\Main\Main","dwo = All Trim dwo",2187,2187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := dwo",2188,2188)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2189,2189)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2190,2190)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2191,2191)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2192,2192)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me = 0 .and. we = 0 .and. mo > 0 .and. wo = 0 )",2193,2193)
SS_ESASTEP("Circuits\Main\Main\Main","ame = mo*1",2194,2194)
SS_ESASTEP("Circuits\Main\Main\Main","ame = CONVERT ame TO STRING",2195,2195)
SS_ESASTEP("Circuits\Main\Main\Main","ame = All Trim ame",2196,2196)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := ame",2197,2197)
SS_ESASTEP("Circuits\Main\Main\Main","awe = mo*9.8",2198,2198)
SS_ESASTEP("Circuits\Main\Main\Main","awe = CONVERT awe TO STRING",2199,2199)
SS_ESASTEP("Circuits\Main\Main\Main","awe = All Trim awe",2200,2200)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := awe",2201,2201)
SS_ESASTEP("Circuits\Main\Main\Main","awo = mo*1.6333",2202,2202)
SS_ESASTEP("Circuits\Main\Main\Main","awo = CONVERT awo TO STRING",2203,2203)
SS_ESASTEP("Circuits\Main\Main\Main","awo = All Trim awo",2204,2204)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := awo",2205,2205)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2206,2206)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2207,2207)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2208,2208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2209,2209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me = 0 .and. we = 0 .and. mo = 0 .and. wo = 0 )",2210,2210)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«œŒ«· €Ì— ’ÕÌÕ ..................„‰ ›÷·ﬂ √œŒ· «—ﬁ«„' Title 'Mr AbOeLsOuD Information' Type: Message Info",2211,2211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2212,2212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2213,2213)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2214,2214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2215,2215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2216,2216)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me > 0 .and. we > 0 .and. mo = 0 .and. wo = 0 )",2217,2217)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2218,2218)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2219,2219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2220,2220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2221,2221)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2222,2222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2223,2223)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me > 0 .and. we = 0 .and. mo > 0 .and. wo = 0 )",2224,2224)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2225,2225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2226,2226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2227,2227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2228,2228)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2229,2229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2230,2230)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me > 0 .and. we = 0 .and. mo = 0 .and. wo > 0 )",2231,2231)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2232,2232)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2233,2233)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2234,2234)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2235,2235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2236,2236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2237,2237)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me = 0 .and. we > 0 .and. mo > 0 .and. wo = 0 )",2238,2238)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2239,2239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2240,2240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2241,2241)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2242,2242)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2243,2243)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2244,2244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me = 0 .and. we > 0 .and. mo = 0 .and. wo > 0 )",2245,2245)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2246,2246)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2247,2247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2248,2248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2249,2249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2250,2250)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2251,2251)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me = 0 .and. we = 0 .and. mo > 0 .and. wo > 0 )",2252,2252)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„ «‰  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2253,2253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2254,2254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2255,2255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2256,2256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2257,2257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2258,2258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me = 0 .and. we = 0 .and. mo < 0 .and. wo = 0 )",2259,2259)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ”«·»… ›Ì Œ«‰… «·ﬂ ·' Title 'Mr AbOeLsOuD Information' Type: Message Info",2260,2260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2261,2261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2262,2262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2263,2263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2264,2264)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2265,2265)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me < 0 .and. we = 0 .and. mo = 0 .and. wo = 0 )",2266,2266)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ”«·»… ›Ì Œ«‰… «·ﬂ ·' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2267,2267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2268,2268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2269,2269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2270,2270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2271,2271)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2272,2272)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me < 0 .and. we = 0 .and. mo < 0 .and. wo = 0 )",2273,2273)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ”«·»… ›Ì Œ«‰… «·ﬂ ·' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2274,2274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2275,2275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2276,2276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2277,2277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2278,2278)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2279,2279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me > 0 .and. we > 0 .and. mo = 0 .and. wo > 0 )",2280,2280)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2281,2281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2282,2282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2283,2283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2284,2284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2285,2285)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2286,2286)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me = 0 .and. we > 0 .and. mo > 0 .and. wo > 0 )",2287,2287)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2288,2288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2289,2289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2290,2290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2291,2291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2292,2292)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2293,2293)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me > 0 .and. we > 0 .and. mo > 0 .and. wo = 0 )",2294,2294)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· À·«À ﬁÌ„ „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2295,2295)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2296,2296)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2297,2297)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2298,2298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2299,2299)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2300,2300)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( me > 0 .and. we > 0 .and. mo > 0 .and. wo > 0 )",2301,2301)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· √—»⁄ ﬁÌ„  „⁄«  ›Ì ‰›” «·Êﬁ ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2302,2302)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2303,2303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2304,2304)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2305,2305)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2306,2306)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2307,2307)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",2308,2308)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure meclear",2309,2309)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",2310,2310)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",2311,2311)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",2312,2312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",2313,2313)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2314,2314)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/new.mp3' typ",2315,2315)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2316,2316)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",2317,2317)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure paconvertor",2318,2318)
SS_ESASTEP("Circuits\Main\Main\Main","pa = CONVERT win1.text1pa.value TO Numeric",2319,2319)
SS_ESASTEP("Circuits\Main\Main\Main","cm = CONVERT win1.text2cm.value TO Numeric",2320,2320)
SS_ESASTEP("Circuits\Main\Main\Main","mm = CONVERT win1.text3mm.value TO Numeric",2321,2321)
SS_ESASTEP("Circuits\Main\Main\Main","m = CONVERT win1.text4m.value TO Numeric",2322,2322)
SS_ESASTEP("Circuits\Main\Main\Main","nm = CONVERT win1.text5nm.value TO Numeric",2323,2323)
SS_ESASTEP("Circuits\Main\Main\Main","bar = CONVERT win1.text6bar.value TO Numeric",2324,2324)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2325,2325)
SS_ESASTEP("Circuits\Main\Main\Main","scm = pa*76",2326,2326)
SS_ESASTEP("Circuits\Main\Main\Main","scm = CONVERT scm TO STRING",2327,2327)
SS_ESASTEP("Circuits\Main\Main\Main","scm = All Trim scm",2328,2328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := scm",2329,2329)
SS_ESASTEP("Circuits\Main\Main\Main","smm = pa*760",2330,2330)
SS_ESASTEP("Circuits\Main\Main\Main","smm = CONVERT smm TO STRING",2331,2331)
SS_ESASTEP("Circuits\Main\Main\Main","smm = All Trim smm",2332,2332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := smm",2333,2333)
SS_ESASTEP("Circuits\Main\Main\Main","sm = pa*0.76",2334,2334)
SS_ESASTEP("Circuits\Main\Main\Main","sm = CONVERT sm TO STRING",2335,2335)
SS_ESASTEP("Circuits\Main\Main\Main","sm = All Trim sm",2336,2336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := sm",2337,2337)
SS_ESASTEP("Circuits\Main\Main\Main","snm = pa*101300",2338,2338)
SS_ESASTEP("Circuits\Main\Main\Main","snm = CONVERT snm TO STRING",2339,2339)
SS_ESASTEP("Circuits\Main\Main\Main","snm = All Trim snm",2340,2340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := snm",2341,2341)
SS_ESASTEP("Circuits\Main\Main\Main","sbar = pa*1.013",2342,2342)
SS_ESASTEP("Circuits\Main\Main\Main","sbar = CONVERT sbar TO STRING",2343,2343)
SS_ESASTEP("Circuits\Main\Main\Main","sbar = All Trim sbar",2344,2344)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := sbar",2345,2345)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2346,2346)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2347,2347)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2348,2348)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2349,2349)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2350,2350)
SS_ESASTEP("Circuits\Main\Main\Main","rpa = cm/76",2351,2351)
SS_ESASTEP("Circuits\Main\Main\Main","rpa = CONVERT rpa TO STRING",2352,2352)
SS_ESASTEP("Circuits\Main\Main\Main","rpa = All Trim rpa",2353,2353)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := rpa",2354,2354)
SS_ESASTEP("Circuits\Main\Main\Main","rmm = cm*10",2355,2355)
SS_ESASTEP("Circuits\Main\Main\Main","rmm = CONVERT rmm TO STRING",2356,2356)
SS_ESASTEP("Circuits\Main\Main\Main","rmm = All Trim rmm",2357,2357)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := rmm",2358,2358)
SS_ESASTEP("Circuits\Main\Main\Main","rm = cm/100",2359,2359)
SS_ESASTEP("Circuits\Main\Main\Main","rm = CONVERT rm TO STRING",2360,2360)
SS_ESASTEP("Circuits\Main\Main\Main","rm = All Trim rm",2361,2361)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := rm",2362,2362)
SS_ESASTEP("Circuits\Main\Main\Main","rnm = cm*1332.8",2363,2363)
SS_ESASTEP("Circuits\Main\Main\Main","rnm = CONVERT rnm TO STRING",2364,2364)
SS_ESASTEP("Circuits\Main\Main\Main","rnm = All Trim rnm",2365,2365)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := rnm",2366,2366)
SS_ESASTEP("Circuits\Main\Main\Main","rbar = cm*0.013328",2367,2367)
SS_ESASTEP("Circuits\Main\Main\Main","rbar = CONVERT rbar TO STRING",2368,2368)
SS_ESASTEP("Circuits\Main\Main\Main","rbar = All Trim rbar",2369,2369)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := rbar",2370,2370)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2371,2371)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2372,2372)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2373,2373)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2374,2374)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2375,2375)
SS_ESASTEP("Circuits\Main\Main\Main","cpa = mm/760",2376,2376)
SS_ESASTEP("Circuits\Main\Main\Main","cpa = CONVERT cpa TO STRING",2377,2377)
SS_ESASTEP("Circuits\Main\Main\Main","cpa = All Trim cpa",2378,2378)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := cpa",2379,2379)
SS_ESASTEP("Circuits\Main\Main\Main","ccm = mm/10",2380,2380)
SS_ESASTEP("Circuits\Main\Main\Main","ccm = CONVERT ccm TO STRING",2381,2381)
SS_ESASTEP("Circuits\Main\Main\Main","ccm = All Trim ccm",2382,2382)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := ccm",2383,2383)
SS_ESASTEP("Circuits\Main\Main\Main","cmc = mm/1000",2384,2384)
SS_ESASTEP("Circuits\Main\Main\Main","cmc = CONVERT cmc TO STRING",2385,2385)
SS_ESASTEP("Circuits\Main\Main\Main","cmc = All Trim cmc",2386,2386)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := cmc",2387,2387)
SS_ESASTEP("Circuits\Main\Main\Main","cnm = mm*133.28",2388,2388)
SS_ESASTEP("Circuits\Main\Main\Main","cnm = CONVERT cnm TO STRING",2389,2389)
SS_ESASTEP("Circuits\Main\Main\Main","cnm = All Trim cnm",2390,2390)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := cnm",2391,2391)
SS_ESASTEP("Circuits\Main\Main\Main","cbar = mm*0.0013328",2392,2392)
SS_ESASTEP("Circuits\Main\Main\Main","cbar = CONVERT cbar TO STRING",2393,2393)
SS_ESASTEP("Circuits\Main\Main\Main","cbar = All Trim cbar",2394,2394)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := cbar",2395,2395)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2396,2396)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2397,2397)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2398,2398)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2399,2399)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar = 0 )",2400,2400)
SS_ESASTEP("Circuits\Main\Main\Main","epa = m/0.76",2401,2401)
SS_ESASTEP("Circuits\Main\Main\Main","epa = CONVERT epa TO STRING",2402,2402)
SS_ESASTEP("Circuits\Main\Main\Main","epa = All Trim epa",2403,2403)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := epa",2404,2404)
SS_ESASTEP("Circuits\Main\Main\Main","ecm = m*100",2405,2405)
SS_ESASTEP("Circuits\Main\Main\Main","ecm = CONVERT ecm TO STRING",2406,2406)
SS_ESASTEP("Circuits\Main\Main\Main","ecm = All Trim ecm",2407,2407)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := ecm",2408,2408)
SS_ESASTEP("Circuits\Main\Main\Main","emm = m*1000",2409,2409)
SS_ESASTEP("Circuits\Main\Main\Main","emm = CONVERT emm TO STRING",2410,2410)
SS_ESASTEP("Circuits\Main\Main\Main","emm = All Trim emm",2411,2411)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := emm",2412,2412)
SS_ESASTEP("Circuits\Main\Main\Main","enm = m*133280",2413,2413)
SS_ESASTEP("Circuits\Main\Main\Main","enm = CONVERT enm TO STRING",2414,2414)
SS_ESASTEP("Circuits\Main\Main\Main","enm = All Trim enm",2415,2415)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := enm",2416,2416)
SS_ESASTEP("Circuits\Main\Main\Main","ebar = m*1.3328",2417,2417)
SS_ESASTEP("Circuits\Main\Main\Main","ebar = CONVERT ebar TO STRING",2418,2418)
SS_ESASTEP("Circuits\Main\Main\Main","ebar = All Trim ebar",2419,2419)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := ebar",2420,2420)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2421,2421)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2422,2422)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2423,2423)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2424,2424)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar = 0 )",2425,2425)
SS_ESASTEP("Circuits\Main\Main\Main","wpa = nm*0.000009872370001",2426,2426)
SS_ESASTEP("Circuits\Main\Main\Main","wpa = CONVERT wpa TO STRING",2427,2427)
SS_ESASTEP("Circuits\Main\Main\Main","wpa = All Trim wpa",2428,2428)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := wpa",2429,2429)
SS_ESASTEP("Circuits\Main\Main\Main","wcm = nm*0.0007503001201",2430,2430)
SS_ESASTEP("Circuits\Main\Main\Main","wcm = CONVERT wcm TO STRING",2431,2431)
SS_ESASTEP("Circuits\Main\Main\Main","wcm = All Trim wcm",2432,2432)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := wcm",2433,2433)
SS_ESASTEP("Circuits\Main\Main\Main","wmm = nm*0.007503001201",2434,2434)
SS_ESASTEP("Circuits\Main\Main\Main","wmm = CONVERT wmm TO STRING",2435,2435)
SS_ESASTEP("Circuits\Main\Main\Main","wmm = All Trim wmm",2436,2436)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := wmm",2437,2437)
SS_ESASTEP("Circuits\Main\Main\Main","wm = nm*0.000007503001201",2438,2438)
SS_ESASTEP("Circuits\Main\Main\Main","wm = CONVERT wm TO STRING",2439,2439)
SS_ESASTEP("Circuits\Main\Main\Main","wm = All Trim wm",2440,2440)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := wm",2441,2441)
SS_ESASTEP("Circuits\Main\Main\Main","wbar = nm*0.00001",2442,2442)
SS_ESASTEP("Circuits\Main\Main\Main","wbar = CONVERT wbar TO STRING",2443,2443)
SS_ESASTEP("Circuits\Main\Main\Main","wbar = All Trim wbar",2444,2444)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := wbar",2445,2445)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2446,2446)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2447,2447)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2448,2448)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2449,2449)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar > 0 )",2450,2450)
SS_ESASTEP("Circuits\Main\Main\Main","hpa = bar/1.012928",2451,2451)
SS_ESASTEP("Circuits\Main\Main\Main","hpa = CONVERT hpa TO STRING",2452,2452)
SS_ESASTEP("Circuits\Main\Main\Main","hpa = All Trim hpa",2453,2453)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := hpa",2454,2454)
SS_ESASTEP("Circuits\Main\Main\Main","hcm = bar*75.03001201",2455,2455)
SS_ESASTEP("Circuits\Main\Main\Main","hcm = CONVERT hcm TO STRING",2456,2456)
SS_ESASTEP("Circuits\Main\Main\Main","hcm = All Trim hcm",2457,2457)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := hcm",2458,2458)
SS_ESASTEP("Circuits\Main\Main\Main","hmm = bar*750.3001201",2459,2459)
SS_ESASTEP("Circuits\Main\Main\Main","hmm = CONVERT hmm TO STRING",2460,2460)
SS_ESASTEP("Circuits\Main\Main\Main","hmm = All Trim hmm",2461,2461)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := hmm",2462,2462)
SS_ESASTEP("Circuits\Main\Main\Main","hm = bar*0.7503001201",2463,2463)
SS_ESASTEP("Circuits\Main\Main\Main","hm = CONVERT hm TO STRING",2464,2464)
SS_ESASTEP("Circuits\Main\Main\Main","hm = All Trim hm",2465,2465)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := hm",2466,2466)
SS_ESASTEP("Circuits\Main\Main\Main","hnm = bar*100000",2467,2467)
SS_ESASTEP("Circuits\Main\Main\Main","hnm = CONVERT hnm TO STRING",2468,2468)
SS_ESASTEP("Circuits\Main\Main\Main","hnm = All Trim hnm",2469,2469)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := hnm",2470,2470)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2471,2471)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",2472,2472)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2473,2473)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2474,2474)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2475,2475)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2476,2476)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2477,2477)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2478,2478)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2479,2479)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2480,2480)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2481,2481)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2482,2482)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2483,2483)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2484,2484)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2485,2485)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2486,2486)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2487,2487)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2488,2488)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2489,2489)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2490,2490)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2491,2491)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2492,2492)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2493,2493)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2494,2494)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2495,2495)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2496,2496)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2497,2497)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2498,2498)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2499,2499)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2500,2500)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2501,2501)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar = 0 )",2502,2502)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2503,2503)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2504,2504)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2505,2505)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2506,2506)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2507,2507)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2508,2508)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2509,2509)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2510,2510)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar = 0 )",2511,2511)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2512,2512)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2513,2513)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2514,2514)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2515,2515)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2516,2516)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2517,2517)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2518,2518)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2519,2519)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar > 0 )",2520,2520)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2521,2521)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2522,2522)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2523,2523)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2524,2524)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2525,2525)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2526,2526)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2527,2527)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2528,2528)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm > 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2529,2529)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2530,2530)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2531,2531)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2532,2532)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2533,2533)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2534,2534)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2535,2535)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2536,2536)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2537,2537)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm > 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar = 0 )",2538,2538)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2539,2539)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2540,2540)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2541,2541)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2542,2542)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2543,2543)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2544,2544)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2545,2545)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2546,2546)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar = 0 )",2547,2547)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2548,2548)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2549,2549)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2550,2550)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2551,2551)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2552,2552)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2553,2553)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2554,2554)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2555,2555)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar > 0 )",2556,2556)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2557,2557)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2558,2558)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2559,2559)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2560,2560)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2561,2561)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2562,2562)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2563,2563)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2564,2564)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm > 0 .and. m > 0 .and. nm = 0 .and. bar = 0 )",2565,2565)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2566,2566)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2567,2567)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2568,2568)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2569,2569)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2570,2570)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2571,2571)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2572,2572)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2573,2573)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm > 0 .and. bar = 0 )",2574,2574)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2575,2575)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2576,2576)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2577,2577)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2578,2578)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2579,2579)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2580,2580)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2581,2581)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2582,2582)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar > 0 )",2583,2583)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2584,2584)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2585,2585)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2586,2586)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2587,2587)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2588,2588)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2589,2589)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2590,2590)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2591,2591)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm > 0 .and. bar = 0 )",2592,2592)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2593,2593)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2594,2594)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2595,2595)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2596,2596)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2597,2597)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2598,2598)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2599,2599)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2600,2600)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar > 0 )",2601,2601)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2602,2602)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2603,2603)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2604,2604)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2605,2605)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2606,2606)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2607,2607)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2608,2608)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2609,2609)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar > 0 )",2610,2610)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2611,2611)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2612,2612)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2613,2613)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2614,2614)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2615,2615)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2616,2616)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2617,2617)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2618,2618)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2619,2619)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Ti",2620,2620)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2621,2621)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2622,2622)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2623,2623)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2624,2624)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2625,2625)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2626,2626)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2627,2627)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm > 0 .and. m > 0 .and. nm = 0 .and. bar = 0 )",2628,2628)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2629,2629)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2630,2630)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2631,2631)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2632,2632)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2633,2633)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2634,2634)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2635,2635)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2636,2636)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar = 0 )",2637,2637)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2638,2638)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2639,2639)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2640,2640)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2641,2641)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2642,2642)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2643,2643)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2644,2644)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2645,2645)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar = 0 )",2646,2646)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2647,2647)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2648,2648)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2649,2649)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2650,2650)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2651,2651)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2652,2652)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2653,2653)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2654,2654)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar > 0 )",2655,2655)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2656,2656)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2657,2657)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2658,2658)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2659,2659)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2660,2660)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2661,2661)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2662,2662)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2663,2663)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm > 0 .and. bar = 0 )",2664,2664)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2665,2665)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2666,2666)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2667,2667)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2668,2668)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2669,2669)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2670,2670)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2671,2671)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2672,2672)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar > 0 )",2673,2673)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2674,2674)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2675,2675)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2676,2676)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2677,2677)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2678,2678)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2679,2679)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2680,2680)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2681,2681)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm > 0 .and. bar = 0 )",2682,2682)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2683,2683)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2684,2684)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2685,2685)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2686,2686)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2687,2687)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2688,2688)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2689,2689)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2690,2690)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm = 0 .and. m > 0 .and. nm = 0 .and. bar > 0 )",2691,2691)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2692,2692)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2693,2693)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2694,2694)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2695,2695)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2696,2696)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2697,2697)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2698,2698)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2699,2699)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm > 0 .and. bar > 0 )",2700,2700)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2701,2701)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2702,2702)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2703,2703)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2704,2704)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2705,2705)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2706,2706)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2707,2707)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2708,2708)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm = 0 .and. bar = 0 )",2709,2709)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2710,2710)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2711,2711)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2712,2712)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2713,2713)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2714,2714)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2715,2715)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2716,2716)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2717,2717)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm > 0 .and. m = 0 .and. nm > 0 .and. bar = 0 )",2718,2718)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2719,2719)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2720,2720)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2721,2721)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2722,2722)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2723,2723)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2724,2724)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2725,2725)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2726,2726)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm > 0 .and. m = 0 .and. nm = 0 .and. bar > 0 )",2727,2727)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2728,2728)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2729,2729)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2730,2730)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2731,2731)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2732,2732)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2733,2733)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2734,2734)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2735,2735)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar = 0 )",2736,2736)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2737,2737)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2738,2738)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2739,2739)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2740,2740)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2741,2741)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2742,2742)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2743,2743)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2744,2744)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm = 0 .and. bar > 0 )",2745,2745)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2746,2746)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2747,2747)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2748,2748)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2749,2749)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2750,2750)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2751,2751)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2752,2752)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2753,2753)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar > 0 )",2754,2754)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2755,2755)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2756,2756)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2757,2757)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2758,2758)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2759,2759)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2760,2760)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2761,2761)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2762,2762)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar = 0 )",2763,2763)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2764,2764)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2765,2765)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2766,2766)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2767,2767)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2768,2768)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2769,2769)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2770,2770)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2771,2771)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar > 0 )",2772,2772)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2773,2773)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2774,2774)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2775,2775)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2776,2776)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2777,2777)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2778,2778)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2779,2779)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2780,2780)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa > 0 .and. cm > 0 .and. mm > 0 .and. m > 0 .and. nm > 0 .and. bar > 0 )",2781,2781)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… Ê«Õœ… ›ﬁÿ ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",2782,2782)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2783,2783)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2784,2784)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2785,2785)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2786,2786)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2787,2787)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2788,2788)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2789,2789)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa < 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2790,2790)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2791,2791)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2792,2792)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2793,2793)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2794,2794)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2795,2795)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2796,2796)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2797,2797)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2798,2798)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm < 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2799,2799)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2800,2800)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2801,2801)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2802,2802)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2803,2803)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2804,2804)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2805,2805)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2806,2806)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2807,2807)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm < 0 .and. m = 0 .and. nm = 0 .and. bar = 0 )",2808,2808)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2809,2809)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2810,2810)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2811,2811)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2812,2812)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2813,2813)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2814,2814)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2815,2815)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2816,2816)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m < 0 .and. nm = 0 .and. bar = 0 )",2817,2817)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2818,2818)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2819,2819)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2820,2820)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2821,2821)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2822,2822)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2823,2823)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2824,2824)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2825,2825)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm < 0 .and. bar = 0 )",2826,2826)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2827,2827)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2828,2828)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2829,2829)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2830,2830)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2831,2831)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2832,2832)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2833,2833)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2834,2834)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pa = 0 .and. cm = 0 .and. mm = 0 .and. m = 0 .and. nm = 0 .and. bar < 0 )",2835,2835)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·»  «œŒ«· €Ì— ’ÕÌÕ ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… „ÊÃ»…  ··÷€ÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2836,2836)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2837,2837)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2838,2838)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2839,2839)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2840,2840)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2841,2841)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2842,2842)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2843,2843)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",2844,2844)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure paclear",2845,2845)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",2846,2846)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",2847,2847)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",2848,2848)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",2849,2849)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",2850,2850)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",2851,2851)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2852,2852)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/new.mp3' typ",2853,2853)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2854,2854)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",2855,2855)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mypadr",2856,2856)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( pa )",2857,2861)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",2862,2871)
SS_ESASTEP("Circuits\Main\Main\Main","pa.Center ( )",2872,2872)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1pa )",2873,2876)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",2877,2877)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",2878,2882)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1paaa )",2883,2884)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",2885,2886)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",2887,2888)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",2889,2891)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",2892,2892)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nuconvertor",2893,2893)
SS_ESASTEP("Circuits\Main\Main\Main","jul = CONVERT win1.text1j.value TO Numeric",2894,2894)
SS_ESASTEP("Circuits\Main\Main\Main","cal = CONVERT win1.text2cal.value TO Numeric",2895,2895)
SS_ESASTEP("Circuits\Main\Main\Main","mev = CONVERT win1.text3mev.value TO Numeric",2896,2896)
SS_ESASTEP("Circuits\Main\Main\Main","grm = CONVERT win1.text4grm.value TO Numeric",2897,2897)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul = 0 .and. cal = 0 .and. mev = 0 .and. grm > 0 )",2898,2898)
SS_ESASTEP("Circuits\Main\Main\Main","sjul = grm * 9",2899,2899)
SS_ESASTEP("Circuits\Main\Main\Main","sjul = CONVERT sjul TO STRING",2900,2900)
SS_ESASTEP("Circuits\Main\Main\Main","sjul = All Trim sjul",2901,2901)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := sjul",2902,2902)
SS_ESASTEP("Circuits\Main\Main\Main","scal = grm * 2.15",2903,2903)
SS_ESASTEP("Circuits\Main\Main\Main","scal = CONVERT scal TO STRING",2904,2904)
SS_ESASTEP("Circuits\Main\Main\Main","scal = All Trim scal",2905,2905)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := scal",2906,2906)
SS_ESASTEP("Circuits\Main\Main\Main","smev = grm *5.6",2907,2907)
SS_ESASTEP("Circuits\Main\Main\Main","smev = CONVERT smev TO STRING",2908,2908)
SS_ESASTEP("Circuits\Main\Main\Main","smev = All Trim smev",2909,2909)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := smev",2910,2910)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",2911,2911)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' type mpegvideo alias MediaFile',nil,0,0",2912,2912)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",2913,2913)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2914,2914)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul = 0 .and. cal = 0 .and. mev = 0 .and. grm < 0 )",2915,2915)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ ﬂ ·… ﬁÌ„ Â« ”«·»…' Title 'Mr AbOeLsOuD Information' Type: Message Stop",2916,2916)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2917,2917)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2918,2918)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2919,2919)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2920,2920)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2921,2921)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul > 0 .and. cal = 0 .and. mev = 0 .and. grm = 0 )",2922,2922)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2923,2923)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2924,2924)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2925,2925)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2926,2926)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2927,2927)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2928,2928)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul = 0 .and. cal > 0 .and. mev = 0 .and. grm = 0 )",2929,2929)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·”⁄— ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2930,2930)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2931,2931)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2932,2932)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2933,2933)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2934,2934)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2935,2935)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul = 0 .and. cal = 0 .and. mev > 0 .and. grm = 0 )",2936,2936)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2937,2937)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2938,2938)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2939,2939)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2940,2940)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2941,2941)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2942,2942)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul > 0 .and. cal > 0 .and. mev = 0 .and. grm = 0 )",2943,2943)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·”⁄— „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2944,2944)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2945,2945)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2946,2946)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2947,2947)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2948,2948)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2949,2949)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul > 0 .and. cal = 0 .and. mev > 0 .and. grm = 0 )",2950,2950)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2951,2951)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2952,2952)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2953,2953)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2954,2954)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2955,2955)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2956,2956)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul = 0 .and. cal > 0 .and. mev > 0 .and. grm = 0 )",2957,2957)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·”⁄— Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2958,2958)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2959,2959)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2960,2960)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2961,2961)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2962,2962)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2963,2963)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul > 0 .and. cal > 0 .and. mev > 0 .and. grm = 0 )",2964,2964)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·”⁄— Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2965,2965)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2966,2966)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2967,2967)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2968,2968)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2969,2969)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2970,2970)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul > 0 .and. cal > 0 .and. mev > 0 .and. grm > 0 )",2971,2971)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ›Ì Ã„Ì⁄ «·Œ«‰«  ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2972,2972)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2973,2973)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2974,2974)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2975,2975)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2976,2976)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2977,2977)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul = 0 .and. cal = 0 .and. mev > 0 .and. grm > 0 )",2978,2978)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2979,2979)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2980,2980)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2981,2981)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2982,2982)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2983,2983)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2984,2984)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul = 0 .and. cal > 0 .and. mev = 0 .and. grm > 0 )",2985,2985)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2986,2986)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2987,2987)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2988,2988)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2989,2989)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2990,2990)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2991,2991)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul > 0 .and. cal = 0 .and. mev = 0 .and. grm > 0 )",2992,2992)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",2993,2993)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",2994,2994)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",2995,2995)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",2996,2996)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",2997,2997)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",2998,2998)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul > 0 .and. cal > 0 .and. mev = 0 .and. grm > 0 )",2999,2999)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3000,3000)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",3001,3001)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",3002,3002)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",3003,3003)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",3004,3004)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3005,3005)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul = 0 .and. cal > 0 .and. mev > 0 .and. grm > 0 )",3006,3006)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3007,3007)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",3008,3008)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",3009,3009)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",3010,3010)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",3011,3011)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3012,3012)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul = 0 .and. cal = 0 .and. mev = 0 .and. grm = 0 )",3013,3013)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",3014,3014)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",3015,3015)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",3016,3016)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",3017,3017)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",3018,3018)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3019,3019)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3020,3020)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nuclear",3021,3021)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",3022,3022)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",3023,3023)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",3024,3024)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",3025,3025)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",3026,3026)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/new.mp3' typ",3027,3027)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",3028,3028)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3029,3029)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nu2convertor",3030,3030)
SS_ESASTEP("Circuits\Main\Main\Main","jul2 = CONVERT win1.text1j2.value TO Numeric",3031,3031)
SS_ESASTEP("Circuits\Main\Main\Main","cal2 = CONVERT win1.text2cal2.value TO Numeric",3032,3032)
SS_ESASTEP("Circuits\Main\Main\Main","mev2 = CONVERT win1.text3mev2.value TO Numeric",3033,3033)
SS_ESASTEP("Circuits\Main\Main\Main","amu = CONVERT win1.text4amu.value TO Numeric",3034,3034)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 = 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu > 0 )",3035,3035)
SS_ESASTEP("Circuits\Main\Main\Main","sjul2 = amu * 1.494",3036,3036)
SS_ESASTEP("Circuits\Main\Main\Main","sjul2 = CONVERT sjul2 TO STRING",3037,3037)
SS_ESASTEP("Circuits\Main\Main\Main","sjul2 = All Trim sjul2",3038,3038)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := sjul2",3039,3039)
SS_ESASTEP("Circuits\Main\Main\Main","scal2 = amu * 3.5742",3040,3040)
SS_ESASTEP("Circuits\Main\Main\Main","scal2 = CONVERT scal2 TO STRING",3041,3041)
SS_ESASTEP("Circuits\Main\Main\Main","scal2 = All Trim scal2",3042,3042)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := scal2",3043,3043)
SS_ESASTEP("Circuits\Main\Main\Main","smev2 = amu *931",3044,3044)
SS_ESASTEP("Circuits\Main\Main\Main","smev2 = CONVERT smev2 TO STRING",3045,3045)
SS_ESASTEP("Circuits\Main\Main\Main","smev2 = All Trim smev2",3046,3046)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := smev2",3047,3047)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",3048,3048)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/intro.mp3' t",3049,3049)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",3050,3050)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3051,3051)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 = 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu < 0 )",3052,3052)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· Â–Â «·ﬁÌ„… ·⁄œ„ ÊÃÊœ ﬂ ·… ﬁÌ„ Â« ”«·»…' Title 'Mr AbOeLsOuD Information' Type: Message Stop",3053,3053)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3054,3054)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3055,3055)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3056,3056)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3057,3057)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3058,3058)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 > 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu = 0 )",3059,3059)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3060,3060)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3061,3061)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3062,3062)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3063,3063)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3064,3064)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3065,3065)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 = 0 .and. cal2 > 0 .and. mev2 = 0 .and. amu = 0 )",3066,3066)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·”⁄— ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3067,3067)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3068,3068)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3069,3069)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3070,3070)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3071,3071)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3072,3072)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 = 0 .and. cal2 = 0 .and. mev2 > 0 .and. amu = 0 )",3073,3073)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3074,3074)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3075,3075)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3076,3076)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3077,3077)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3078,3078)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3079,3079)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 > 0 .and. cal2 > 0 .and. mev2 = 0 .and. amu = 0 )",3080,3080)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·”⁄— „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3081,3081)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3082,3082)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3083,3083)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3084,3084)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3085,3085)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3086,3086)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 > 0 .and. cal2 = 0 .and. mev2 > 0 .and. amu = 0 )",3087,3087)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3088,3088)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3089,3089)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3090,3090)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3091,3091)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3092,3092)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3093,3093)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 = 0 .and. cal2 > 0 .and. mev2 > 0 .and. amu = 0 )",3094,3094)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·”⁄— Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Stop",3095,3095)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3096,3096)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3097,3097)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3098,3098)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3099,3099)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3100,3100)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 > 0 .and. cal2 > 0 .and. mev2 > 0 .and. amu = 0 )",3101,3101)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ÿ«ﬁ… »«·ÃÊ· Ê«·”⁄— Ê«·„·ÌÊ‰ «·ﬂ —Ê‰ ›Ê·  „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3102,3102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3103,3103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3104,3104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3105,3105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3106,3106)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3107,3107)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 > 0 .and. cal2 > 0 .and. mev2 > 0 .and. amu > 0 )",3108,3108)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… ›Ì Ã„Ì⁄ «·Œ«‰«  ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3109,3109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3110,3110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3111,3111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3112,3112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3113,3113)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3114,3114)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 = 0 .and. cal2 = 0 .and. mev2 > 0 .and. amu > 0 )",3115,3115)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3116,3116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3117,3117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3118,3118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3119,3119)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3120,3120)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3121,3121)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 = 0 .and. cal2 > 0 .and. mev2 = 0 .and. amu > 0 )",3122,3122)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3123,3123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3124,3124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3125,3125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3126,3126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3127,3127)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3128,3128)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 > 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu > 0 )",3129,3129)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3130,3130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3131,3131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3132,3132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3133,3133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3134,3134)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3135,3135)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 > 0 .and. cal2 > 0 .and. mev2 = 0 .and. amu > 0 )",3136,3136)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3137,3137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3138,3138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3139,3139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3140,3140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3141,3141)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3142,3142)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 = 0 .and. cal2 > 0 .and. mev2 > 0 .and. amu > 0 )",3143,3143)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ·« Ì„ﬂ‰ﬂ «œŒ«· ﬁÌ„… «·ﬂ ·… Ê«·ÿ«ﬁ… „⁄« ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ' Title 'Mr AbOeLsOuD Information' Type: Message Info",3144,3144)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3145,3145)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3146,3146)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3147,3147)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3148,3148)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3149,3149)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( jul2 = 0 .and. cal2 = 0 .and. mev2 = 0 .and. amu = 0 )",3150,3150)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄–—« ⁄“Ì“Ì «·ÿ«·» ..„‰ ›÷·ﬂ √œŒ· ﬁÌ„… «·ﬂ ·… ›ﬁÿ ·Ì „  ÕÊÌ·Â«' Title 'Mr AbOeLsOuD Information' Type: Message Info",3151,3151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3152,3152)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3153,3153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3154,3154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3155,3155)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",3156,3156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3157,3157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nu2clear",3158,3158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",3159,3159)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",3160,3160)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",3161,3161)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",3162,3162)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",3163,3163)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/new.mp3' typ",3164,3164)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",3165,3165)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3166,3166)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure therm",3167,3167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( therm )",3168,3172)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",3173,3177)
SS_ESASTEP("Circuits\Main\Main\Main","therm.Center ( )",3178,3178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1therm )",3179,3180)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3181,3188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2therm )",3189,3190)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3191,3198)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4therm )",3199,3200)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3201,3208)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5therm )",3209,3210)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3211,3218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6therm )",3219,3220)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3221,3228)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7therm )",3229,3230)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3231,3237)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8therm )",3238,3239)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3240,3245)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9therm )",3246,3247)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3248,3254)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10therm )",3255,3256)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3257,3263)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11therm )",3264,3265)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3266,3272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12therm )",3273,3274)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3275,3282)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13therm )",3283,3284)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3285,3291)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14therm )",3292,3293)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3294,3300)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15therm )",3301,3302)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3303,3309)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16therm )",3310,3311)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3312,3318)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17therm )",3319,3320)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3321,3327)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18therm )",3328,3329)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3330,3336)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19therm )",3337,3338)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3339,3345)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20therm )",3346,3347)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3348,3354)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21therm )",3355,3356)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3357,3363)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl22therm )",3364,3365)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3366,3372)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl23therm )",3373,3374)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3375,3381)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl24therm )",3382,3383)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3384,3390)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl25therm )",3391,3392)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3393,3399)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl26therm )",3400,3401)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3402,3408)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl27therm )",3409,3410)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3411,3417)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl28therm )",3418,3419)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3420,3426)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl29therm )",3427,3428)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3429,3435)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl30therm )",3436,3437)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3438,3444)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl31therm )",3445,3446)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3447,3453)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl32therm )",3454,3455)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3456,3462)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl33therm )",3463,3464)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3465,3471)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl34therm )",3472,3473)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3474,3480)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl35therm )",3481,3482)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3483,3489)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl36therm )",3490,3491)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3492,3498)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl37therm )",3499,3500)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3501,3507)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl38therm )",3508,3509)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3510,3516)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl39therm )",3517,3518)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3519,3525)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl40therm )",3526,3527)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3528,3534)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl41therm )",3535,3536)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3537,3543)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl42therm )",3544,3545)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3546,3552)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl43therm )",3553,3554)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3555,3562)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl44therm )",3563,3564)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3565,3572)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl45therm )",3573,3574)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3575,3582)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1them )",3583,3586)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",3587,3587)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",3588,3592)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",3593,3594)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",3595,3597)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3598,3598)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure thermexit",3599,3599)
SS_ESASTEP("Circuits\Main\Main\Main","therm.Release ( )",3600,3600)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3601,3601)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mypachartexit",3602,3602)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close mymovie',0,128,0",3603,3603)
SS_ESASTEP("Circuits\Main\Main\Main","pa.Release ( )",3604,3604)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3605,3605)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myabout",3606,3606)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1about )",3607,3611)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",3612,3617)
SS_ESASTEP("Circuits\Main\Main\Main","win1about.Center ( )",3618,3618)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1about )",3619,3622)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",3623,3626)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '„⁄·Ê„«  ⁄‰ «·„»—„Ã' )",3627,3627)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imagabn5n )",3628,3629)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",3630,3631)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1about )",3632,3633)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3634,3641)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3about )",3642,3643)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3644,3651)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2about )",3652,3653)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3654,3661)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",3662,3663)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",3664,3665)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4about )",3666,3667)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3668,3675)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5about )",3676,3677)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3678,3685)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6about )",3686,3687)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3688,3695)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7about )",3696,3697)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3698,3705)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8about )",3706,3707)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3708,3715)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9about )",3716,3717)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3718,3725)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10about )",3726,3727)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3728,3735)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper1 )",3736,3748)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11about )",3749,3750)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3751,3758)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12about )",3759,3760)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3761,3768)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13about )",3769,3770)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3771,3778)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1abxx  )",3779,3779)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",3780,3788)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1ab  )",3789,3789)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",3790,3798)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2ab  )",3799,3799)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",3800,3808)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3ab  )",3809,3809)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",3810,3818)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4ab  )",3819,3819)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",3820,3828)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5ab  )",3829,3829)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",3830,3838)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6ab  )",3839,3839)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",3840,3848)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",3849,3849)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",3850,3850)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",3851,3852)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",3853,3855)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3856,3856)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win1exit",3857,3857)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",3858,3858)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3859,3859)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhow",3860,3860)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'mrabn\explane\how.pdf' , MAXIMIZE",3861,3861)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",3862,3862)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myguide",3863,3863)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1g )",3864,3868)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",3869,3869)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",3870,3879)
SS_ESASTEP("Circuits\Main\Main\Main","win1g.Center ( )",3880,3880)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1g )",3881,3884)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",3885,3888)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'œ—Ã… «·Õ—«—…' )",3889,3889)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1lg1 )",3890,3891)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",3892,3893)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1g )",3894,3895)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3896,3903)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2g )",3904,3905)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3906,3913)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3g )",3914,3915)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3916,3923)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4g )",3924,3925)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3926,3933)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5g )",3934,3935)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3936,3943)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6g )",3944,3945)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3946,3953)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7g )",3954,3955)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3956,3963)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8g )",3964,3965)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3966,3973)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9g )",3974,3975)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3976,3983)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10g )",3984,3985)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3986,3993)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11g )",3994,3995)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",3996,4003)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13g )",4004,4005)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4006,4013)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14g )",4014,4015)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4016,4023)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15g )",4024,4025)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4026,4033)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16g )",4034,4035)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4036,4043)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17g )",4044,4045)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4046,4052)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18g )",4053,4054)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4055,4061)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19g )",4062,4063)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4064,4070)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20g )",4071,4072)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4073,4080)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21g )",4081,4082)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4083,4090)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl22g )",4091,4092)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4093,4100)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",4101,4101)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '«·„”«›« /«·ﬂ ·/«·√Ê“«‰' )",4102,4102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1lg2 )",4103,4104)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",4105,4106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1gl )",4107,4108)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4109,4116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2gl )",4117,4118)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4119,4126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3gl )",4127,4128)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4129,4136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4gl )",4137,4138)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4139,4146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5gl )",4147,4148)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4149,4156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6gl )",4157,4158)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4159,4166)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lb7gl )",4167,4168)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4169,4176)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8gl )",4177,4178)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4179,4186)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10gl )",4187,4188)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4189,4196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9gl )",4197,4198)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4199,4206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11gl )",4207,4208)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4209,4216)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12gl )",4217,4218)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4219,4226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13gl )",4227,4228)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4229,4236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14gl )",4237,4238)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4239,4246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15gl )",4247,4248)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4249,4256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16gl )",4257,4258)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4259,4266)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17gl )",4267,4268)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4269,4276)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18gl )",4277,4278)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4279,4286)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19gl )",4287,4288)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4289,4296)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20gl )",4297,4298)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4299,4306)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21gl )",4307,4308)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4309,4316)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl22gl )",4317,4318)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4319,4326)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl23gl )",4327,4328)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4329,4336)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl24gl )",4337,4338)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4339,4346)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",4347,4347)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '«·ÿ«ﬁ… «·‰ÊÊÌ…' )",4348,4348)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1lg2e )",4349,4350)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",4351,4352)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1gle )",4353,4354)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4355,4362)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2gle )",4363,4364)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4365,4372)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4gle )",4373,4374)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4375,4382)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5gle )",4383,4384)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4385,4392)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6gle )",4393,4394)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4395,4402)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8gle )",4403,4404)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4405,4412)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9gle )",4413,4414)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4415,4422)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11gle )",4423,4424)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4425,4432)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12gle )",4433,4434)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4435,4442)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13gle )",4443,4444)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4445,4452)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14gle )",4453,4454)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4455,4462)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15gle )",4463,4464)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4465,4472)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16gle )",4473,4474)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4475,4482)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17gle )",4483,4484)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4485,4492)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18gle )",4493,4494)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4495,4502)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl22gle )",4503,4504)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4505,4512)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl24gle )",4513,4514)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4515,4522)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",4523,4523)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '«·÷€ÿ «·ÃÊÌ' )",4524,4524)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1lg2p )",4525,4526)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",4527,4528)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1glp )",4529,4530)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4531,4538)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2glp )",4539,4540)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4541,4548)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3glp )",4549,4550)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4551,4558)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4glp )",4559,4560)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4561,4568)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5glp )",4569,4570)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4571,4578)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6glp )",4579,4580)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4581,4588)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lb7glp )",4589,4590)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4591,4598)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8glp )",4599,4600)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4601,4608)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10glp )",4609,4610)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4611,4618)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9glp )",4619,4620)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4621,4628)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11glp )",4629,4630)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4631,4638)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12glp )",4639,4640)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4641,4648)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13glp )",4649,4650)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4651,4658)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14glp )",4659,4660)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4661,4668)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15glp )",4669,4670)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4671,4678)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16glp )",4679,4680)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4681,4688)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17glp )",4689,4690)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4691,4698)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18glp )",4699,4700)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4701,4708)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19glp )",4709,4710)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4711,4718)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20glp )",4719,4720)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4721,4728)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21glp )",4729,4730)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4731,4738)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl22glp )",4739,4740)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4741,4748)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl23glp )",4749,4750)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4751,4758)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl24glp )",4759,4760)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4761,4768)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl25glp )",4769,4770)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4771,4778)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl26glp )",4779,4780)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4781,4787)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl27glp )",4788,4789)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",4790,4796)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",4797,4797)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",4798,4798)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Toolbar ( Toolbar1g )",4799,4799)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",4800,4807)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarbtn1g )",4808,4809)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",4810,4810)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",4811,4813)
SS_ESASTEP("Circuits\Main\Main\Main","End Toolbar",4814,4815)
SS_ESASTEP("Circuits\Main\Main\Main","Define Context Menu Of Parent Window : win1g",4816,4816)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Back' )      SEPARATOR",4817,4818)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Explane Convertor' )      SEPARATOR",4819,4820)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About Designer' )      SEPARATOR",4821,4822)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'PWCT Logo' )      SEPARATOR",4823,4824)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",4825,4825)
SS_ESASTEP("Circuits\Main\Main\Main","End of menu",4826,4826)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",4827,4828)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",4829,4831)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",4832,4832)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win1gexit",4833,4833)
SS_ESASTEP("Circuits\Main\Main\Main","win1g.Release ( )",4834,4834)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",4835,4835)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myong",4836,4836)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",4837,4837)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/guide.mp3' type mpegvideo alias MediaFile',nil,0,0",4838,4838)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",4839,4839)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",4840,4840)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclear",4841,4841)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 0",4842,4842)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := 0",4843,4843)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := 0",4844,4844)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1l.Value := 0",4845,4845)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2l.Value := 0",4846,4846)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3l.Value := 0",4847,4847)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1m.Value := 0",4848,4848)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2m.Value := 0",4849,4849)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3m.Value := 0",4850,4850)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1me.Value := 0",4851,4851)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2we.Value := 0",4852,4852)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mo.Value := 0",4853,4853)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4wo.Value := 0",4854,4854)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1pa.Value := 0",4855,4855)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cm.Value := 0",4856,4856)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mm.Value := 0",4857,4857)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4m.Value := 0",4858,4858)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5nm.Value := 0",4859,4859)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6bar.Value := 0",4860,4860)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j.Value := 0",4861,4861)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal.Value := 0",4862,4862)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev.Value := 0",4863,4863)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4grm.Value := 0",4864,4864)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1j2.Value := 0",4865,4865)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2cal2.Value := 0",4866,4866)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3mev2.Value := 0",4867,4867)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4amu.Value := 0",4868,4868)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",4869,4869)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'mrabn/music/new.mp3' typ",4870,4870)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",4871,4871)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",4872,4872)
Return
*-------------------------------------------------------------------*
