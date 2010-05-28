*---------------------------------------------------------------------------*
* Time : 14:52:56    Date : 05/28/2010
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


Resistance R_MRABOELSOUDOFFICE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MRABOELSOUDOFFICE_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 779 ;
HEIGHT 548 ;
ICON "PWCTICON" ;
TITLE "Office 2003 Full    .........(Designed By Mr AbOeLsOuD Abd elraof" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "MrAbOeLsOuD/BACK/ABN.ANI" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "MrABN.ICO" 

win1.Center ( )
@ -3 ,-3 IMAGE image1WIN1;
PICTURE "MrAbOeLsOuD/BACK/MRABN.jpg";
STRETCH ;
WIDTH 777 HEIGHT 518
@ 13 ,354 LABEL lbl1WIN1 ;
VALUE "»—‰«„Ã «·«Ê›Ì” 2003 ﬂ«„·" ;
WIDTH 286 ;
HEIGHT 39 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 151 ,103 FRAME Frame1WIN1;
WIDTH 228 ;
HEIGHT 168 ;
FONT "Arial" ;
SIZE 14 ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 447 ,588 FRAME Frame2WIN1;
WIDTH 144 ;
HEIGHT 58 ;
FONT "Arial" ;
SIZE 14 ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 321 ,103 FRAME Frame3WIN1;
WIDTH 228 ;
HEIGHT 82 ;
FONT "Arial" ;
SIZE 14 ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 171 ,108 BUTTONEX btn1WIN1;
CAPTION "Office 2003 Full";
FONTCOLOR {255,0,128};
PICTURE "mraboelsoud/back/off.BMP";
LEFTTEXT ;
ON CLICK OFFICE()  ;
WIDTH 216 HEIGHT 61 ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
TOOLTIP "«÷€ÿ · À»Ì  «·»—‰«„Ã"
@ 254 ,108 BUTTONEX btn2WIN1;
CAPTION " ⁄—Ì» «·√Ê›Ì” 2003";
FONTCOLOR {0,0,255};
PICTURE "mraboelsoud/back/off.BMP";
LEFTTEXT ;
ON CLICK arabic()  ;
WIDTH 216 HEIGHT 61 ;
FONT "Tahoma" SIZE 14 ;
BOLD ;
TOOLTIP "«÷€ÿ · ⁄—Ì» «·»—‰«„Ã"
@ 327 ,109 BUTTONEX btn3WIN1;
CAPTION "ﬂ » ﬁÌ„…";
FONTCOLOR {0,102,51};
PICTURE "mraboelsoud/back/books.BMP";
LEFTTEXT ;
ON CLICK phpwctbooks()  ;
WIDTH 216 HEIGHT 61 ;
FONT "Tahoma" SIZE 16 ;
BOLD ;
TOOLTIP "«÷€ÿ ·„‘«Âœ… ﬂ » ﬁÌ„…"
@ 456 ,600 BUTTONEX btn4WIN1;
CAPTION "Exit";
FONTCOLOR {221,0,0};
PICTURE "mraboelsoud/back/x.BMP";
VERTICAL ;
ON CLICK exitwin1()  ;
WIDTH 114 HEIGHT 42 ;
FONT "Arial" SIZE 20 ;
BOLD ;
TOOLTIP "«÷€ÿ ·«€·«ﬁ «·‰«›–…"
DEFINE NOTIFY MENU OF win1
Set MenuStyle EXTENDED
MENUITEM "Show Window" Action show()
SEPARATOR
MENUITEM "Hide Window" Action hide()
SEPARATOR
MENUITEM "About Designer" Action MSGINFO( "»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›     .....  «·“ﬁ«“Ìﬁ..." )
SEPARATOR
MENUITEM "Close Window" Action exitwin1()  IMAGE "mraboelsoud/back/x.bmp"
END MENU
DEFINE Context MENU OF win1
POPUP "„·Õﬁ«  «·√Ê›Ì”"
MENUITEM " À»Ì  «·»—‰«„Ã" Action setup()
SEPARATOR
MENUITEM "«·”—Ì«· " Action MSGINFO( "GWH28-DGCMP-P6RC4-6J4MT-3HFDY" )
MENUITEM " ⁄—Ì» «·»—‰«„Ã" Action arabic()
SEPARATOR
MENUITEM "—„Ê“ «·—Ì«÷Ì« " Action math()
SEPARATOR
MENUITEM "Tee Chart" Action teechart()
END POPUP
POPUP "PWCT Books"
MENUITEM "Book1" Action abbook1()  IMAGE "mraboelsoud/back/books.bmp"
SEPARATOR
MENUITEM "Book2" Action abbook2()  IMAGE "mraboelsoud/back/books.bmp"
SEPARATOR
MENUITEM "Book3" Action abbook3()  IMAGE "mraboelsoud/back/books.bmp"
SEPARATOR
MENUITEM "Book4" Action abbook4()  IMAGE "mraboelsoud/back/books.bmp"
END POPUP
MENUITEM "Show Window" Action show()
SEPARATOR
MENUITEM "Hide Window" Action hide()
SEPARATOR
MENUITEM "Close Window" Action exitwin1()
END MENU
DEFINE TIMER Timer1main INTERVAL 1000 ;
Action maintime()
@ 102 ,408 LABEL timer ;
VALUE "" ;
WIDTH 306 ;
HEIGHT 87 ;
FONT "Tahoma" SIZE 48  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 462 ,350 DATEPICKER datepicker;
WIDTH 215 ;
FONT "Courier New" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
TITLEBACKCOLOR {255,255,0} ;
TITLEFONTCOLOR {0,0,255} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1

Proc office
DEFINE WINDOW office ;
AT 10 ,10 ;
WIDTH 694 ;
HEIGHT 502 ;
ICON "PWCTICON" ;
TITLE " À»Ì  »—‰«„Ã «·«Ê›Ì”" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216} 

OFFICE.Center ( )
@ -6 ,-8 IMAGE image1OFFICESET;
PICTURE "MRABOELSOUD/BACK/OFF.jpg";
STRETCH ;
WIDTH 701 HEIGHT 474
@ 53 ,71 FRAME Frame1OFFICE;
WIDTH 376 ;
HEIGHT 90 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 386 ,46 FRAME Frame2OFFICE;
WIDTH 512 ;
HEIGHT 64 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 159 ,486 FRAME Frame3OFFICE;
WIDTH 182 ;
HEIGHT 102 ;
FONT "Arial" ;
SIZE 9 ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 397 ,58 TEXTBOX text1;
HEIGHT 37 ;
WIDTH 96 ;
VALUE "" ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,198,198} ;
FONTCOLOR {255,0,128}
@ 397 ,157 TEXTBOX text2;
HEIGHT 37 ;
WIDTH 96 ;
VALUE "" ;
FONT "Arial" SIZE 17 ;
BACKCOLOR {255,198,198} ;
FONTCOLOR {0,0,255}
@ 397 ,256 TEXTBOX text3;
HEIGHT 37 ;
WIDTH 96 ;
VALUE "" ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,198,198} ;
FONTCOLOR {185,92,0}
@ 397 ,355 TEXTBOX text4;
HEIGHT 37 ;
WIDTH 96 ;
VALUE "" ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,198,198} ;
FONTCOLOR {128,0,255}
@ 397 ,454 TEXTBOX text5;
HEIGHT 37 ;
WIDTH 96 ;
VALUE "" ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,198,198} ;
FONTCOLOR {53,106,106}
@ 77 ,78 BUTTONEX btn1office;
CAPTION "Set Up Office 2003";
FONTCOLOR {0,0,255};
PICTURE "MRABOELSOUD/BACK/OFF.BMP";
LEFTTEXT ;
ON CLICK setup()  ;
WIDTH 361 HEIGHT 47 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 414 ,578 BUTTONEX btn2OFFICESE;
CAPTION "Exit";
FONTCOLOR {255,0,0};
PICTURE "mraboelsoud/back/x.BMP";
LEFTTEXT ;
ON CLICK exitoffice()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 9 ,166 LABEL lbl1officesset ;
VALUE " À»Ì  «·»—‰«„Ã" ;
WIDTH 153 ;
HEIGHT 40 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,128,0}
@ 348 ,118 LABEL lbl2officesset ;
VALUE "«‰”Œ «·—ﬁ„ «·”—Ì „‰ «·Ì”«— Ê÷⁄Â ›Ì «·»—‰«„Ã" ;
WIDTH 492 ;
HEIGHT 35 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 168 ,499 BUTTONEX btn1addoff;
CAPTION "—„Ê“ «·—Ì«÷Ì« ";
FONTCOLOR {0,0,128};
ON CLICK math()  ;
WIDTH 150 HEIGHT 30 ;
FONT "arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 215 ,500 BUTTONEX btn2addoff;
CAPTION "Tee Chart";
FONTCOLOR {128,0,128};
ON CLICK teechart()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 111 ,480 LABEL lbl3addoff ;
VALUE "»—«„Ã «÷«›Ì… ··«Ê›Ì”" ;
WIDTH 202 ;
HEIGHT 42 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
END WINDOW

ACTIVATE WINDOW office

Return Nil
Proc phpwctbooks
DEFINE WINDOW abbooks ;
AT 10 ,10 ;
WIDTH 671 ;
HEIGHT 564 ;
ICON "PWCTICON" ;
TITLE "”·”·… ﬂ » «·›Ì“Ì«¡ Ê ⁄·Ì„ «·»—„Ã… »œÊ‰ ﬂÊœ ··„» œ∆Ì‰" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {207,231,231} 

abbooks.Center ( )
@ -8 ,-5 IMAGE image1books;
PICTURE "mraboelsoud/back/book.jpg";
STRETCH ;
WIDTH 671 HEIGHT 538
@ 457 ,45 FRAME Frame1abbooks;
WIDTH 414 ;
HEIGHT 59 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 363 ,404 BUTTONEX btn1abbooks;
CAPTION "«·ﬂ «» «·—«»⁄";
FONTCOLOR {82,0,164};
PICTURE "mraboelsoud/back/books.BMP";
ON CLICK abbook4()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 225 ,404 BUTTONEX btn2abbooks;
CAPTION "«·ﬂ «» «·√Ê·";
FONTCOLOR {82,0,164};
PICTURE "mraboelsoud/back/books.BMP";
ON CLICK abbook1()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 317 ,404 BUTTONEX btn3abbooks;
CAPTION "«·ﬂ «» «·À«·À";
FONTCOLOR {82,0,164};
PICTURE "mraboelsoud/back/books.BMP";
ON CLICK abbook3()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 179 ,404 BUTTONEX btn4abbooks;
CAPTION "PWCT  »—‰«„Ã";
FONTCOLOR {0,89,45};
ON CLICK abbook14nova()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 271 ,404 BUTTONEX btn6abbooks;
CAPTION "«·ﬂ «» «·À«‰Ì";
FONTCOLOR {82,0,164};
PICTURE "mraboelsoud/back/books.BMP";
ON CLICK abbook2()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
@ 473 ,166 BUTTONEX btn5abbooks;
CAPTION "Foxit PDF Reader";
FONTCOLOR {0,128,64};
PICTURE "mraboelsoud/back/fox.BMP";
ON CLICK abbook5pdf()  ;
WIDTH 283 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 474 ,68 BUTTONEX btn7abbooks;
CAPTION "Exit";
FONTCOLOR {179,0,0};
PICTURE "mraboelsoud/back/x.BMP";
VERTICAL ;
ON CLICK abbookexit()  ;
WIDTH 72 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP "«÷€ÿ ·«€·«ﬁ «·‰«›–…"
@ 26 ,83 LABEL lbl1abbooks ;
VALUE "”·”·… «·›Ì“Ì«¡ Ê ⁄·„  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ ··„» œ∆Ì‰" ;
WIDTH 475 ;
HEIGHT 38 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 471 ,467 LABEL lbl2abbooks ;
VALUE "»—‰«„Ã ·ﬁ—«¡… «·ﬂ » " ;
WIDTH 180 ;
HEIGHT 39 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 63 ,198 LABEL lbl3abbooks ;
VALUE "«⁄œ«œ √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
WIDTH 260 ;
HEIGHT 36 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW abbooks

Return Nil
Proc abbook4
Execute File "mraboelsoud/BOOKS/book4/PWCTPHY4.PDF"
Return Nil
Proc abbook1
Execute File "mraboelsoud/BOOKS/book1/PWCTPHY1.PDF"
Return Nil
Proc abbook3
Execute File "mraboelsoud/BOOKS/book3/PWCTPHY3.PDF"
Return Nil
Proc abbook14nova
Execute File "mraboelsoud/BOOKS/nova/nova.PDF"
Return Nil
Proc abbook5pdf
Execute File "mraboelsoud/BOOKS/foxit/foxit.exe"
Return Nil
Proc abbook2
Execute File "mraboelsoud/BOOKS/book2/PWCTPHY2.PDF"
Return Nil
Proc exitwin1
win1.Release ( )
Return Nil
Proc exitoffice
office.Release ( )
Return Nil
Proc abbookexit
abbooks.Release ( )
Return Nil
Proc show
win1.Show ( )
Return Nil
Proc hide
win1.Hide ( )
Return Nil
Proc math
Execute File "MRABOELSOUD\ADD\MATH.EXE"
Return Nil
Proc arabic
Execute File "MRABOELSOUD\TOARABIC\MUI.MSI"
Return Nil
Proc setup
Execute File "MRABOELSOUD\OFFICE2003\PRO11.MSI"
Return Nil
Proc teechart
Execute File "MRABOELSOUD\ADD\TEECHART\TEECHARTOFFICE.EXE"
Return Nil
Proc maintime
mrabn1 = TIME()
win1.timer.Value := mrabn1
Return Nil


End Of Resistance

INIT PROCEDURE Init_MRABOELSOUDOFFICE
START DOUBLES
Return
*-------------------------------------------------------------------*
