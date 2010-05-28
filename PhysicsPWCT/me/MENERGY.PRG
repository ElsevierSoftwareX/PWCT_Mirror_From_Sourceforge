*---------------------------------------------------------------------------*
* Time : 19:26:40    Date : 05/26/2010
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_MENERGY_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MENERGY_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 800 ;
HEIGHT 539 ;
ICON "abn.ico" ;
TITLE " Õ”«» «·ÿ«ﬁ… «·„Ìﬂ«‰ÌﬂÌ…   -Designed By Mr AbOeLsOuD AbDeLrAoF" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur.ani" ;
BACKCOLOR {236,233,216} ;
FONT "Andalus" SIZE 12 ;
NOTIFYICON "abn.ico" 

win1.Center ( )
@ 166 ,5 FRAME Frame1;
WIDTH 171 ;
HEIGHT 136 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 435 ,244 FRAME Frame3;
WIDTH 127 ;
HEIGHT 60 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 33 ,5 FRAME Frame4;
WIDTH 124 ;
HEIGHT 130 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 23 ,179 FRAME Frame2;
WIDTH 601 ;
HEIGHT 398 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 436 ,380 FRAME Framekj;
WIDTH 124 ;
HEIGHT 59 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 317 ,0 FRAME Frame5;
WIDTH 180 ;
HEIGHT 104 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
OPAQUE ;
TRANSPARENT 

@ 442 ,553 BUTTONEX btn1;
CAPTION " GoodBye";
FONTCOLOR {255,0,128};
ON CLICK Sameh()  ;
WIDTH 94 HEIGHT 34 ;
FONT "Modern" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 152 ,657 BUTTONEX btn2;
CAPTION "";
FONTCOLOR {128,0,255};
PICTURE "ME.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK Compute()  ;
WIDTH 81 HEIGHT 46 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 114 ,561 TEXTBOX text1;
HEIGHT 24 ;
WIDTH 44 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {241,243,209} ;
FONTCOLOR {128,0,64}
@ 114 ,499 TEXTBOX text2;
HEIGHT 24 ;
WIDTH 44 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {247,245,221} ;
FONTCOLOR {64,128,128}
@ 156 ,431 TEXTBOX text3;
HEIGHT 36 ;
WIDTH 186 ;
READONLY ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {203,250,204} ;
FONTCOLOR {0,0,255}
@ 158 ,631 LABEL lbl1 ;
VALUE "=" ;
WIDTH 23 ;
HEIGHT 31 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 65 ,559 LABEL lbl2 ;
VALUE "«·ﬂ ·…" ;
WIDTH 47 ;
HEIGHT 21 ;
FONT "Fixedsys" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 66 ,497 LABEL lbl3 ;
VALUE "«·⁄Ã·…" ;
WIDTH 48 ;
HEIGHT 21 ;
FONT "Fixedsys" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 63 ,654 LABEL lbl4 ;
VALUE "«·ÿ«ﬁ… «·„Ìﬂ«‰ÌﬂÌ…" ;
WIDTH 113 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 86 ,573 LABEL lbl5 ;
VALUE "ﬂ" ;
WIDTH 28 ;
HEIGHT 24 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 331 ,242 LABEL lbl6 ;
VALUE "ÃÊ·" ;
WIDTH 46 ;
HEIGHT 37 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {255,0,128}
@ 61 ,477 LABEL lbl7 ;
VALUE "x" ;
WIDTH 17 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 65 ,419 LABEL lbl8 ;
VALUE "«·«— ›«⁄" ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Fixedsys" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 83 ,441 LABEL lbl9 ;
VALUE "›" ;
WIDTH 29 ;
HEIGHT 25 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 21 ,3 LABEL lbl10 ;
VALUE "*************************" ;
WIDTH 112 ;
HEIGHT 11 ;
FONT "Tarzan" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 66 ,631 LABEL lbl11 ;
VALUE "=" ;
WIDTH 19 ;
HEIGHT 24 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 81 ,510 LABEL lbl12 ;
VALUE "Ã‹" ;
WIDTH 25 ;
HEIGHT 24 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 203 ,188 LABEL lbl13 ;
VALUE "----------------------------------------------------------------------------------------------------------------------------------------------" ;
WIDTH 587 ;
HEIGHT 19 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 94 ,383 LABEL lbl14 ;
VALUE "+" ;
WIDTH 13 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 61 ,545 LABEL lbl15 ;
VALUE "x" ;
WIDTH 16 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 319 ,-2 IMAGE image25;
PICTURE "25.bmp";
WIDTH 182 HEIGHT 96
@ 34 ,527 LABEL lbl16 ;
VALUE "***************************" ;
WIDTH 208 ;
HEIGHT 18 ;
FONT "Bastion" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 42 ,12 IMAGE image1;
PICTURE "ABN.jpg";
WIDTH 112 HEIGHT 116
@ 3 ,502 LABEL lbl17 ;
VALUE "Õ”‹«» «·ÿ«ﬁ… «·„Ìﬂ«‰ÌﬂÌ…" ;
WIDTH 238 ;
HEIGHT 36 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,87,6}
@ 0 ,6 LABEL lbl18 ;
VALUE "Designed By :" ;
WIDTH 116 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,74,74}
@ 169 ,14 LABEL lbl19 ;
VALUE "Mr AbOeLsOuD" ;
WIDTH 158 ;
HEIGHT 37 ;
FONT "Symbol" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 214 ,23 LABEL lbl20 ;
VALUE "Physics Advisor" ;
WIDTH 117 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,128,64}
@ 238 ,26 LABEL lbl21 ;
VALUE "Zagazig  - Sharqia" ;
WIDTH 117 ;
HEIGHT 22 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,0}
@ 258 ,14 LABEL lbl22 ;
VALUE "Tel  : 0552165533" ;
WIDTH 133 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,255}
@ 281 ,14 LABEL lbl23 ;
VALUE "Mob : 0105234960" ;
WIDTH 144 ;
HEIGHT 19 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 197 ,53 LABEL lbl24 ;
VALUE "Mr ABN" ;
WIDTH 60 ;
HEIGHT 23 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,255}
@ 451 ,397 BUTTONEX btn3;
CAPTION "";
FONTCOLOR {128,0,255};
PICTURE "ca.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK abn1()  ;
WIDTH 30 HEIGHT 39 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 451 ,270 BUTTONEX btnCAL;
CAPTION "";
PICTURE "CL.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK CAL()  ;
WIDTH 60 HEIGHT 40 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 357 ,111 BUTTONEX btnW;
CAPTION "";
PICTURE "W.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK W()  ;
WIDTH 60 HEIGHT 40 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 430 ,7 LABEL lble ;
VALUE "email :--" ;
WIDTH 47 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {217,0,217}
@ 454 ,8 LABEL lblw ;
VALUE "abn_feshofesho_s@yahoo.com" ;
WIDTH 227 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {113,0,56}
@ 426 ,418 LABEL lble2 ;
VALUE "«·… Õ«”»… »”Ìÿ…" ;
WIDTH 91 ;
HEIGHT 19 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {56,119,45}
@ 388 ,258 LABEL lble3 ;
VALUE "„/À2" ;
WIDTH 32 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,230}
@ 421 ,272 LABEL lble4 ;
VALUE "«·… Õ«”»… ⁄·„Ì…" ;
WIDTH 101 ;
HEIGHT 28 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {193,0,193}
@ 114 ,432 TEXTBOX text4;
HEIGHT 24 ;
WIDTH 44 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,242,236} ;
FONTCOLOR {105,0,210}
@ 388 ,298 LABEL lble5 ;
VALUE "9.8" ;
WIDTH 31 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 9 ,462 LABEL lble6 ;
VALUE "ME" ;
WIDTH 34 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 284 ,416 TEXTBOX text5;
HEIGHT 36 ;
WIDTH 91 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {233,233,233} ;
FONTCOLOR {0,0,0}
@ 284 ,295 TEXTBOX text6;
HEIGHT 36 ;
WIDTH 91 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,238,230} ;
FONTCOLOR {128,0,255}
@ 332 ,295 TEXTBOX text7;
HEIGHT 37 ;
WIDTH 192 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {210,240,255} ;
FONTCOLOR {206,0,103}
@ 325 ,548 BUTTONEX btn7;
CAPTION "";
PICTURE "ME.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK compute2()  ;
WIDTH 81 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 87 ,672 LABEL lbl55 ;
VALUE "ÿ „" ;
WIDTH 39 ;
HEIGHT 27 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 248 ,559 LABEL lbl56 ;
VALUE "ÿ „" ;
WIDTH 39 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 160 ,373 LABEL lbl57 ;
VALUE "ÃÊ·" ;
WIDTH 48 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {98,0,196}
@ 337 ,517 LABEL lbl58 ;
VALUE "=" ;
WIDTH 23 ;
HEIGHT 25 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 223 ,299 LABEL lbl59 ;
VALUE "ÿ«ﬁ… «·Õ—ﬂ…" ;
WIDTH 93 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 220 ,396 LABEL lbl60 ;
VALUE "+" ;
WIDTH 19 ;
HEIGHT 29 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 221 ,413 LABEL lbl61 ;
VALUE "ÿ«ﬁ… «·Ê÷⁄" ;
WIDTH 101 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 217 ,516 LABEL lbl62 ;
VALUE "=" ;
WIDTH 22 ;
HEIGHT 24 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 222 ,544 LABEL lbl63 ;
VALUE "«·ÿ«ﬁ… «·„Ìﬂ«‰ÌﬂÌ…" ;
WIDTH 117 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 387 ,331 LABEL lbl111 ;
VALUE "„ﬁœ«—Â« À«» " ;
WIDTH 96 ;
HEIGHT 24 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {147,147,0}
@ 382 ,665 LABEL lbl112 ;
VALUE "„·ÕÊŸ…" ;
WIDTH 57 ;
HEIGHT 33 ;
FONT "Andalus" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {47,94,94}
@ 288 ,518 LABEL lbl113 ;
VALUE "=" ;
WIDTH 20 ;
HEIGHT 22 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 383 ,473 LABEL lbl114 ;
VALUE "⁄Ã·… «·Ã«–»Ì… «·«—÷Ì…" ;
WIDTH 156 ;
HEIGHT 26 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {117,0,0}
@ 250 ,336 LABEL lbl115 ;
VALUE "ÿ Õ" ;
WIDTH 47 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {106,0,213}
@ 84 ,546 LABEL lbl116 ;
VALUE "x" ;
WIDTH 17 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 252 ,397 LABEL lbl117 ;
VALUE "+" ;
WIDTH 17 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 86 ,479 LABEL lbl118 ;
VALUE "x" ;
WIDTH 14 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 286 ,396 LABEL lbl119 ;
VALUE "+" ;
WIDTH 19 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 249 ,439 LABEL lbl120 ;
VALUE "ÿ Ê" ;
WIDTH 42 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 250 ,519 LABEL lbl121 ;
VALUE "=" ;
WIDTH 19 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 111 ,480 LABEL lbl122 ;
VALUE "x" ;
WIDTH 18 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 110 ,545 LABEL lbl123 ;
VALUE "x" ;
WIDTH 13 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 123 ,633 LABEL lbl124 ;
VALUE "=" ;
WIDTH 22 ;
HEIGHT 24 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 89 ,632 LABEL lbl125 ;
VALUE "=" ;
WIDTH 24 ;
HEIGHT 27 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 115 ,292 TEXTBOX text8;
HEIGHT 24 ;
WIDTH 44 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {222,222,188} ;
FONTCOLOR {101,50,50}
@ 114 ,228 TEXTBOX text9;
HEIGHT 24 ;
WIDTH 44 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {210,240,255} ;
FONTCOLOR {179,0,89}
@ 89 ,280 LABEL lbl134 ;
VALUE "x" ;
WIDTH 10 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {223,112,0}
@ 64 ,281 LABEL lbl135 ;
VALUE "x" ;
WIDTH 10 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {223,112,0}
@ 119 ,339 LABEL lbl136 ;
VALUE "1/2" ;
WIDTH 26 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 68 ,338 LABEL lbl137 ;
VALUE "1/2" ;
WIDTH 26 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 64 ,361 LABEL lbl138 ;
VALUE "}" ;
WIDTH 22 ;
HEIGHT 80 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 65 ,396 LABEL lbl139 ;
VALUE "{" ;
WIDTH 23 ;
HEIGHT 78 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 62 ,608 LABEL lbl140 ;
VALUE "}" ;
WIDTH 24 ;
HEIGHT 84 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 113 ,278 LABEL lbl142 ;
VALUE "x" ;
WIDTH 11 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {223,112,0}
@ 91 ,340 LABEL lbl143 ;
VALUE "1/2" ;
WIDTH 24 ;
HEIGHT 22 ;
FONT "Arial" SIZE 11  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 67 ,180 LABEL lbl144 ;
VALUE "{" ;
WIDTH 20 ;
HEIGHT 90 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 95 ,217 LABEL lbl145 ;
VALUE "À  2" ;
WIDTH 12 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {187,0,94}
@ 85 ,242 LABEL lbl146 ;
VALUE "À  2" ;
WIDTH 13 ;
HEIGHT 19 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {204,0,102}
@ 86 ,255 LABEL lbl147 ;
VALUE "⁄" ;
WIDTH 10 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {164,0,82}
@ 89 ,310 LABEL lbl148 ;
VALUE "ﬂ" ;
WIDTH 20 ;
HEIGHT 21 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,64}
@ 64 ,200 LABEL lbl149 ;
VALUE "„—»⁄ «·”—⁄…" ;
WIDTH 81 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {210,0,105}
@ 69 ,291 LABEL lbl150 ;
VALUE "«·ﬂ ·…" ;
WIDTH 47 ;
HEIGHT 19 ;
FONT "Fixedsys" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
@ 453 ,465 BUTTONEX btnFC;
CAPTION "";
PICTURE "FC.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK FC()  ;
WIDTH 24 HEIGHT 36 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1

Proc abn1
Execute File "abn.exe"
Return Nil
Proc CAL
Execute File "ABNCAL" MAXIMIZE
Return Nil
Proc W
Execute File "PRESENTATION.EXE" MAXIMIZE
Return Nil
Proc FC
Execute File "FC.SWF" MAXIMIZE
Return Nil
Proc Sameh
win1.Release ( )
Return Nil
Proc Compute
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num4 = VAL ( win1.text4.value )
num8 = VAL ( win1.text8.value )
num9 = VAL ( win1.text9.value )
pers := (num1*num2*num4+(0.5*num8*num9*num9))
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers
Return Nil
Proc Compute2
num5 = VAL ( win1.text5.value )
num6 = VAL ( win1.text6.value )
pers := (num5+num6)
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text7.Value := pers
Return Nil


End Of Resistance

INIT PROCEDURE Init_MENERGY
START DOUBLES
Return
*-------------------------------------------------------------------*
