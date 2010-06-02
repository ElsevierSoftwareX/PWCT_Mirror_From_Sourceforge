*---------------------------------------------------------------------------*
* Time : 18:48:27    Date : 06/01/2010
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


Resistance R_PWCT_PHY_LESSON4_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PWCT_PHY_LESSON4_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 473 ;
HEIGHT 518 ;
ICON "PWCTICON" ;
TITLE "PWCT_PHY LESSON 4" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/ABN.ANI" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "ico/abn.ico" ;
NOTIFYTOOLTIP "»—„Ã… √/√»Ê «·”⁄Êœ ⁄»œ «·—ƒ›" 

win1.Center ( )
@ 69 ,-12 IMAGE imageback;
PICTURE "back/phy/abn 28.jpg";
STRETCH ;
WIDTH 474 HEIGHT 423
@ 430 ,7 FRAME Frame1;
WIDTH 121 ;
HEIGHT 43 ;
FONT "Arial" ;
SIZE 9 ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 

@ 424 ,202 BUTTONEX mysave;
PICTURE "back/save.BMP";
ON CLICK mysave()  ;
WIDTH 54 HEIGHT 48 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 424 ,148 BUTTONEX myload;
PICTURE "back/load.BMP";
ON CLICK myload()  ;
WIDTH 53 HEIGHT 48 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 233 ,4 EDITBOX edit1;
WIDTH 447 ;
HEIGHT 183;
FONT "Courier New" SIZE 12 ;
BOLD ;
TOOLTIP "«÷€ÿ   Â‰«   ··Õ· " ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 434 ,295 DATEPICKER datepicker;
WIDTH 136 ;
FONT "Arial" SIZE 9 ;
TOOLTIP "«÷€ÿ ·—ƒÌ… «· «—ÌŒ " ;
BACKCOLOR {255,255,255} ;
TITLEBACKCOLOR {128,0,255} ;
TITLEFONTCOLOR {255,0,255} ;
FONTCOLOR {0,0,0}
DEFINE TOOLBAR Toolbar1;
BUTTONSIZE 220 , 45 ;
FONT "Courier New" ;
SIZE 12 ;
BOLD ;
FLAT ;
BORDER 

BUTTON toolbarbtn1;
CAPTION "Save To File" ;
PICTURE "back/s.bmp" ;
ON CLICK mysave()  ;
TOOLTIP "«÷€ÿ Â‰« ·Õ›Ÿ «·„·›" ;
SEPARATOR 

BUTTON toolbarbtn2;
CAPTION "Load From File" ;
PICTURE "back/u.bmp" ;
ON CLICK myload()  ;
TOOLTIP "«÷€ÿ Â‰« ·«Õ÷«— «·„·›" ;
SEPARATOR 

END TOOLBAR

@ 76 ,347 LABEL lbl1 ;
VALUE "„À«· ›Ì“Ì«∆Ì" ;
WIDTH 99 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BOLD ;
TOOLTIP "„À«· ›Ì“Ì«∆Ì ··’› «·√Ê· «·À«‰ÊÌ ......... ”ﬁÊÿ Õ—"  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 105 ,43 LABEL lbl2 ;
VALUE " ﬂÊ»—Ì «— ›«⁄Â ⁄‰ ”ÿÕ «·√—÷         „ — Ì„—  Õ Â Œÿ ”ﬂﬂ ÕœÌœ Ê›Ì ·ÕŸ… " ;
WIDTH 409 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
TOOLTIP "„À«· ›Ì“Ì«∆Ì ··’› «·√Ê· «·À«‰ÊÌ ......... ”ﬁÊÿ Õ—"  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,64}
@ 133 ,28 LABEL lbl3 ;
VALUE "    „—Ê— »œ«Ì… ﬁ«ÿ—… √Õœ «·ﬁÿ«—«  „‰  Õ  «·ﬂÊ»—Ì „»«‘—… »”—⁄… „‰ Ÿ„… ﬁœ—Â«   " ;
WIDTH 423 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
TOOLTIP "„À«· ›Ì“Ì«∆Ì ··’› «·√Ê· «·À«‰ÊÌ ......... ”ﬁÊÿ Õ—"  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,64}
@ 158 ,32 LABEL lbl4 ;
VALUE "  ﬁ«„ ‘Œ’ »«·ﬁ«¡ ‰›”Â ›Êﬁ «·ﬁÿ«— ›«–« ⁄·„  √‰ «·ﬁÿ«— Ì ﬂÊ‰ „‰        ⁄—»« " ;
WIDTH 400 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
TOOLTIP "„À«· ›Ì“Ì«∆Ì ··’› «·√Ê· «·À«‰ÊÌ ......... ”ﬁÊÿ Õ—"  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,64}
@ 177 ,34 LABEL lbl5 ;
VALUE "   ÊÿÊ· «·⁄—»… «·Ê«Õœ…        „ — Ê«— ›«⁄Â«         „ —Ê⁄Ã·… «·Ã«–»Ì…     „/À2    " ;
WIDTH 395 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
TOOLTIP "„À«· ›Ì“Ì«∆Ì ··’› «·√Ê· «·À«‰ÊÌ ......... ”ﬁÊÿ Õ—"  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,64}
@ 200 ,136 LABEL lbl6 ;
VALUE "›⁄·Ì √Ì ⁄—»… „‰ ⁄—»«  «·ﬁÿ«— ”Ê› Ì”ﬁÿ «·‘Œ’" ;
WIDTH 289 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
TOOLTIP "„À«· ›Ì“Ì«∆Ì ··’› «·√Ê· «·À«‰ÊÌ ......... ”ﬁÊÿ Õ—"  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,0,255}
@ 106 ,246 LABEL lbl7 ;
VALUE "82.5" ;
WIDTH 37 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255}
@ 131 ,5 LABEL lbl8 ;
VALUE "50„/À" ;
WIDTH 38 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255}
@ 178 ,76 LABEL lbl9 ;
VALUE "10" ;
WIDTH 19 ;
HEIGHT 24 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255}
@ 157 ,79 LABEL lbl10 ;
VALUE "10" ;
WIDTH 27 ;
HEIGHT 23 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255}
@ 177 ,300 LABEL lbl11 ;
VALUE "15" ;
WIDTH 24 ;
HEIGHT 21 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255}
@ 177 ,193 LABEL lbl12 ;
VALUE "2.5" ;
WIDTH 21 ;
HEIGHT 22 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255}
@ 419 ,91 LABEL lbl14 ;
VALUE "«÷€ÿ" ;
WIDTH 39 ;
HEIGHT 19 ;
AUTOSIZE ;
FONT "Arabic Transparent" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 438 ,16 LABEL lbl1result ;
VALUE "Õ· «·„À«·" ;
ACTION result()  ;
WIDTH 91 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {255,188,121} ;
FONTCOLOR {128,0,255}
DEFINE NOTIFY MENU OF win1
Set MenuStyle EXTENDED
POPUP "Go To"
MENUITEM "Save" Action mysave()  IMAGE "back/s.bmp"
SEPARATOR
MENUITEM "Load" Action myLoad()  IMAGE "back/u.bmp"
END POPUP
MENUITEM "PWCT Team" Action pwctteam()  IMAGE "ico/m.bmp"
SEPARATOR
MENUITEM "About Designer" Action MSGINFO( "Designed By Mr AbOeLsOuD" )  IMAGE "ico/m.bmp"
SEPARATOR
MENUITEM "Hide Window" Action Hide()  IMAGE "ico/m.bmp"
SEPARATOR
MENUITEM "Show Window" Action Show()  IMAGE "ico/m.bmp"
SEPARATOR
MENUITEM "Exit Window" Action Exit()  IMAGE "ico/x.bmp"
END MENU
DEFINE Context MENU OF win1
Set MenuStyle EXTENDED
POPUP "Go To"
MENUITEM "Save" Action mysave()  IMAGE "back/s.bmp"
SEPARATOR
MENUITEM "Load" Action myLoad()  IMAGE "back/u.bmp"
END POPUP
MENUITEM "PWCT Team" Action pwctteam()  IMAGE "ico/m.bmp"
SEPARATOR
MENUITEM "About Designer" Action MSGINFO( "Designed By Mr AbOeLsOuD" )  IMAGE "ico/m.bmp"
SEPARATOR
MENUITEM "Hide Window" Action Hide()  IMAGE "ico/m.bmp"
SEPARATOR
MENUITEM "Show Window" Action Show()  IMAGE "ico/m.bmp"
SEPARATOR
MENUITEM "›Ì“Ì«∆ÌÊ‰" Action physics()  IMAGE "ico/m.bmp"
SEPARATOR
MENUITEM "Exit Window" Action Exit()  IMAGE "ico/x.bmp"
END MENU
@ 422 ,140 FRAME Frame2;
WIDTH 122 ;
HEIGHT 54 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 82 ,2 FRAME Frame4;
WIDTH 452 ;
HEIGHT 146 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 426 ,291 FRAME Frame3;
WIDTH 143 ;
HEIGHT 43 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 243 ,121 LABEL lbl1r ;
VALUE "√ﬂ » «·Õ‹‹‹‹‹· Â‰‹‹‹«" ;
WIDTH 222 ;
HEIGHT 39 ;
FONT "Andalus" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {193,0,193}
END WINDOW

ACTIVATE WINDOW win1

Proc result
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Õ· «·„À«·" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

win2.Center ( )
@ 276,24 HYPERLINK Hyper1;
VALUE "„Êﬁ⁄ «·»—„Ã… »œÊ‰ ﬂÊœ" ;
ADDRESS "http://pwct.p2h.info/vb/";
WIDTH 429 ;
HEIGHT 52 ;
FONT "Courier New" ;
SIZE 28 ;
TOOLTIP "«÷€ÿ ··œŒÊ· «·Ì „Êﬁ⁄  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255} ;
BORDER ;
TRANSPARENT ;
HANDCURSOR 

@ 24 ,310 LABEL lbl1win2 ;
VALUE "⁄“Ì“Ì «·ÿ«·» " ;
WIDTH 127 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 229 ,19 FRAME Frame1;
WIDTH 448 ;
HEIGHT 125 ;
FONT "Arial" ;
SIZE 18 ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 

@ 73 ,239 LABEL lbl2win2 ;
VALUE "⁄‰œ„«   „ﬂ‰ „‰ Õ· «·„À«· " ;
WIDTH 187 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 103 ,284 LABEL lbl6win2 ;
VALUE "Ì„ﬂ‰ﬂ „—«”· ‰« ⁄·Ì " ;
WIDTH 138 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 130 ,303 LABEL lbl3win2 ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ì " ;
WIDTH 117 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 165 ,48 LABEL lbl4win2 ;
VALUE "abn_feshofesho_s@yahoo.com " ;
WIDTH 372 ;
HEIGHT 29 ;
FONT "Courier New" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,230,230}
@ 20 ,20 FRAME Frame2;
WIDTH 446 ;
HEIGHT 206 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} 

@ 232 ,313 LABEL lbl5win2 ;
VALUE "√Ê ⁄·Ì „Êﬁ⁄ «·»—„Ã… " ;
WIDTH 154 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win2

Return Nil
Proc pwctteam
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 724 ;
HEIGHT 368 ;
ICON "PWCTICON" ;
TITLE "Gif" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

win3.Center ( )
Public oActiveX
oActiveX := TActiveX():New( "Win3", "GIF89.Gif89.1" , 20 , 4 , 708 , 299)
oActiveX:Load()
END WINDOW

oactivex:OOLE:glass := .t.
oactivex:OOLE:autosize := .f.
oactivex:OOLE:FileName := "pwct team/pwct.gif"
ACTIVATE WINDOW win3

Return Nil
Proc exit
win1.Release ( )
Return Nil
Proc show
win1.Show ( )
Return Nil
Proc hide
win1.Hide ( )
Return Nil
Proc mysave
abn := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Save To File " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("«·„·› „ÊÃÊœ „”»ﬁ« Â·  —Ìœ «” »œ«·Â","«·„·› „ÊÃÊœ „”»ﬁ«")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,abn)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile ( { {"Text","*.txt"} } , ;
" Load From File " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile == False
Return 0
ENDIF
abn = MEMOREAD ( GetFile )
win1.edit1.Value := abn
Return Nil
Proc physics
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "√Â„ ⁄·„«¡ «·›Ì“Ì«¡ " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win4.Center ( )
@ 18 ,7 IMAGE image1;
PICTURE "back/phy/BohrNiels.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 108 ,184 IMAGE image2;
PICTURE "back/phy/Boltzmann.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 220 ,353 IMAGE image3;
PICTURE "back/phy/Einstein.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 15 ,354 IMAGE image4;
PICTURE "back/phy/Fermi.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 219 ,6 IMAGE image5;
PICTURE "back/phy/Planck.jpg";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 121 ,3 LABEL lblp1 ;
VALUE "»Ì·“ »Ê—" ;
WIDTH 123 ;
HEIGHT 33 ;
FONT "Courier New" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {98,0,196}
@ 154 ,4 LABEL lblp2 ;
VALUE "»ÊÂ‹‹‹‹‹‹‹—" ;
WIDTH 122 ;
HEIGHT 25 ;
FONT "Arabic Transparent" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {128,64,0}
@ 211 ,153 LABEL lblp3 ;
VALUE "»Ê· ‹‹“„«‰" ;
WIDTH 152 ;
HEIGHT 34 ;
FONT "Courier New" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 327 ,344 LABEL lblp4 ;
VALUE "√·»—  √Ì‰‘ Ì‰" ;
WIDTH 130 ;
HEIGHT 26 ;
FONT "Courier New" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,128}
@ 130 ,338 LABEL lblp5 ;
VALUE "›‹‹‹‹‹Ì—„Ì" ;
WIDTH 138 ;
HEIGHT 36 ;
FONT "Courier New" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,106,106}
@ 328 ,1 LABEL lblp6 ;
VALUE "„«ﬂ” »‹·«‰ﬂ" ;
WIDTH 133 ;
HEIGHT 24 ;
FONT "Courier New" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,198}
END WINDOW

ACTIVATE WINDOW win4

Return Nil


End Of Resistance

INIT PROCEDURE Init_PWCT_PHY_LESSON4
START DOUBLES
Return
*-------------------------------------------------------------------*
