*---------------------------------------------------------------------------*
* Time : 15:48:32    Date : 05/28/2010
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


Resistance R_PENERGYMRABN_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PENERGYMRABN_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 698 ;
HEIGHT 542 ;
ICON "abn.ico" ;
TITLE " Õ”«» ÿ«ﬁ… «·Ê÷⁄(ÿ«ﬁ… «·ÃÂœ)   -Designed By Mr AbOeLsOuD AbDeLrAoF" ;
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

@ 29 ,186 FRAME Frame2;
WIDTH 491 ;
HEIGHT 386 ;
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

@ 328 ,2 FRAME Frame5;
WIDTH 173 ;
HEIGHT 79 ;
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
@ 156 ,550 BUTTONEX btn2;
CAPTION "";
FONTCOLOR {128,0,255};
PICTURE "PE.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK Compute()  ;
WIDTH 81 HEIGHT 46 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 125 ,460 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 50 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {241,243,209} ;
FONTCOLOR {128,0,64}
@ 126 ,381 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 50 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {247,245,221} ;
FONTCOLOR {64,128,128}
@ 164 ,295 TEXTBOX text3;
HEIGHT 36 ;
WIDTH 186 ;
READONLY ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {203,250,204} ;
FONTCOLOR {0,0,255}
@ 162 ,517 LABEL lbl1 ;
VALUE "=" ;
WIDTH 23 ;
HEIGHT 31 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 58 ,464 LABEL lbl2 ;
VALUE "«·ﬂ ·…" ;
WIDTH 55 ;
HEIGHT 30 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 64 ,383 LABEL lbl3 ;
VALUE "«·⁄Ã·…" ;
WIDTH 51 ;
HEIGHT 32 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 57 ,544 LABEL lbl4 ;
VALUE "ÿ«ﬁ… «·Ê÷⁄" ;
WIDTH 119 ;
HEIGHT 40 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 93 ,476 LABEL lbl5 ;
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
@ 65 ,365 LABEL lbl7 ;
VALUE "x" ;
WIDTH 17 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 67 ,189 LABEL lbl8 ;
VALUE "«·«— ›«⁄ ⁄‰ ”ÿÕ «·«—÷" ;
WIDTH 175 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 93 ,331 LABEL lbl9 ;
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
@ 62 ,520 LABEL lbl11 ;
VALUE "=" ;
WIDTH 23 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 91 ,402 LABEL lbl12 ;
VALUE "Ã‹" ;
WIDTH 25 ;
HEIGHT 24 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {64,128,128}
@ 313 ,3 IMAGE image25;
PICTURE "25.bmp";
WIDTH 182 HEIGHT 96
@ 202 ,188 LABEL lbl13 ;
VALUE "----------------------------------------------------------------------------------------------------------------------------------------------" ;
WIDTH 472 ;
HEIGHT 20 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 16 ,401 LABEL lbl14 ;
VALUE "PE" ;
WIDTH 41 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,255}
@ 62 ,437 LABEL lbl15 ;
VALUE "x" ;
WIDTH 16 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 41 ,450 LABEL lbl16 ;
VALUE "***************************" ;
WIDTH 208 ;
HEIGHT 18 ;
FONT "Bastion" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 42 ,12 IMAGE image1;
PICTURE "ABN.jpg";
WIDTH 112 HEIGHT 116
@ 11 ,452 LABEL lbl17 ;
VALUE "Õ”‹«» ÿ«ﬁ… «·Ê÷⁄" ;
WIDTH 197 ;
HEIGHT 37 ;
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
@ 448 ,394 BUTTONEX btn3;
CAPTION "";
FONTCOLOR {128,0,255};
PICTURE "ca.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK abn1()  ;
WIDTH 34 HEIGHT 42 ;
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
@ 350 ,112 BUTTONEX btnW;
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
@ 390 ,315 LABEL lble3 ;
VALUE "=" ;
WIDTH 15 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,230}
@ 419 ,274 LABEL lble4 ;
VALUE "«·… Õ«”»… ⁄·„Ì…" ;
WIDTH 101 ;
HEIGHT 28 ;
FONT "Andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {193,0,193}
@ 126 ,296 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 59 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,242,236} ;
FONTCOLOR {105,0,210}
@ 387 ,273 LABEL lble5 ;
VALUE "9.8" ;
WIDTH 33 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 385 ,226 LABEL lble6 ;
VALUE "„/À2" ;
WIDTH 44 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
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
WIDTH 97 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,238,230} ;
FONTCOLOR {128,0,255}
@ 332 ,295 TEXTBOX text7;
HEIGHT 37 ;
WIDTH 192 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {210,240,255} ;
FONTCOLOR {206,0,103}
@ 325 ,551 BUTTONEX btn7;
CAPTION "";
PICTURE "PE.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK compute2()  ;
WIDTH 81 HEIGHT 46 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 91 ,541 LABEL lbl55 ;
VALUE "ÿ Ê" ;
WIDTH 39 ;
HEIGHT 27 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 249 ,541 LABEL lbl56 ;
VALUE "ÿ Ê" ;
WIDTH 39 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 165 ,241 LABEL lbl57 ;
VALUE "ÃÊ·" ;
WIDTH 48 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {98,0,196}
@ 335 ,514 LABEL lbl58 ;
VALUE "=" ;
WIDTH 23 ;
HEIGHT 25 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 224 ,213 LABEL lbl59 ;
VALUE "«·«— ›«⁄ ⁄‰ ”ÿÕ «·√—÷" ;
WIDTH 180 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 219 ,399 LABEL lbl60 ;
VALUE "x" ;
WIDTH 19 ;
HEIGHT 29 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 222 ,446 LABEL lbl61 ;
VALUE "«·Ê“‰" ;
WIDTH 56 ;
HEIGHT 31 ;
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
@ 218 ,544 LABEL lbl63 ;
VALUE "ÿ«ﬁ… «·Ê÷⁄" ;
WIDTH 115 ;
HEIGHT 34 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 387 ,331 LABEL lbl111 ;
VALUE "„ﬁœ«—Â« À«» " ;
WIDTH 96 ;
HEIGHT 24 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {147,147,0}
@ 377 ,611 LABEL lbl112 ;
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
@ 381 ,434 LABEL lbl114 ;
VALUE "⁄Ã·… «·Ã«–»Ì… «·«—÷Ì…" ;
WIDTH 165 ;
HEIGHT 32 ;
FONT "Andalus" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {117,0,0}
@ 254 ,315 LABEL lbl115 ;
VALUE "›" ;
WIDTH 30 ;
HEIGHT 26 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {106,0,213}
@ 92 ,438 LABEL lbl116 ;
VALUE "x" ;
WIDTH 17 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 252 ,399 LABEL lbl117 ;
VALUE "x" ;
WIDTH 17 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 93 ,361 LABEL lbl118 ;
VALUE "x" ;
WIDTH 14 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 286 ,396 LABEL lbl119 ;
VALUE "x" ;
WIDTH 19 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 249 ,460 LABEL lbl120 ;
VALUE "Ê" ;
WIDTH 18 ;
HEIGHT 27 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 253 ,519 LABEL lbl121 ;
VALUE "=" ;
WIDTH 19 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 126 ,361 LABEL lbl122 ;
VALUE "x" ;
WIDTH 18 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 126 ,439 LABEL lbl123 ;
VALUE "x" ;
WIDTH 17 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,128,0}
@ 123 ,518 LABEL lbl124 ;
VALUE "=" ;
WIDTH 22 ;
HEIGHT 24 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 94 ,518 LABEL lbl125 ;
VALUE "=" ;
WIDTH 24 ;
HEIGHT 27 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 451 ,471 BUTTONEX btnFC;
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
pers := (num1*num2*num4)
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text3.Value := pers
Return Nil
Proc Compute2
num5 = VAL ( win1.text5.value )
num6 = VAL ( win1.text6.value )
pers := (num5*num6)
pers = STR ( pers )
pers = ALLTRIM ( pers )
win1.text7.Value := pers
Return Nil


End Of Resistance

INIT PROCEDURE Init_PENERGYMRABN
START DOUBLES
Return
*-------------------------------------------------------------------*
